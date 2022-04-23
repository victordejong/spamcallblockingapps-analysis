package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.util.VersionInfoUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility.class */
public class TransferUtility {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6733b = LogFactory.a(TransferUtility.class);
    private static final Object e = new Object();
    private static String f = "";

    /* renamed from: a  reason: collision with root package name */
    final ConnectivityManager f6734a;

    /* renamed from: c  reason: collision with root package name */
    private TransferStatusUpdater f6735c;

    /* renamed from: d  reason: collision with root package name */
    private TransferDBUtil f6736d;
    private final AmazonS3 g;
    private final String h;
    private final TransferUtilityOptions i;

    @Deprecated
    public TransferUtility(AmazonS3 amazonS3, Context context) {
        this.g = amazonS3;
        this.h = null;
        TransferUtilityOptions transferUtilityOptions = new TransferUtilityOptions();
        this.i = transferUtilityOptions;
        this.f6736d = new TransferDBUtil(context.getApplicationContext());
        this.f6735c = TransferStatusUpdater.a(context.getApplicationContext());
        TransferThreadPool.a(transferUtilityOptions.f6738b);
        this.f6734a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.g = amazonS3;
        this.h = str;
        this.i = transferUtilityOptions;
        this.f6736d = new TransferDBUtil(context.getApplicationContext());
        this.f6735c = TransferStatusUpdater.a(context.getApplicationContext());
        TransferThreadPool.a(transferUtilityOptions.f6738b);
        this.f6734a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends AmazonWebServiceRequest> X a(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.a("TransferService/" + a() + VersionInfoUtils.a());
        return x;
    }

    private static String a() {
        synchronized (e) {
            String str = f;
            if (str != null && !str.trim().isEmpty()) {
                return f.trim() + "/";
            }
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends AmazonWebServiceRequest> X b(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.a("TransferService_multipart/" + a() + VersionInfoUtils.a());
        return x;
    }
}
