package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler.class */
public class UrlHandler {

    /* renamed from: h */
    public static final ResultActions f8148h = new C3781a();

    /* renamed from: i */
    public static final MoPubSchemeListener f8149i = new C3782b();
    @NonNull

    /* renamed from: a */
    public EnumSet<UrlAction> f8150a;
    @NonNull

    /* renamed from: b */
    public ResultActions f8151b;
    @NonNull

    /* renamed from: c */
    public MoPubSchemeListener f8152c;
    @Nullable

    /* renamed from: d */
    public String f8153d;

    /* renamed from: e */
    public boolean f8154e;

    /* renamed from: f */
    public boolean f8155f;

    /* renamed from: g */
    public boolean f8156g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {
        @NonNull

        /* renamed from: a */
        public EnumSet<UrlAction> f8157a = EnumSet.of(UrlAction.NOOP);
        @NonNull

        /* renamed from: b */
        public ResultActions f8158b = UrlHandler.f8148h;
        @NonNull

        /* renamed from: c */
        public MoPubSchemeListener f8159c = UrlHandler.f8149i;

        /* renamed from: d */
        public boolean f8160d = false;
        @Nullable

        /* renamed from: e */
        public String f8161e;

        public UrlHandler build() {
            return new UrlHandler(this.f8157a, this.f8158b, this.f8159c, this.f8160d, this.f8161e, null);
        }

        public Builder withDspCreativeId(@Nullable String str) {
            this.f8161e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(@NonNull MoPubSchemeListener moPubSchemeListener) {
            this.f8159c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(@NonNull ResultActions resultActions) {
            this.f8158b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(@NonNull UrlAction urlAction, @Nullable UrlAction... urlActionArr) {
            this.f8157a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(@NonNull EnumSet<UrlAction> enumSet) {
            this.f8157a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f8160d = true;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$MoPubSchemeListener.class */
    public interface MoPubSchemeListener {
        void onClose();

        void onCrash();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$ResultActions.class */
    public interface ResultActions {
        void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction);

        void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction);
    }

    /* renamed from: com.mopub.common.UrlHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$a.class */
    public static final class C3781a implements ResultActions {
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
        }
    }

    /* renamed from: com.mopub.common.UrlHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$b.class */
    public static final class C3782b implements MoPubSchemeListener {
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
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$c.class */
    public class C3783c implements UrlResolutionTask.AbstractC3784a {

        /* renamed from: a */
        public final /* synthetic */ Context f8162a;

        /* renamed from: b */
        public final /* synthetic */ boolean f8163b;

        /* renamed from: c */
        public final /* synthetic */ Iterable f8164c;

        /* renamed from: d */
        public final /* synthetic */ String f8165d;

        public C3783c(Context context, boolean z, Iterable iterable, String str) {
            this.f8162a = context;
            this.f8163b = z;
            this.f8164c = iterable;
            this.f8165d = str;
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC3784a
        public void onFailure(@NonNull String str, @Nullable Throwable th) {
            UrlHandler.this.f8156g = false;
            UrlHandler.this.m30754a(this.f8165d, null, str, th);
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC3784a
        public void onSuccess(@NonNull String str) {
            UrlHandler.this.f8156g = false;
            UrlHandler.this.handleResolvedUrl(this.f8162a, str, this.f8163b, this.f8164c);
        }
    }

    public UrlHandler(@NonNull EnumSet<UrlAction> enumSet, @NonNull ResultActions resultActions, @NonNull MoPubSchemeListener moPubSchemeListener, boolean z, @Nullable String str) {
        this.f8150a = EnumSet.copyOf((EnumSet) enumSet);
        this.f8151b = resultActions;
        this.f8152c = moPubSchemeListener;
        this.f8154e = z;
        this.f8153d = str;
        this.f8155f = false;
        this.f8156g = false;
    }

    public /* synthetic */ UrlHandler(EnumSet enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str, C3781a aVar) {
        this(enumSet, resultActions, moPubSchemeListener, z, str);
    }

    @NonNull
    /* renamed from: a */
    public MoPubSchemeListener m30757a() {
        return this.f8152c;
    }

    /* renamed from: a */
    public final void m30754a(@Nullable String str, @Nullable UrlAction urlAction, @NonNull String str2, @Nullable Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f8151b.urlHandlingFailed(str, urlAction2);
    }

    /* renamed from: b */
    public boolean m30753b() {
        return this.f8154e;
    }

    public boolean handleResolvedUrl(@NonNull Context context, @NonNull String str, boolean z, @Nullable Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            m30754a(str, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it = this.f8150a.iterator();
        while (it.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.f8153d);
                    if (this.f8155f || this.f8156g || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f8151b.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.f8155f = true;
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
        m30754a(str, urlAction, "Link ignored. Unable to handle url: " + str, null);
        return false;
    }

    public void handleUrl(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(@NonNull Context context, @NonNull String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(@NonNull Context context, @NonNull String str, boolean z, @Nullable Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            m30754a(str, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new C3783c(context, z, iterable, str));
        this.f8156g = true;
    }
}
