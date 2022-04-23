package com.bytedance.sdk.adnet.err;

import com.bytedance.sdk.adnet.core.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/err/VAdError.class */
public class VAdError extends Exception {
    public static final int CACHE_DISPATCH_FAIL_CODE = 607;
    public static final int CONNECT_FAIL_CODE = 601;
    public static final int CONNECT_TIMEOUT_CODE = 602;
    public static final int DOWNLOAD_FILE_CANCEL_FAIL_CODE = 611;
    public static final int DOWNLOAD_FILE_INVALID_FAIL_CODE = 610;
    public static final int IMAGE_OOM_FAIL_CODE = 612;
    public static final int NETWORK_DISPATCH_FAIL_CODE = 608;
    public static final int NETWORK_FAIL_CODE = 603;
    public static final int PARSE_RESPONSE_CONTENT_FAIL_CODE = 606;
    public static final int PARSE_RESPONSE_FAIL_CODE = 605;
    public static final int RENAME_DOWNLOAD_FILE_FAIL_CODE = 609;
    public static final int UNSUPPORT_ENCODE_FAIL_CODE = 604;

    /* renamed from: a  reason: collision with root package name */
    protected int f8359a;

    /* renamed from: b  reason: collision with root package name */
    private long f8360b;
    public final i networkResponse;

    public VAdError(int i) {
        this.networkResponse = null;
        this.f8359a = i;
    }

    public VAdError(i iVar) {
        this.networkResponse = iVar;
    }

    public VAdError(String str, int i) {
        super(str);
        this.networkResponse = null;
        this.f8359a = i;
    }

    public VAdError(String str, Throwable th, int i) {
        super(str, th);
        this.networkResponse = null;
        this.f8359a = i;
    }

    public VAdError(Throwable th, int i) {
        super(th);
        this.networkResponse = null;
        this.f8359a = i;
    }

    public int getErrorCode() {
        return this.f8359a;
    }

    public long getNetworkTimeMs() {
        return this.f8360b;
    }

    public void setErrorCode(int i) {
        this.f8359a = i;
    }

    public void setNetworkTimeMs(long j) {
        this.f8360b = j;
    }
}
