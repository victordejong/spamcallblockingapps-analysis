package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.p245e.ExecutorC8277c;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper.class */
public class RendererHelper {
    private final C8240h imageLoaderHolder;
    private final ExecutorC8277c uiExecutor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$a.class */
    public final class C8223a extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ URL f29746a;

        C8223a(URL url) {
            RendererHelper.this = r4;
            this.f29746a = url;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.m25975a().preload(this.f29746a);
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$b.class */
    public final class C8224b extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ URL f29748a;

        /* renamed from: b */
        final /* synthetic */ ImageView f29749b;

        /* renamed from: c */
        final /* synthetic */ Drawable f29750c;

        C8224b(URL url, ImageView imageView, Drawable drawable) {
            RendererHelper.this = r4;
            this.f29748a = url;
            this.f29749b = imageView;
            this.f29750c = drawable;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.m25975a().loadImageInto(this.f29748a, this.f29749b, this.f29750c);
        }
    }

    public RendererHelper(C8240h c8240h, ExecutorC8277c executorC8277c) {
        this.imageLoaderHolder = c8240h;
        this.uiExecutor = executorC8277c;
    }

    public void preloadMedia(URL url) {
        new C8223a(url).run();
    }

    public void setMediaInView(CriteoMedia criteoMedia, CriteoMediaView criteoMediaView) {
        setMediaInView(criteoMedia.getImageUrl(), criteoMediaView.getImageView(), criteoMediaView.getPlaceholder());
    }

    public void setMediaInView(URL url, ImageView imageView, Drawable drawable) {
        this.uiExecutor.execute(new C8224b(url, imageView, drawable));
    }
}
