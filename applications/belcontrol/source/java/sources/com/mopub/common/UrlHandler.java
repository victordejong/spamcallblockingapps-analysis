package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler.class */
public class UrlHandler {

    /* renamed from: h */
    public static final ResultActions f4307h = new C1030a();

    /* renamed from: i */
    public static final MoPubSchemeListener f4308i = new C1031b();

    /* renamed from: a */
    public EnumSet<UrlAction> f4309a;

    /* renamed from: b */
    public ResultActions f4310b;

    /* renamed from: c */
    public MoPubSchemeListener f4311c;

    /* renamed from: d */
    public String f4312d;

    /* renamed from: e */
    public boolean f4313e;

    /* renamed from: f */
    public boolean f4314f;

    /* renamed from: g */
    public boolean f4315g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public EnumSet<UrlAction> f4316a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b */
        public ResultActions f4317b = UrlHandler.f4307h;

        /* renamed from: c */
        public MoPubSchemeListener f4318c = UrlHandler.f4308i;

        /* renamed from: d */
        public boolean f4319d = false;

        /* renamed from: e */
        public String f4320e;

        public UrlHandler build() {
            return new UrlHandler(this.f4316a, this.f4317b, this.f4318c, this.f4319d, this.f4320e, null);
        }

        public Builder withDspCreativeId(String str) {
            this.f4320e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.f4318c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.f4317b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f4316a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f4316a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f4319d = true;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$MoPubSchemeListener.class */
    public interface MoPubSchemeListener {
        void onClose();

        void onCrash();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$ResultActions.class */
    public interface ResultActions {
        void urlHandlingFailed(String str, UrlAction urlAction);

        void urlHandlingSucceeded(String str, UrlAction urlAction);
    }

    /* renamed from: com.mopub.common.UrlHandler$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$a.class */
    public static final class C1030a implements ResultActions {
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
        }
    }

    /* renamed from: com.mopub.common.UrlHandler$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$b.class */
    public static final class C1031b implements MoPubSchemeListener {
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }
    }

    /* renamed from: com.mopub.common.UrlHandler$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlHandler$c.class */
    public class C1032c implements UrlResolutionTask.AbstractC1033a {

        /* renamed from: a */
        public final /* synthetic */ Context f4321a;

        /* renamed from: b */
        public final /* synthetic */ boolean f4322b;

        /* renamed from: c */
        public final /* synthetic */ Iterable f4323c;

        /* renamed from: d */
        public final /* synthetic */ String f4324d;

        public C1032c(Context context, boolean z, Iterable iterable, String str) {
            UrlHandler.this = r4;
            this.f4321a = context;
            this.f4322b = z;
            this.f4323c = iterable;
            this.f4324d = str;
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC1033a
        public void onFailure(String str, Throwable th) {
            UrlHandler.this.f4315g = false;
            UrlHandler.this.m3913e(this.f4324d, null, str, th);
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC1033a
        public void onSuccess(String str) {
            UrlHandler.this.f4315g = false;
            UrlHandler.this.handleResolvedUrl(this.f4321a, str, this.f4322b, this.f4323c);
        }
    }

    public UrlHandler(EnumSet<UrlAction> enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str) {
        this.f4309a = EnumSet.copyOf((EnumSet) enumSet);
        this.f4310b = resultActions;
        this.f4311c = moPubSchemeListener;
        this.f4313e = z;
        this.f4312d = str;
        this.f4314f = false;
        this.f4315g = false;
    }

    public /* synthetic */ UrlHandler(EnumSet enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str, C1030a c1030a) {
        this(enumSet, resultActions, moPubSchemeListener, z, str);
    }

    /* renamed from: e */
    public final void m3913e(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f4310b.urlHandlingFailed(str, urlAction2);
    }

    /* renamed from: f */
    public MoPubSchemeListener m3912f() {
        return this.f4311c;
    }

    /* renamed from: g */
    public boolean m3911g() {
        return this.f4313e;
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            m3913e(str, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it = this.f4309a.iterator();
        while (it.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.f4312d);
                    if (this.f4314f || this.f4315g || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f4310b.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.f4314f = true;
                        return true;
                    } catch (IntentNotResolvableException e2) {
                        e = e2;
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, e.getMessage(), e);
                        urlAction = urlAction2;
                    }
                } catch (IntentNotResolvableException e3) {
                    e = e3;
                }
            }
        }
        m3913e(str, urlAction, "Link ignored. Unable to handle url: " + str, null);
        return false;
    }

    public void handleUrl(Context context, String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(Context context, String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            m3913e(str, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new C1032c(context, z, iterable, str));
        this.f4315g = true;
    }
}
