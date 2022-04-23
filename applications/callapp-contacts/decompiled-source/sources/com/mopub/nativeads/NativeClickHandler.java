package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f34603a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34604b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f34605c;

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f34603a = context.getApplicationContext();
        this.f34604b = str;
    }

    private void a(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            a(view, null);
        }
    }

    public void openClickDestinationUrl(String str, final View view) {
        final i iVar = new i(this.f34603a);
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            Preconditions.checkNotNull(iVar);
            if (!this.f34605c) {
                this.f34605c = true;
                if (view != null) {
                    iVar.a(view);
                }
                UrlHandler.Builder builder = new UrlHandler.Builder();
                if (!TextUtils.isEmpty(this.f34604b)) {
                    builder.withDspCreativeId(this.f34604b);
                }
                builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.nativeads.NativeClickHandler.2
                    private void a() {
                        if (view != null) {
                            iVar.a();
                        }
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public final void urlHandlingFailed(String str2, UrlAction urlAction) {
                        a();
                        NativeClickHandler.this.f34605c = false;
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public final void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                        a();
                        NativeClickHandler.this.f34605c = false;
                    }
                }).build().handleUrl(this.f34603a, str);
            }
        }
    }

    public void setOnClickListener(View view, final ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            a(view, new View.OnClickListener() { // from class: com.mopub.nativeads.NativeClickHandler.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    clickInterface.handleClick(view2);
                }
            });
        }
    }
}
