package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.AbstractRunnableC2020m;
import com.criteo.publisher.p026s.ExecutorC2095a;
import java.net.URL;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper.class */
public class RendererHelper {
    @NonNull
    public final C1952h imageLoaderHolder;
    @NonNull
    public final ExecutorC2095a uiExecutor;

    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$a.class */
    public class C1937a extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ URL f2060c;

        public C1937a(URL url) {
            this.f2060c = url;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.m35974a().preload(this.f2060c);
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.RendererHelper$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/RendererHelper$b.class */
    public class C1938b extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ URL f2062c;

        /* renamed from: d */
        public final /* synthetic */ ImageView f2063d;

        /* renamed from: e */
        public final /* synthetic */ Drawable f2064e;

        public C1938b(URL url, ImageView imageView, Drawable drawable) {
            this.f2062c = url;
            this.f2063d = imageView;
            this.f2064e = drawable;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.m35974a().loadImageInto(this.f2062c, this.f2063d, this.f2064e);
        }
    }

    public RendererHelper(@NonNull C1952h hVar, @NonNull ExecutorC2095a aVar) {
        this.imageLoaderHolder = hVar;
        this.uiExecutor = aVar;
    }

    public void preloadMedia(@NonNull URL url) {
        new C1937a(url).run();
    }

    public void setMediaInView(CriteoMedia criteoMedia, CriteoMediaView criteoMediaView) {
        setMediaInView(criteoMedia.getImageUrl(), criteoMediaView.getImageView(), criteoMediaView.getPlaceholder());
    }

    public void setMediaInView(@NonNull URL url, @NonNull ImageView imageView, @Nullable Drawable drawable) {
        this.uiExecutor.execute(new C1938b(url, imageView, drawable));
    }
}
