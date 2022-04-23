package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.e.a;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.net.URL;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g.class */
public final class g implements ImageLoader {

    /* renamed from: a  reason: collision with root package name */
    private final Picasso f17167a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.e.a f17168b;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g$a.class */
    static final class a extends r implements Function1<a.C0341a, v> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ URL f17170b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Drawable f17171c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ImageView f17172d;

        /* renamed from: com.criteo.publisher.advancednative.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/g$a$a.class */
        public static final class C0339a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a.C0341a f17173a;

            C0339a(a.C0341a aVar) {
                this.f17173a = aVar;
            }

            @Override // com.squareup.picasso.Callback
            public final void onError(Exception e) {
                p.c(e, "e");
                this.f17173a.a();
            }

            @Override // com.squareup.picasso.Callback
            public final void onSuccess() {
                this.f17173a.a();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(URL url, Drawable drawable, ImageView imageView) {
            super(1);
            this.f17170b = url;
            this.f17171c = drawable;
            this.f17172d = imageView;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(a.C0341a aVar) {
            a.C0341a receiver = aVar;
            p.c(receiver, "$receiver");
            RequestCreator load = g.this.f17167a.load(this.f17170b.toString());
            p.a((Object) load, "picasso.load(imageUrl.toString())");
            g.a(load, this.f17171c).into(this.f17172d, new C0339a(receiver));
            return v.f38654a;
        }
    }

    public g(Picasso picasso, com.criteo.publisher.e.a asyncResources) {
        p.c(picasso, "picasso");
        p.c(asyncResources, "asyncResources");
        this.f17167a = picasso;
        this.f17168b = asyncResources;
    }

    public static final /* synthetic */ RequestCreator a(RequestCreator requestCreator, Drawable drawable) {
        RequestCreator requestCreator2 = requestCreator;
        if (drawable != null) {
            requestCreator2 = requestCreator.placeholder(drawable);
            p.a((Object) requestCreator2, "placeholder(placeholder)");
        }
        return requestCreator2;
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public final void loadImageInto(URL imageUrl, ImageView imageView, Drawable drawable) {
        p.c(imageUrl, "imageUrl");
        p.c(imageView, "imageView");
        com.criteo.publisher.e.a aVar = this.f17168b;
        a resourceHandler = new a(imageUrl, drawable, imageView);
        p.c(resourceHandler, "resourceHandler");
        a.C0341a aVar2 = new a.C0341a();
        try {
            resourceHandler.invoke(aVar2);
        } catch (Throwable th) {
            aVar2.a();
            throw th;
        }
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public final void preload(URL imageUrl) {
        p.c(imageUrl, "imageUrl");
        this.f17167a.load(imageUrl.toString()).fetch();
    }
}
