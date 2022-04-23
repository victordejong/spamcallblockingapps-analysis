package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.e.c;
import com.criteo.publisher.v;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper.class */
public class RendererHelper {
    private final h imageLoaderHolder;
    private final c uiExecutor;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$a.class */
    final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ URL f17142a;

        a(URL url) {
            this.f17142a = url;
        }

        @Override // com.criteo.publisher.v
        public final void a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.a().preload(this.f17142a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$b.class */
    public final class b extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ URL f17144a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f17145b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Drawable f17146c;

        b(URL url, ImageView imageView, Drawable drawable) {
            this.f17144a = url;
            this.f17145b = imageView;
            this.f17146c = drawable;
        }

        @Override // com.criteo.publisher.v
        public final void a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.a().loadImageInto(this.f17144a, this.f17145b, this.f17146c);
        }
    }

    public RendererHelper(h hVar, c cVar) {
        this.imageLoaderHolder = hVar;
        this.uiExecutor = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void preloadMedia(URL url) {
        new a(url).run();
    }

    public void setMediaInView(CriteoMedia criteoMedia, CriteoMediaView criteoMediaView) {
        setMediaInView(criteoMedia.getImageUrl(), criteoMediaView.getImageView(), criteoMediaView.getPlaceholder());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMediaInView(URL url, ImageView imageView, Drawable drawable) {
        this.uiExecutor.execute(new b(url, imageView, drawable));
    }
}
