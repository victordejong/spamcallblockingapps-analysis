package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Keep;
import java.net.URL;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1529r1.C23054o;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper.class */
public class RendererHelper {
    private final C23054o imageLoaderHolder;
    private final ExecutorC23149c uiExecutor;

    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$a.class */
    public class C0899a extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ URL f2440c;

        public C0899a(URL url) {
            RendererHelper.this = r4;
            this.f2440c = url;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.f63854a.get().preload(this.f2440c);
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$b.class */
    public class C0900b extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ URL f2442c;

        /* renamed from: d */
        public final /* synthetic */ ImageView f2443d;

        /* renamed from: e */
        public final /* synthetic */ Drawable f2444e;

        public C0900b(URL url, ImageView imageView, Drawable drawable) {
            RendererHelper.this = r4;
            this.f2442c = url;
            this.f2443d = imageView;
            this.f2444e = drawable;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.f63854a.get().loadImageInto(this.f2442c, this.f2443d, this.f2444e);
        }
    }

    public RendererHelper(C23054o c23054o, ExecutorC23149c executorC23149c) {
        this.imageLoaderHolder = c23054o;
        this.uiExecutor = executorC23149c;
    }

    public void preloadMedia(URL url) {
        new C0899a(url).run();
    }

    public void setMediaInView(CriteoMedia criteoMedia, CriteoMediaView criteoMediaView) {
        setMediaInView(criteoMedia.getImageUrl(), criteoMediaView.getImageView(), criteoMediaView.getPlaceholder());
    }

    public void setMediaInView(URL url, ImageView imageView, Drawable drawable) {
        this.uiExecutor.execute(new C0900b(url, imageView, drawable));
    }
}
