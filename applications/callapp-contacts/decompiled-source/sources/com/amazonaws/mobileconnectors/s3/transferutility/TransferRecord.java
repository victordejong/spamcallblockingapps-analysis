package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.f;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Map;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord.class */
public class TransferRecord {
    private static final Log L = LogFactory.a(TransferRecord.class);
    public String A;
    public String B;
    public Map<String, String> C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public TransferUtilityOptions J;
    Future<?> K;
    private f M = new f();

    /* renamed from: a  reason: collision with root package name */
    public int f6703a;

    /* renamed from: b  reason: collision with root package name */
    public int f6704b;

    /* renamed from: c  reason: collision with root package name */
    public int f6705c;

    /* renamed from: d  reason: collision with root package name */
    public int f6706d;
    public int e;
    public int f;
    public int g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public TransferType n;
    public TransferState o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    public TransferRecord(int i) {
        this.f6703a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    public final void a(Cursor cursor) {
        this.f6703a = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.f6704b = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow("type")));
        this.o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)));
        this.p = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.q = cursor.getString(cursor.getColumnIndexOrThrow("key"));
        this.r = cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.h = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.i = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        this.j = cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        this.f6705c = cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.f6706d = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.e = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        this.f = cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.g = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.u = cursor.getString(cursor.getColumnIndexOrThrow("etag"));
        this.s = cursor.getString(cursor.getColumnIndexOrThrow("file"));
        this.t = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        this.k = cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        this.l = cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.m = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.v = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        this.w = cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.x = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.y = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.z = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        this.A = cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.C = JsonUtils.jsonToMap(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.D = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.E = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.F = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        this.G = cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.H = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.I = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
        this.B = cursor.getString(cursor.getColumnIndexOrThrow("header_storage_class"));
        this.J = (TransferUtilityOptions) this.M.a(cursor.getString(cursor.getColumnIndexOrThrow("transfer_utility_options")), (Class<Object>) TransferUtilityOptions.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        Future<?> future = this.K;
        return future != null && !future.isDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        TransferUtilityOptions transferUtilityOptions;
        if (connectivityManager == null || (transferUtilityOptions = this.J) == null || transferUtilityOptions.f6739c.isConnected(connectivityManager)) {
            return true;
        }
        Log log = L;
        log.c("Network Connection " + this.J.f6739c + " is not available.");
        transferStatusUpdater.a(this.f6703a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }

    public String toString() {
        return "[id:" + this.f6703a + ",bucketName:" + this.p + ",key:" + this.q + ",file:" + this.s + ",type:" + this.n + ",bytesTotal:" + this.h + ",bytesCurrent:" + this.i + ",fileOffset:" + this.m + ",state:" + this.o + ",cannedAcl:" + this.I + ",mainUploadId:" + this.f6704b + ",isMultipart:" + this.f6706d + ",isLastPart:" + this.e + ",partNumber:" + this.g + ",multipartId:" + this.t + ",eTag:" + this.u + ",storageClass:" + this.B + ",userMetadata:" + this.C.toString() + ",transferUtilityOptions:" + this.M.b(this.J) + "]";
    }
}
