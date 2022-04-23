package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.google.gson.f;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil.class */
class TransferDBUtil {

    /* renamed from: a  reason: collision with root package name */
    static TransferDBBase f6692a;

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6693b = LogFactory.a(TransferDBUtil.class);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f6694c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private f f6695d = new f();

    public TransferDBUtil(Context context) {
        synchronized (f6694c) {
            if (f6692a == null) {
                f6692a = new TransferDBBase(context);
            }
        }
    }

    public static int a(int i, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, transferState.toString());
        return TransferState.FAILED.equals(transferState) ? f6692a.a(c(i), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()}) : f6692a.a(c(i), contentValues, null, null);
    }

    public static long a(int i) {
        Cursor cursor = null;
        try {
            cursor = f6692a.a(e(i), null, null);
            long j = 0;
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    break;
                }
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY))))) {
                    j += cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
                }
            }
            return j;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static Cursor a(TransferType transferType, TransferState[] transferStateArr) {
        String[] strArr;
        String str;
        if (transferType == TransferType.ANY) {
            str = "state in (?)";
            String[] strArr2 = new String[1];
            int i = 0;
            while (true) {
                strArr = strArr2;
                if (i > 0) {
                    break;
                }
                strArr2[0] = transferStateArr[0].toString();
                i++;
            }
        } else {
            str = "state in (?) and type=?";
            strArr = new String[2];
            for (int i2 = 0; i2 <= 0; i2++) {
                strArr[0] = transferStateArr[0].toString();
            }
            strArr[1] = transferType.toString();
        }
        TransferDBBase transferDBBase = f6692a;
        return transferDBBase.a(transferDBBase.f6689a, str, strArr);
    }

    public static List<UploadPartRequest> a(int i, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = f6692a.a(e(i), null, null);
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    break;
                } else if (!TransferState.PART_COMPLETED.equals(TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY))))) {
                    UploadPartRequest withPartSize = new UploadPartRequest().withId(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))).withMainUploadId(cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"))).withBucketName(cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"))).withKey(cursor.getString(cursor.getColumnIndexOrThrow("key"))).withUploadId(str).withFile(new File(cursor.getString(cursor.getColumnIndexOrThrow("file")))).withFileOffset(cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"))).withPartNumber(cursor.getInt(cursor.getColumnIndexOrThrow("part_num"))).withPartSize(cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total")));
                    boolean z = true;
                    if (1 != cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"))) {
                        z = false;
                    }
                    arrayList.add(withPartSize.withLastPart(z));
                }
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static List<PartETag> b(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = f6692a.a(e(i), null, null);
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    break;
                }
                arrayList.add(new PartETag(cursor.getInt(cursor.getColumnIndexOrThrow("part_num")), cursor.getString(cursor.getColumnIndexOrThrow("etag"))));
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static Uri c(int i) {
        return Uri.parse(f6692a.f6689a + "/" + i);
    }

    private static Uri e(int i) {
        return Uri.parse(f6692a.f6689a + "/part/" + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TransferRecord d(int i) {
        Throwable th;
        Cursor cursor = null;
        TransferRecord transferRecord = null;
        try {
            cursor = f6692a.a(c(i), null, null);
            try {
                if (cursor.moveToFirst()) {
                    transferRecord = new TransferRecord(i);
                    transferRecord.a(cursor);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return transferRecord;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
