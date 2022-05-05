package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.app.Person;
import com.amazonaws.services.p017s3.model.PartETag;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil.class */
public class TransferDBUtil {
    public static TransferDBBase transferDBBase;

    public TransferDBUtil(Context context) {
        if (transferDBBase == null) {
            transferDBBase = new TransferDBBase(context);
        }
    }

    public List<UploadPartRequest> getNonCompletedPartRequestsFromDB(int i, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = transferDBBase.query(getPartUri(i), null, null, null, null);
        while (query.moveToNext()) {
            try {
                if (!TransferState.PART_COMPLETED.equals(TransferState.getState(query.getString(query.getColumnIndexOrThrow(IapProductRealmObject.STATE))))) {
                    UploadPartRequest uploadPartRequest = new UploadPartRequest();
                    uploadPartRequest.withId(query.getInt(query.getColumnIndexOrThrow("_id")));
                    uploadPartRequest.withMainUploadId(query.getInt(query.getColumnIndexOrThrow("main_upload_id")));
                    uploadPartRequest.withBucketName(query.getString(query.getColumnIndexOrThrow("bucket_name")));
                    uploadPartRequest.withKey(query.getString(query.getColumnIndexOrThrow(Person.KEY_KEY)));
                    uploadPartRequest.withUploadId(str);
                    uploadPartRequest.withFile(new File(query.getString(query.getColumnIndexOrThrow("file"))));
                    uploadPartRequest.withFileOffset(query.getLong(query.getColumnIndexOrThrow("file_offset")));
                    uploadPartRequest.withPartNumber(query.getInt(query.getColumnIndexOrThrow("part_num")));
                    uploadPartRequest.withPartSize(query.getLong(query.getColumnIndexOrThrow("bytes_total")));
                    boolean z = true;
                    if (1 != query.getInt(query.getColumnIndexOrThrow("is_last_part"))) {
                        z = false;
                    }
                    uploadPartRequest.withLastPart(z);
                    arrayList.add(uploadPartRequest);
                }
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    public Uri getPartUri(int i) {
        return Uri.parse(transferDBBase.getContentUri() + "/part/" + i);
    }

    public Uri getRecordUri(int i) {
        return Uri.parse(transferDBBase.getContentUri() + "/" + i);
    }

    public TransferRecord getTransferById(int i) {
        TransferRecord transferRecord;
        Cursor queryTransferById = queryTransferById(i);
        try {
            if (queryTransferById.moveToFirst()) {
                transferRecord = new TransferRecord(0);
                transferRecord.updateFromDB(queryTransferById);
            } else {
                transferRecord = null;
            }
            return transferRecord;
        } finally {
            queryTransferById.close();
        }
    }

    public Cursor queryAllTransfersWithType(TransferType transferType) {
        if (transferType == TransferType.ANY) {
            TransferDBBase transferDBBase2 = transferDBBase;
            return transferDBBase2.query(transferDBBase2.getContentUri(), null, null, null, null);
        }
        TransferDBBase transferDBBase3 = transferDBBase;
        return transferDBBase3.query(transferDBBase3.getContentUri(), null, "type=?", new String[]{transferType.toString()}, null);
    }

    public long queryBytesTransferredByMainUploadId(int i) {
        Cursor query = transferDBBase.query(getPartUri(i), null, null, null, null);
        long j = 0;
        while (query.moveToNext()) {
            try {
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(query.getString(query.getColumnIndexOrThrow(IapProductRealmObject.STATE))))) {
                    j += query.getLong(query.getColumnIndexOrThrow("bytes_total"));
                }
            } finally {
                query.close();
            }
        }
        return j;
    }

    public List<PartETag> queryPartETagsOfUpload(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor query = transferDBBase.query(getPartUri(i), null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new PartETag(query.getInt(query.getColumnIndexOrThrow("part_num")), query.getString(query.getColumnIndexOrThrow("etag"))));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    public Cursor queryTransferById(int i) {
        return transferDBBase.query(getRecordUri(i), null, null, null, null);
    }

    public int updateBytesTransferred(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("bytes_current", Long.valueOf(j));
        return transferDBBase.update(getRecordUri(i), contentValues, null, null);
    }

    public int updateETag(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("etag", str);
        return transferDBBase.update(getRecordUri(i), contentValues, null, null);
    }

    public int updateMultipartId(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("multipart_id", str);
        return transferDBBase.update(getRecordUri(i), contentValues, null, null);
    }

    public int updateState(int i, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IapProductRealmObject.STATE, transferState.toString());
        return TransferState.FAILED.equals(transferState) ? transferDBBase.update(getRecordUri(i), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()}) : transferDBBase.update(getRecordUri(i), contentValues, null, null);
    }

    public int updateTransferRecord(TransferRecord transferRecord) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(transferRecord.f812id));
        contentValues.put(IapProductRealmObject.STATE, transferRecord.state.toString());
        contentValues.put("bytes_total", Long.valueOf(transferRecord.bytesTotal));
        contentValues.put("bytes_current", Long.valueOf(transferRecord.bytesCurrent));
        return transferDBBase.update(getRecordUri(transferRecord.f812id), contentValues, null, null);
    }
}
