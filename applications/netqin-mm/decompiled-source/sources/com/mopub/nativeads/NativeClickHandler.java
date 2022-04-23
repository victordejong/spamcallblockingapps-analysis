package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import p131c.p421j.p426d.C6685j;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {

    /* renamed from: a */
    public final Context f34826a;

    /* renamed from: b */
    public final String f34827b;

    /* renamed from: c */
    public boolean f34828c;

    /* renamed from: com.mopub.nativeads.NativeClickHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$a.class */
    public class View$OnClickListenerC8957a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ClickInterface f34829a;

        public View$OnClickListenerC8957a(NativeClickHandler nativeClickHandler, ClickInterface clickInterface) {
            this.f34829a = clickInterface;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f34829a.handleClick(view);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeClickHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$b.class */
    public class C8958b implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ View f34830a;

        /* renamed from: b */
        public final /* synthetic */ C6685j f34831b;

        public C8958b(View view, C6685j jVar) {
            this.f34830a = view;
            this.f34831b = jVar;
        }

        /* renamed from: a */
        public final void m3905a() {
            if (this.f34830a != null) {
                this.f34831b.m20051a();
            }
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
            m3905a();
            NativeClickHandler.this.f34828c = false;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            m3905a();
            NativeClickHandler.this.f34828c = false;
        }
    }

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f34826a = context.getApplicationContext();
        this.f34827b = str;
    }

    /* renamed from: a */
    public final void m3908a(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m3908a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3906a(String str, View view, C6685j jVar) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            Preconditions.checkNotNull(jVar);
            if (!this.f34828c) {
                this.f34828c = true;
                if (view != null) {
                    jVar.m20050a(view);
                }
                UrlHandler.Builder builder = new UrlHandler.Builder();
                if (!TextUtils.isEmpty(this.f34827b)) {
                    builder.withDspCreativeId(this.f34827b);
                }
                builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C8958b(view, jVar)).build().handleUrl(this.f34826a, str);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            m3908a(view, (View.OnClickListener) null);
        }
    }

    public void openClickDestinationUrl(String str, View view) {
        m3906a(str, view, new C6685j(this.f34826a));
    }

    public void setOnClickListener(View view, ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            m3908a(view, new View$OnClickListenerC8957a(this, clickInterface));
        }
    }
}
