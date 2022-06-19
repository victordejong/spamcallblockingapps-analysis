package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.C15965f;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord.class */
public class TransferRecord {

    /* renamed from: L */
    private static final Log f12162L = LogFactory.m38584a(TransferRecord.class);

    /* renamed from: A */
    public String f12163A;

    /* renamed from: B */
    public String f12164B;

    /* renamed from: C */
    public Map<String, String> f12165C;

    /* renamed from: D */
    public String f12166D;

    /* renamed from: E */
    public String f12167E;

    /* renamed from: F */
    public String f12168F;

    /* renamed from: G */
    public String f12169G;

    /* renamed from: H */
    public String f12170H;

    /* renamed from: I */
    public String f12171I;

    /* renamed from: J */
    public TransferUtilityOptions f12172J;

    /* renamed from: K */
    Future<?> f12173K;

    /* renamed from: M */
    private C15965f f12174M = new C15965f();

    /* renamed from: a */
    public int f12175a;

    /* renamed from: b */
    public int f12176b;

    /* renamed from: c */
    public int f12177c;

    /* renamed from: d */
    public int f12178d;

    /* renamed from: e */
    public int f12179e;

    /* renamed from: f */
    public int f12180f;

    /* renamed from: g */
    public int f12181g;

    /* renamed from: h */
    public long f12182h;

    /* renamed from: i */
    public long f12183i;

    /* renamed from: j */
    public long f12184j;

    /* renamed from: k */
    public long f12185k;

    /* renamed from: l */
    public long f12186l;

    /* renamed from: m */
    public long f12187m;

    /* renamed from: n */
    public TransferType f12188n;

    /* renamed from: o */
    public TransferState f12189o;

    /* renamed from: p */
    public String f12190p;

    /* renamed from: q */
    public String f12191q;

    /* renamed from: r */
    public String f12192r;

    /* renamed from: s */
    public String f12193s;

    /* renamed from: t */
    public String f12194t;

    /* renamed from: u */
    public String f12195u;

    /* renamed from: v */
    public String f12196v;

    /* renamed from: w */
    public String f12197w;

    /* renamed from: x */
    public String f12198x;

    /* renamed from: y */
    public String f12199y;

    /* renamed from: z */
    public String f12200z;

    public TransferRecord(int i) {
        this.f12175a = i;
    }

    /* renamed from: a */
    public static boolean m38541a(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    /* renamed from: a */
    public final void m38542a(Cursor cursor) {
        this.f12175a = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.f12176b = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.f12188n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow("type")));
        this.f12189o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)));
        this.f12190p = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.f12191q = cursor.getString(cursor.getColumnIndexOrThrow("key"));
        this.f12192r = cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.f12182h = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.f12183i = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        this.f12184j = cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        this.f12177c = cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.f12178d = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.f12179e = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        this.f12180f = cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.f12181g = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.f12195u = cursor.getString(cursor.getColumnIndexOrThrow("etag"));
        this.f12193s = cursor.getString(cursor.getColumnIndexOrThrow("file"));
        this.f12194t = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        this.f12185k = cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        this.f12186l = cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.f12187m = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.f12196v = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        this.f12197w = cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.f12198x = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.f12199y = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.f12200z = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        this.f12163A = cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.f12165C = JsonUtils.jsonToMap(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.f12166D = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.f12167E = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.f12168F = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        this.f12169G = cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.f12170H = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.f12171I = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
        this.f12164B = cursor.getString(cursor.getColumnIndexOrThrow("header_storage_class"));
        this.f12172J = (TransferUtilityOptions) this.f12174M.m7964a(cursor.getString(cursor.getColumnIndexOrThrow("transfer_utility_options")), (Class<Object>) TransferUtilityOptions.class);
    }

    /* renamed from: a */
    public final boolean m38543a() {
        Future<?> future = this.f12173K;
        return future != null && !future.isDone();
    }

    /* renamed from: a */
    public final boolean m38540a(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        TransferUtilityOptions transferUtilityOptions;
        if (connectivityManager == null || (transferUtilityOptions = this.f12172J) == null || transferUtilityOptions.f12243c.isConnected(connectivityManager)) {
            return true;
        }
        Log log = f12162L;
        log.mo38590c("Network Connection " + this.f12172J.f12243c + " is not available.");
        transferStatusUpdater.m38536a(this.f12175a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }

    public String toString() {
        return "[id:" + this.f12175a + ",bucketName:" + this.f12190p + ",key:" + this.f12191q + ",file:" + this.f12193s + ",type:" + this.f12188n + ",bytesTotal:" + this.f12182h + ",bytesCurrent:" + this.f12183i + ",fileOffset:" + this.f12187m + ",state:" + this.f12189o + ",cannedAcl:" + this.f12171I + ",mainUploadId:" + this.f12176b + ",isMultipart:" + this.f12178d + ",isLastPart:" + this.f12179e + ",partNumber:" + this.f12181g + ",multipartId:" + this.f12194t + ",eTag:" + this.f12195u + ",storageClass:" + this.f12164B + ",userMetadata:" + this.f12165C.toString() + ",transferUtilityOptions:" + this.f12174M.m7962b(this.f12172J) + "]";
    }
}
