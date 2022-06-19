package com.google.android.gms.internal.auth_api;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.auth.api.identity.zbc;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth-api.zbad;
import com.google.android.gms.internal.auth-api.zbaf;
import com.google.android.gms.internal.auth-api.zbam;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbam.class */
public final class zbam extends GoogleApi<zbc> implements CredentialSavingClient {
    private static final Api.ClientKey<zbw> zba;
    private static final Api.AbstractClientBuilder<zbw, zbc> zbb;
    private static final Api<zbc> zbc;
    private final String zbd = zbax.zba();

    static {
        Api.ClientKey<zbw> clientKey = new Api.ClientKey<>();
        zba = clientKey;
        zbaj zbajVar = new zbaj();
        zbb = zbajVar;
        zbc = new Api<>("Auth.Api.Identity.CredentialSaving.API", zbajVar, clientKey);
    }

    public zbam(Activity activity, zbc zbcVar) {
        super(activity, zbc, zbcVar, GoogleApi.Settings.f5696c);
    }

    public zbam(Context context, zbc zbcVar) {
        super(context, zbc, zbcVar, GoogleApi.Settings.f5696c);
    }

    public final Task<SaveAccountLinkingTokenResult> saveAccountLinkingToken(SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Parcelable.Creator<SaveAccountLinkingTokenRequest> creator = SaveAccountLinkingTokenRequest.CREATOR;
        Objects.requireNonNull(saveAccountLinkingTokenRequest, "null reference");
        SaveAccountLinkingTokenRequest.Builder builder = new SaveAccountLinkingTokenRequest.Builder();
        builder.f5472d = saveAccountLinkingTokenRequest.f5467d;
        builder.f5471c = saveAccountLinkingTokenRequest.f5466c;
        builder.f5469a = saveAccountLinkingTokenRequest.f5464a;
        builder.f5470b = saveAccountLinkingTokenRequest.f5465b;
        String str = saveAccountLinkingTokenRequest.f5468e;
        if (!TextUtils.isEmpty(str)) {
            builder.f5473e = str;
        }
        builder.f5473e = this.zbd;
        Preconditions.m38906b(builder.f5469a != null, "Consent PendingIntent cannot be null");
        Preconditions.m38906b("auth_code".equals(builder.f5470b), "Invalid tokenType");
        Preconditions.m38906b(!TextUtils.isEmpty(builder.f5471c), "serviceId cannot be null or empty");
        Preconditions.m38906b(builder.f5472d != null, "scopes cannot be null");
        final SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest2 = new SaveAccountLinkingTokenRequest(builder.f5469a, builder.f5470b, builder.f5471c, builder.f5472d, builder.f5473e);
        TaskApiCall.Builder builder2 = TaskApiCall.builder();
        builder2.f5777c = new Feature[]{zbaw.zbg};
        builder2.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.auth_api.zbah
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbam zbamVar = this;
                SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest3 = saveAccountLinkingTokenRequest2;
                zbad zbakVar = new zbak(zbamVar, (TaskCompletionSource) obj2);
                Objects.requireNonNull(saveAccountLinkingTokenRequest3, "null reference");
                ((zbz) ((zbw) obj).getService()).zbc(zbakVar, saveAccountLinkingTokenRequest3);
            }
        };
        builder2.f5776b = false;
        builder2.f5778d = 1535;
        return doRead(builder2.m39016a());
    }

    public final Task<SavePasswordResult> savePassword(SavePasswordRequest savePasswordRequest) {
        Parcelable.Creator<SavePasswordRequest> creator = SavePasswordRequest.CREATOR;
        Objects.requireNonNull(savePasswordRequest, "null reference");
        SavePasswordRequest.Builder builder = new SavePasswordRequest.Builder();
        builder.f5477a = savePasswordRequest.f5475a;
        String str = savePasswordRequest.f5476b;
        if (str != null) {
            builder.f5478b = str;
        }
        builder.f5478b = this.zbd;
        final SavePasswordRequest savePasswordRequest2 = new SavePasswordRequest(builder.f5477a, builder.f5478b);
        TaskApiCall.Builder builder2 = TaskApiCall.builder();
        builder2.f5777c = new Feature[]{zbaw.zbe};
        builder2.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.auth_api.zbai
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbam zbamVar = this;
                SavePasswordRequest savePasswordRequest3 = savePasswordRequest2;
                zbaf zbalVar = new zbal(zbamVar, (TaskCompletionSource) obj2);
                Objects.requireNonNull(savePasswordRequest3, "null reference");
                ((zbz) ((zbw) obj).getService()).zbd(zbalVar, savePasswordRequest3);
            }
        };
        builder2.f5776b = false;
        builder2.f5778d = 1536;
        return doRead(builder2.m39016a());
    }
}
