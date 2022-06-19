package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.model.PartETag;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.google.gson.C15965f;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil.class */
public class TransferDBUtil {

    /* renamed from: a */
    static TransferDBBase f12150a;

    /* renamed from: b */
    private static final Log f12151b = LogFactory.m38584a(TransferDBUtil.class);

    /* renamed from: c */
    private static final Object f12152c = new Object();

    /* renamed from: d */
    private C15965f f12153d = new C15965f();

    public TransferDBUtil(Context context) {
        synchronized (f12152c) {
            if (f12150a == null) {
                f12150a = new TransferDBBase(context);
            }
        }
    }

    /* renamed from: a */
    public static int m38557a(int i, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, transferState.toString());
        return TransferState.FAILED.equals(transferState) ? f12150a.m38560a(m38553c(i), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()}) : f12150a.m38560a(m38553c(i), contentValues, null, null);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: a */
    public static long m38558a(int i) {
        Cursor cursor = null;
        try {
            Cursor m38559a = f12150a.m38559a(m38551e(i), null, null);
            char c = 0;
            while (true) {
                cursor = m38559a;
                if (!m38559a.moveToNext()) {
                    break;
                }
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(m38559a.getString(m38559a.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY))))) {
                    c += m38559a.getLong(m38559a.getColumnIndexOrThrow("bytes_total"));
                }
            }
            if (m38559a != null) {
                m38559a.close();
            }
            return c;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static Cursor m38555a(TransferType transferType, TransferState[] transferStateArr) {
        String[] strArr;
        String str;
        if (transferType == TransferType.ANY) {
            String str2 = "state in (?)";
            String[] strArr2 = new String[1];
            int i = 0;
            while (true) {
                strArr = strArr2;
                str = str2;
                if (i > 0) {
                    break;
                }
                strArr2[0] = transferStateArr[0].toString();
                i++;
            }
        } else {
            String str3 = "state in (?) and type=?";
            strArr = new String[2];
            for (int i2 = 0; i2 <= 0; i2++) {
                strArr[0] = transferStateArr[0].toString();
            }
            strArr[1] = transferType.toString();
            str = str3;
        }
        TransferDBBase transferDBBase = f12150a;
        return transferDBBase.m38559a(transferDBBase.f12145a, str, strArr);
    }

    /* renamed from: a */
    public static List<UploadPartRequest> m38556a(int i, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor m38559a = f12150a.m38559a(m38551e(i), null, null);
            while (true) {
                cursor = m38559a;
                if (!m38559a.moveToNext()) {
                    break;
                } else if (!TransferState.PART_COMPLETED.equals(TransferState.getState(m38559a.getString(m38559a.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY))))) {
                    UploadPartRequest withPartSize = new UploadPartRequest().withId(m38559a.getInt(m38559a.getColumnIndexOrThrow("_id"))).withMainUploadId(m38559a.getInt(m38559a.getColumnIndexOrThrow("main_upload_id"))).withBucketName(m38559a.getString(m38559a.getColumnIndexOrThrow("bucket_name"))).withKey(m38559a.getString(m38559a.getColumnIndexOrThrow("key"))).withUploadId(str).withFile(new File(m38559a.getString(m38559a.getColumnIndexOrThrow("file")))).withFileOffset(m38559a.getLong(m38559a.getColumnIndexOrThrow("file_offset"))).withPartNumber(m38559a.getInt(m38559a.getColumnIndexOrThrow("part_num"))).withPartSize(m38559a.getLong(m38559a.getColumnIndexOrThrow("bytes_total")));
                    boolean z = true;
                    if (1 != m38559a.getInt(m38559a.getColumnIndexOrThrow("is_last_part"))) {
                        z = false;
                    }
                    arrayList.add(withPartSize.withLastPart(z));
                }
            }
            if (m38559a != null) {
                m38559a.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static List<PartETag> m38554b(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor m38559a = f12150a.m38559a(m38551e(i), null, null);
            while (true) {
                cursor = m38559a;
                if (!m38559a.moveToNext()) {
                    break;
                }
                arrayList.add(new PartETag(m38559a.getInt(m38559a.getColumnIndexOrThrow("part_num")), m38559a.getString(m38559a.getColumnIndexOrThrow("etag"))));
            }
            if (m38559a != null) {
                m38559a.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: c */
    public static Uri m38553c(int i) {
        return Uri.parse(f12150a.f12145a + "/" + i);
    }

    /* renamed from: e */
    private static Uri m38551e(int i) {
        return Uri.parse(f12150a.f12145a + "/part/" + i);
    }

    /* renamed from: d */
    public final TransferRecord m38552d(int i) {
        Cursor cursor;
        Throwable th;
        TransferRecord transferRecord = null;
        try {
            cursor = f12150a.m38559a(m38553c(i), null, null);
            try {
                if (cursor.moveToFirst()) {
                    transferRecord = new TransferRecord(i);
                    transferRecord.m38542a(cursor);
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
            cursor = null;
        }
    }
}
