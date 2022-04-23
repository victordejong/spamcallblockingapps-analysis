package com.library.p518ad.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p399f.p401b.C6534e;
import p131c.p396i.p397a.p406i.p416g.C6611a;
/* renamed from: com.library.ad.core.AbstractAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/core/AbstractAdView.class */
public abstract class AbstractAdView<AdData> extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> {
    public Context mContext;

    /* renamed from: com.library.ad.core.AbstractAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/core/AbstractAdView$a.class */
    public class C8512a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ C6611a f33140a;

        public C8512a(C6611a aVar) {
            this.f33140a = aVar;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap;
            if (imageContainer != null && (bitmap = imageContainer.getBitmap()) != null) {
                this.f33140a.m20374a(bitmap);
            }
        }
    }

    /* renamed from: com.library.ad.core.AbstractAdView$b */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/core/AbstractAdView$b.class */
    public class C8513b implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f33142a;

        public C8513b(ImageView imageView) {
            this.f33142a = imageView;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap;
            if (imageContainer != null && (bitmap = imageContainer.getBitmap()) != null) {
                this.f33142a.setImageBitmap(bitmap);
            }
        }
    }

    public AbstractAdView(Context context, String str) {
        super(context, str);
        this.mContext = context;
    }

    public AbstractAdView(Context context, String str, AttributeSet attributeSet) {
        super(context, str, attributeSet);
        this.mContext = context;
    }

    public int bodyId() {
        return getIdByStr("ad_native_body");
    }

    public int buttonId() {
        return getIdByStr("ad_native_button");
    }

    public int getIdByStr(String str) {
        return this.mContext.getResources().getIdentifier(str, "id", this.mContext.getPackageName());
    }

    public <T extends View> T getView(int i) {
        return (T) getView(i, this);
    }

    public <T extends View> T getView(int i, View view) {
        View findViewById = view.findViewById(i);
        T t = (T) findViewById;
        if (findViewById == null) {
            t = null;
        }
        return t;
    }

    public int iconId() {
        return getIdByStr("ad_native_icon");
    }

    public int imageContainerId() {
        return getIdByStr("ad_native_image_container");
    }

    public int imageId() {
        return getIdByStr("ad_native_image");
    }

    public void loadBigImage(ImageView imageView, String str) {
        if (imageView != null && !TextUtils.isEmpty(str)) {
            C6611a aVar = new C6611a(imageView);
            if (!TextUtils.isEmpty(str)) {
                C6534e.m20564a(C6489a.m20718b()).m20561a(str, new C8512a(aVar));
            }
        }
    }

    public void loadIconImage(ImageView imageView, String str) {
        if (!TextUtils.isEmpty(str) && imageView != null) {
            C6534e.m20564a(C6489a.m20718b()).m20561a(str, new C8513b(imageView));
        }
    }

    public int tagId() {
        return getIdByStr("ad_native_tag");
    }

    public int titleId() {
        return getIdByStr("ad_native_title");
    }
}
