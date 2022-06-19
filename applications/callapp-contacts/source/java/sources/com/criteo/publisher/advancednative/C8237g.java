package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.p245e.AbstractC8274a;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.net.URL;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.advancednative.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g.class */
public final class C8237g implements ImageLoader {

    /* renamed from: a */
    private final Picasso f29771a;

    /* renamed from: b */
    private final AbstractC8274a f29772b;

    /* renamed from: com.criteo.publisher.advancednative.g$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g$a.class */
    static final class C8238a extends AbstractC18526r implements Function1<AbstractC8274a.C8275a, C20128v> {

        /* renamed from: b */
        final /* synthetic */ URL f29774b;

        /* renamed from: c */
        final /* synthetic */ Drawable f29775c;

        /* renamed from: d */
        final /* synthetic */ ImageView f29776d;

        /* renamed from: com.criteo.publisher.advancednative.g$a$a */
        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g$a$a.class */
        public static final class C8239a implements Callback {

            /* renamed from: a */
            final /* synthetic */ AbstractC8274a.C8275a f29777a;

            C8239a(AbstractC8274a.C8275a c8275a) {
                this.f29777a = c8275a;
            }

            @Override // com.squareup.picasso.Callback
            public final void onError(Exception e) {
                C18524p.m3841c(e, "e");
                this.f29777a.m25927a();
            }

            @Override // com.squareup.picasso.Callback
            public final void onSuccess() {
                this.f29777a.m25927a();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8238a(URL url, Drawable drawable, ImageView imageView) {
            super(1);
            C8237g.this = r4;
            this.f29774b = url;
            this.f29775c = drawable;
            this.f29776d = imageView;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC8274a.C8275a c8275a) {
            AbstractC8274a.C8275a receiver = c8275a;
            C18524p.m3841c(receiver, "$receiver");
            RequestCreator load = C8237g.this.f29771a.load(this.f29774b.toString());
            C18524p.m3849a((Object) load, "picasso.load(imageUrl.toString())");
            C8237g.m25976a(load, this.f29775c).into(this.f29776d, new C8239a(receiver));
            return C20128v.f66529a;
        }
    }

    public C8237g(Picasso picasso, AbstractC8274a asyncResources) {
        C18524p.m3841c(picasso, "picasso");
        C18524p.m3841c(asyncResources, "asyncResources");
        this.f29771a = picasso;
        this.f29772b = asyncResources;
    }

    /* renamed from: a */
    public static final /* synthetic */ RequestCreator m25976a(RequestCreator requestCreator, Drawable drawable) {
        RequestCreator requestCreator2 = requestCreator;
        if (drawable != null) {
            requestCreator2 = requestCreator.placeholder(drawable);
            C18524p.m3849a((Object) requestCreator2, "placeholder(placeholder)");
        }
        return requestCreator2;
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public final void loadImageInto(URL imageUrl, ImageView imageView, Drawable drawable) {
        C18524p.m3841c(imageUrl, "imageUrl");
        C18524p.m3841c(imageView, "imageView");
        AbstractC8274a abstractC8274a = this.f29772b;
        C8238a resourceHandler = new C8238a(imageUrl, drawable, imageView);
        C18524p.m3841c(resourceHandler, "resourceHandler");
        AbstractC8274a.C8275a c8275a = new AbstractC8274a.C8275a();
        try {
            resourceHandler.invoke(c8275a);
        } catch (Throwable th) {
            c8275a.m25927a();
            throw th;
        }
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public final void preload(URL imageUrl) {
        C18524p.m3841c(imageUrl, "imageUrl");
        this.f29771a.load(imageUrl.toString()).fetch();
    }
}
