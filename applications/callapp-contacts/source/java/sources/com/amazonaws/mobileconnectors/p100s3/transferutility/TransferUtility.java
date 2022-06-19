package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.Context;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.AmazonS3;
import com.amazonaws.util.VersionInfoUtils;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility.class */
public class TransferUtility {

    /* renamed from: b */
    private static final Log f12232b = LogFactory.m38584a(TransferUtility.class);

    /* renamed from: e */
    private static final Object f12233e = new Object();

    /* renamed from: f */
    private static String f12234f = "";

    /* renamed from: a */
    final ConnectivityManager f12235a;

    /* renamed from: c */
    private TransferStatusUpdater f12236c;

    /* renamed from: d */
    private TransferDBUtil f12237d;

    /* renamed from: g */
    private final AmazonS3 f12238g;

    /* renamed from: h */
    private final String f12239h;

    /* renamed from: i */
    private final TransferUtilityOptions f12240i;

    @Deprecated
    public TransferUtility(AmazonS3 amazonS3, Context context) {
        this.f12238g = amazonS3;
        this.f12239h = null;
        TransferUtilityOptions transferUtilityOptions = new TransferUtilityOptions();
        this.f12240i = transferUtilityOptions;
        this.f12237d = new TransferDBUtil(context.getApplicationContext());
        this.f12236c = TransferStatusUpdater.m38534a(context.getApplicationContext());
        TransferThreadPool.m38526a(transferUtilityOptions.f12242b);
        this.f12235a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.f12238g = amazonS3;
        this.f12239h = str;
        this.f12240i = transferUtilityOptions;
        this.f12237d = new TransferDBUtil(context.getApplicationContext());
        this.f12236c = TransferStatusUpdater.m38534a(context.getApplicationContext());
        TransferThreadPool.m38526a(transferUtilityOptions.f12242b);
        this.f12235a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    /* renamed from: a */
    public static <X extends AmazonWebServiceRequest> X m38522a(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.m38697a("TransferService/" + m38523a() + VersionInfoUtils.m38212a());
        return x;
    }

    /* renamed from: a */
    private static String m38523a() {
        synchronized (f12233e) {
            String str = f12234f;
            if (str != null && !str.trim().isEmpty()) {
                return f12234f.trim() + "/";
            }
            return "";
        }
    }

    /* renamed from: b */
    public static <X extends AmazonWebServiceRequest> X m38521b(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.m38697a("TransferService_multipart/" + m38523a() + VersionInfoUtils.m38212a());
        return x;
    }
}
