package com.freshchat.consumer.sdk.p057j;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.squareup.picasso.Picasso;
import e.p.b.e;
import e.p.b.x;
import e.p.b.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.t */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/t.class */
public class C1728t implements FreshchatImageLoader {

    /* renamed from: la */
    private final Picasso f4536la;

    public C1728t() {
        Picasso picasso;
        EnumC1464c enumC1464c;
        try {
            picasso = Picasso.get();
        } catch (Exception e) {
            enumC1464c = EnumC1464c.PICASSO_INIT_ERROR;
            C1613ai.m40283e("FRESHCHAT", enumC1464c.toString());
            picasso = null;
            this.f4536la = picasso;
        } catch (NoSuchMethodError e2) {
            enumC1464c = EnumC1464c.PICASSO_NO_SUCH_METHOD_ERROR;
            C1613ai.m40283e("FRESHCHAT", enumC1464c.toString());
            picasso = null;
            this.f4536la = picasso;
        }
        this.f4536la = picasso;
    }

    /* renamed from: a */
    private void m39815a(FreshchatImageLoaderRequest freshchatImageLoaderRequest, String str) {
        if (freshchatImageLoaderRequest != null) {
            return;
        }
        throw new IllegalArgumentException(C22128a.m8543z2("FreshchatImageLoaderRequest instance must not be null in ", str));
    }

    /* renamed from: eL */
    public static C1728t m39814eL() {
        if (C1642ba.m40124fZ()) {
            C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.DEFAULT_IMAGE_LOADER_MISSING.toString());
            return null;
        }
        return new C1728t();
    }

    @Override // com.freshchat.consumer.sdk.FreshchatImageLoader
    public void fetch(FreshchatImageLoaderRequest freshchatImageLoaderRequest) {
        m39815a(freshchatImageLoaderRequest, "fetch");
        Picasso picasso = this.f4536la;
        if (picasso == null) {
            C1613ai.m40283e("FRESHCHAT", EnumC1464c.PICASSO_INSTANCE_MISSING.toString());
        } else {
            picasso.m36040d(freshchatImageLoaderRequest.getUri()).b();
        }
    }

    @Override // com.freshchat.consumer.sdk.FreshchatImageLoader
    public Bitmap get(FreshchatImageLoaderRequest freshchatImageLoaderRequest) {
        m39815a(freshchatImageLoaderRequest, "get");
        Picasso picasso = this.f4536la;
        if (picasso == null) {
            C1613ai.m40283e("FRESHCHAT", EnumC1464c.PICASSO_INSTANCE_MISSING.toString());
            return null;
        }
        try {
            return picasso.m36040d(freshchatImageLoaderRequest.getUri()).c();
        } catch (IOException e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    @Override // com.freshchat.consumer.sdk.FreshchatImageLoader
    public void load(FreshchatImageLoaderRequest freshchatImageLoaderRequest, ImageView imageView) {
        if (imageView != null) {
            m39815a(freshchatImageLoaderRequest, "load");
            Picasso picasso = this.f4536la;
            if (picasso == null) {
                C1613ai.m40283e("FRESHCHAT", EnumC1464c.PICASSO_INSTANCE_MISSING.toString());
                return;
            }
            y m36040d = picasso.m36040d(freshchatImageLoaderRequest.getUri());
            if (freshchatImageLoaderRequest.getTargetHeight() != 0 || freshchatImageLoaderRequest.getTargetWidth() != 0) {
                m36040d.b.b(freshchatImageLoaderRequest.getTargetWidth(), freshchatImageLoaderRequest.getTargetHeight());
                if (freshchatImageLoaderRequest.shouldMaintainAspectRatio()) {
                    m36040d.b.e = true;
                }
            }
            if (freshchatImageLoaderRequest.getTransformToApply() == FreshchatImageLoaderRequest.TransformType.CIRCULAR) {
                C1727s c1727s = new C1727s();
                x.b bVar = m36040d.b;
                Objects.requireNonNull(bVar);
                if (c1727s.key() == null) {
                    throw new IllegalArgumentException("Transformation key must not be null.");
                }
                if (bVar.f == null) {
                    bVar.f = new ArrayList(2);
                }
                bVar.f.add(c1727s);
            }
            int placeholderResId = freshchatImageLoaderRequest.getPlaceholderResId();
            if (placeholderResId > 0) {
                if (placeholderResId == 0) {
                    throw new IllegalArgumentException("Placeholder image resource invalid.");
                }
                if (m36040d.e != null) {
                    throw new IllegalStateException("Placeholder image already set.");
                }
                m36040d.c = placeholderResId;
            }
            int errorResId = freshchatImageLoaderRequest.getErrorResId();
            if (errorResId > 0) {
                if (errorResId == 0) {
                    throw new IllegalArgumentException("Error image resource invalid.");
                }
                m36040d.d = errorResId;
            }
            m36040d.e(imageView, (e) null);
            return;
        }
        throw new IllegalArgumentException("Target must not be null.");
    }
}
