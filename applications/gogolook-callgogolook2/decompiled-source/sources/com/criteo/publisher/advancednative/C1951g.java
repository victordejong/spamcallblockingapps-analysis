package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.net.URL;
import p081h.p444n.p445a.C10798u;
import p081h.p444n.p445a.C10814y;
/* renamed from: com.criteo.publisher.advancednative.g */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/g.class */
public class C1951g implements ImageLoader {

    /* renamed from: a */
    public final C10798u f2085a;

    public C1951g(@NonNull C10798u uVar) {
        this.f2085a = uVar;
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    @UiThread
    public void loadImageInto(@NonNull URL url, @NonNull ImageView imageView, @Nullable Drawable drawable) {
        C10814y a = this.f2085a.m10603a(url.toString());
        a.m10573a(drawable);
        a.m10572a(imageView);
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public void preload(@NonNull URL url) {
        this.f2085a.m10603a(url.toString()).m10569b();
    }
}
