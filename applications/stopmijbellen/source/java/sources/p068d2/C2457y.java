package p068d2;

import android.content.Context;
import android.media.MediaPlayer;
import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import p008a7.EnumC0038e;
/* renamed from: d2.y */
/* loaded from: classes-dex2jar.jar:d2/y.class */
public class C2457y implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f8690a;

    public C2457y(C2322j0 c2322j0) {
        this.f8690a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        Context context;
        if (this.f8690a.m3639b(c2410t0)) {
            C2322j0 c2322j0 = this.f8690a;
            Objects.requireNonNull(c2322j0);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID);
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = new TextureView$SurfaceTextureListenerC2399r3(c2322j0.f8315y, c2410t0, m3735r, c2322j0);
            C2267f4 c2267f4 = textureView$SurfaceTextureListenerC2399r3.f8475E.f8537b;
            textureView$SurfaceTextureListenerC2399r3.f8474D = c2267f4.m3697o("ad_session_id");
            textureView$SurfaceTextureListenerC2399r3.f8493i = C2227e4.m3735r(c2267f4, "x");
            textureView$SurfaceTextureListenerC2399r3.f8494j = C2227e4.m3735r(c2267f4, "y");
            textureView$SurfaceTextureListenerC2399r3.f8495k = C2227e4.m3735r(c2267f4, "width");
            textureView$SurfaceTextureListenerC2399r3.f8496l = C2227e4.m3735r(c2267f4, "height");
            textureView$SurfaceTextureListenerC2399r3.f8510z = C2227e4.m3741l(c2267f4, "enable_timer");
            textureView$SurfaceTextureListenerC2399r3.f8472B = C2227e4.m3741l(c2267f4, "enable_progress");
            textureView$SurfaceTextureListenerC2399r3.f8473C = c2267f4.m3697o("filepath");
            textureView$SurfaceTextureListenerC2399r3.f8498n = C2227e4.m3735r(c2267f4, "video_width");
            textureView$SurfaceTextureListenerC2399r3.f8499o = C2227e4.m3735r(c2267f4, "video_height");
            textureView$SurfaceTextureListenerC2399r3.f8488d = C1676a.m4794c();
            StringBuilder m8752j = C0082b.m8752j("Original video dimensions = ");
            m8752j.append(textureView$SurfaceTextureListenerC2399r3.f8498n);
            m8752j.append("x");
            m8752j.append(textureView$SurfaceTextureListenerC2399r3.f8499o);
            C0082b.m8750l(0, 3, m8752j.toString(), true);
            textureView$SurfaceTextureListenerC2399r3.setVisibility(4);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(textureView$SurfaceTextureListenerC2399r3.f8495k, textureView$SurfaceTextureListenerC2399r3.f8496l);
            layoutParams.setMargins(textureView$SurfaceTextureListenerC2399r3.f8493i, textureView$SurfaceTextureListenerC2399r3.f8494j, 0, 0);
            layoutParams.gravity = 0;
            textureView$SurfaceTextureListenerC2399r3.f8476F.addView(textureView$SurfaceTextureListenerC2399r3, layoutParams);
            if (textureView$SurfaceTextureListenerC2399r3.f8472B && (context = C2408t.f8531a) != null) {
                ProgressBar progressBar = new ProgressBar(context);
                textureView$SurfaceTextureListenerC2399r3.f8480J = progressBar;
                C2322j0 c2322j02 = textureView$SurfaceTextureListenerC2399r3.f8476F;
                int i = (int) (textureView$SurfaceTextureListenerC2399r3.f8488d * 100.0f);
                c2322j02.addView(progressBar, new FrameLayout.LayoutParams(i, i, 17));
            }
            textureView$SurfaceTextureListenerC2399r3.f8481K = new MediaPlayer();
            textureView$SurfaceTextureListenerC2399r3.f8507w = false;
            try {
                if (!textureView$SurfaceTextureListenerC2399r3.f8473C.startsWith("http")) {
                    textureView$SurfaceTextureListenerC2399r3.f8481K.setDataSource(new FileInputStream(textureView$SurfaceTextureListenerC2399r3.f8473C).getFD());
                } else {
                    textureView$SurfaceTextureListenerC2399r3.f8509y = true;
                    textureView$SurfaceTextureListenerC2399r3.f8481K.setDataSource(textureView$SurfaceTextureListenerC2399r3.f8473C);
                }
                textureView$SurfaceTextureListenerC2399r3.f8481K.setOnErrorListener(textureView$SurfaceTextureListenerC2399r3);
                textureView$SurfaceTextureListenerC2399r3.f8481K.setOnPreparedListener(textureView$SurfaceTextureListenerC2399r3);
                textureView$SurfaceTextureListenerC2399r3.f8481K.setOnCompletionListener(textureView$SurfaceTextureListenerC2399r3);
                textureView$SurfaceTextureListenerC2399r3.f8481K.prepareAsync();
            } catch (IOException e) {
                StringBuilder m8752j2 = C0082b.m8752j("Failed to create/prepare MediaPlayer: ");
                m8752j2.append(e.toString());
                C2408t.m3591d().m3718p().m3686e(0, 0, m8752j2.toString(), false);
                textureView$SurfaceTextureListenerC2399r3.m3609b();
            }
            ArrayList<AbstractC2458y0> arrayList = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2361l3 c2361l3 = new C2361l3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.play", c2361l3);
            arrayList.add(c2361l3);
            ArrayList<AbstractC2458y0> arrayList2 = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2366m3 c2366m3 = new C2366m3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.set_bounds", c2366m3);
            arrayList2.add(c2366m3);
            ArrayList<AbstractC2458y0> arrayList3 = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2371n3 c2371n3 = new C2371n3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.set_visible", c2371n3);
            arrayList3.add(c2371n3);
            ArrayList<AbstractC2458y0> arrayList4 = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2380o3 c2380o3 = new C2380o3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.pause", c2380o3);
            arrayList4.add(c2380o3);
            ArrayList<AbstractC2458y0> arrayList5 = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2386p3 c2386p3 = new C2386p3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.seek_to_time", c2386p3);
            arrayList5.add(c2386p3);
            ArrayList<AbstractC2458y0> arrayList6 = textureView$SurfaceTextureListenerC2399r3.f8476F.f8309s;
            C2393q3 c2393q3 = new C2393q3(textureView$SurfaceTextureListenerC2399r3);
            C2408t.m3594a("VideoView.set_volume", c2393q3);
            arrayList6.add(c2393q3);
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.play");
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.set_bounds");
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.set_visible");
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.pause");
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.seek_to_time");
            textureView$SurfaceTextureListenerC2399r3.f8476F.f8310t.add("VideoView.set_volume");
            c2322j0.f8291a.put(Integer.valueOf(m3735r), textureView$SurfaceTextureListenerC2399r3);
            c2322j0.f8297g.put(Integer.valueOf(m3735r), textureView$SurfaceTextureListenerC2399r3);
            EnumC0038e enumC0038e = EnumC0038e.OTHER;
            AbstractC0081a abstractC0081a = c2322j0.f8314x;
            if (abstractC0081a == null) {
                return;
            }
            try {
                abstractC0081a.mo8766f(textureView$SurfaceTextureListenerC2399r3, enumC0038e, null);
            } catch (RuntimeException e2) {
            }
        }
    }
}
