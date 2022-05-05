package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import p081h.p430l.p435d.C10742i;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {
    @NonNull

    /* renamed from: a */
    public final Context f9230a;
    @Nullable

    /* renamed from: b */
    public final String f9231b;

    /* renamed from: c */
    public boolean f9232c;

    /* renamed from: com.mopub.nativeads.NativeClickHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$a.class */
    public class View$OnClickListenerC3998a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ClickInterface f9233a;

        public View$OnClickListenerC3998a(NativeClickHandler nativeClickHandler, ClickInterface clickInterface) {
            this.f9233a = clickInterface;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9233a.handleClick(view);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeClickHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$b.class */
    public class C3999b implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ View f9234a;

        /* renamed from: b */
        public final /* synthetic */ C10742i f9235b;

        public C3999b(View view, C10742i iVar) {
            this.f9234a = view;
            this.f9235b = iVar;
        }

        /* renamed from: a */
        public final void m30092a() {
            if (this.f9234a != null) {
                this.f9235b.m10750a();
            }
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
            m30092a();
            NativeClickHandler.this.f9232c = false;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            m30092a();
            NativeClickHandler.this.f9232c = false;
        }
    }

    public NativeClickHandler(@NonNull Context context) {
        this(context, null);
    }

    public NativeClickHandler(@NonNull Context context, @Nullable String str) {
        Preconditions.checkNotNull(context);
        this.f9230a = context.getApplicationContext();
        this.f9231b = str;
    }

    /* renamed from: a */
    public final void m30095a(@NonNull View view, @Nullable View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m30095a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30093a(@NonNull String str, @Nullable View view, @NonNull C10742i iVar) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            Preconditions.checkNotNull(iVar);
            if (!this.f9232c) {
                this.f9232c = true;
                if (view != null) {
                    iVar.m10749a(view);
                }
                UrlHandler.Builder builder = new UrlHandler.Builder();
                if (!TextUtils.isEmpty(this.f9231b)) {
                    builder.withDspCreativeId(this.f9231b);
                }
                builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C3999b(view, iVar)).build().handleUrl(this.f9230a, str);
            }
        }
    }

    public void clearOnClickListener(@NonNull View view) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            m30095a(view, (View.OnClickListener) null);
        }
    }

    public void openClickDestinationUrl(@NonNull String str, @Nullable View view) {
        m30093a(str, view, new C10742i(this.f9230a));
    }

    public void setOnClickListener(@NonNull View view, @NonNull ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            m30095a(view, new View$OnClickListenerC3998a(this, clickInterface));
        }
    }
}
