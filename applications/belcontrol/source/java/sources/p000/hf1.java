package p000;

import android.media.MediaPlayer;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import p000.of1;
/* renamed from: hf1 */
/* loaded from: classes3-dex2jar.jar:hf1.class */
public class hf1 extends ve1<MediaPlayer> implements gf1 {

    /* renamed from: hf1$a */
    /* loaded from: classes3-dex2jar.jar:hf1$a.class */
    public static class C1442a implements of1.AbstractC1517d<gf1> {

        /* renamed from: a */
        public static final vf1<Method> f6729a;

        /* renamed from: b */
        public static final vf1<Method> f6730b;

        /* renamed from: c */
        public static final vf1<Method> f6731c;

        /* renamed from: d */
        public static final vf1<Method> f6732d;

        /* renamed from: e */
        public static final vf1<Method> f6733e;

        static {
            vf1<Method> vf1Var;
            vf1<Method> vf1Var2;
            vf1<Method> m329a = vf1.m329a();
            vf1<Method> m329a2 = vf1.m329a();
            vf1<Method> m329a3 = vf1.m329a();
            vf1<Method> m329a4 = vf1.m329a();
            vf1<Method> vf1Var3 = m329a;
            vf1<Method> vf1Var4 = m329a2;
            vf1<Method> vf1Var5 = m329a3;
            vf1<Method> m329a5 = vf1.m329a();
            try {
                Method method = gf1.class.getMethod("c", Boolean.TYPE);
                Method method2 = gf1.class.getMethod(GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG, Map.class, MediaPlayer.class, View.class);
                Method method3 = gf1.class.getMethod("a", View.class);
                Method method4 = gf1.class.getMethod("b", Map.class);
                Method method5 = gf1.class.getMethod("b", Map.class);
                vf1<Method> m326d = vf1.m326d(method);
                vf1<Method> m326d2 = vf1.m326d(method2);
                vf1<Method> m326d3 = vf1.m326d(method3);
                vf1Var2 = vf1.m326d(method4);
                vf1Var3 = m326d;
                vf1Var4 = m326d2;
                vf1Var5 = m326d3;
                m329a5 = vf1Var2;
                vf1Var3 = m326d;
                vf1Var4 = m326d2;
                vf1Var5 = m326d3;
                vf1Var = vf1.m326d(method5);
            } catch (NoSuchMethodException e) {
                uf1.m397a(e);
                vf1Var2 = m329a5;
                vf1Var = m329a4;
            }
            f6729a = vf1Var3;
            f6730b = vf1Var4;
            f6731c = vf1Var5;
            f6732d = vf1Var2;
            f6733e = vf1Var;
        }

        @Override // p000.of1.AbstractC1517d
        /* renamed from: a */
        public boolean mo566a(Method method) {
            vf1 m326d = vf1.m326d(method);
            return f6729a.equals(m326d) || f6730b.equals(m326d) || f6731c.equals(m326d) || f6732d.equals(m326d) || f6733e.equals(m326d);
        }

        @Override // p000.of1.AbstractC1517d
        /* renamed from: b */
        public Class<gf1> mo565b() {
            return gf1.class;
        }
    }

    public hf1(String str, re1 re1Var, mf1 mf1Var) {
        super(str, re1Var, mf1Var);
    }

    @Override // p000.gf1
    /* renamed from: d */
    public boolean mo1478d(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        if (mediaPlayer == null) {
            m502p("Null player instance. Not tracking.");
        }
        try {
            mediaPlayer.getCurrentPosition();
            return super.m500s(map, mediaPlayer, view);
        } catch (IllegalStateException e) {
            m502p("Playback has already completed. Not tracking.");
            return false;
        }
    }

    @Override // p000.te1
    /* renamed from: k */
    public Map<String, Object> mo507k() {
        MediaPlayer mediaPlayer = (MediaPlayer) this.f8231f.get();
        HashMap hashMap = new HashMap();
        hashMap.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        hashMap.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        hashMap.put(VastIconXmlManager.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
        return hashMap;
    }

    @Override // p000.ve1
    /* renamed from: u */
    public Integer mo332u() {
        return Integer.valueOf(((MediaPlayer) this.f8231f.get()).getCurrentPosition());
    }

    @Override // p000.ve1
    /* renamed from: v */
    public Integer mo331v() {
        return Integer.valueOf(((MediaPlayer) this.f8231f.get()).getDuration());
    }

    @Override // p000.ve1
    /* renamed from: w */
    public boolean mo330w() {
        return ((MediaPlayer) this.f8231f.get()).isPlaying();
    }
}
