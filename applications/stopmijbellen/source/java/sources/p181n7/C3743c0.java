package p181n7;

import android.os.Build;
import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import p181n7.AbstractC3749g;
/* renamed from: n7.c0 */
/* loaded from: classes2-dex2jar.jar:n7/c0.class */
public class C3743c0 implements AbstractC3764l {

    /* renamed from: a */
    public Hashtable<String, C3744a> f12161a = new Hashtable<>();

    /* renamed from: n7.c0$a */
    /* loaded from: classes2-dex2jar.jar:n7/c0$a.class */
    public static class C3744a implements AbstractC3764l {

        /* renamed from: a */
        public Field f12162a;

        /* renamed from: b */
        public Field f12163b;

        /* renamed from: c */
        public Field f12164c;

        /* renamed from: d */
        public Field f12165d;

        public C3744a(Class cls) {
            try {
                Field declaredField = cls.getSuperclass().getDeclaredField("peerHost");
                this.f12162a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getSuperclass().getDeclaredField("peerPort");
                this.f12163b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("sslParameters");
                this.f12164c = declaredField3;
                declaredField3.setAccessible(true);
                Field declaredField4 = this.f12164c.getType().getDeclaredField("useSni");
                this.f12165d = declaredField4;
                declaredField4.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
        }

        @Override // p181n7.AbstractC3764l
        /* renamed from: a */
        public void mo1816a(SSLEngine sSLEngine, AbstractC3749g.C3750a c3750a, String str, int i) {
            if (this.f12165d != null) {
                try {
                    this.f12162a.set(sSLEngine, str);
                    this.f12163b.set(sSLEngine, Integer.valueOf(i));
                    this.f12165d.set(this.f12164c.get(sSLEngine), Boolean.TRUE);
                } catch (IllegalAccessException e) {
                }
            }
        }

        @Override // p181n7.AbstractC3764l
        /* renamed from: b */
        public SSLEngine mo1815b(SSLContext sSLContext, String str, int i) {
            return null;
        }
    }

    @Override // p181n7.AbstractC3764l
    /* renamed from: a */
    public void mo1816a(SSLEngine sSLEngine, AbstractC3749g.C3750a c3750a, String str, int i) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        C3744a c3744a = this.f12161a.get(canonicalName);
        C3744a c3744a2 = c3744a;
        if (c3744a == null) {
            c3744a2 = new C3744a(sSLEngine.getClass());
            this.f12161a.put(canonicalName, c3744a2);
        }
        c3744a2.mo1816a(sSLEngine, c3750a, str, i);
    }

    @Override // p181n7.AbstractC3764l
    /* renamed from: b */
    public SSLEngine mo1815b(SSLContext sSLContext, String str, int i) {
        return ProviderInstaller.PROVIDER_NAME.equals(sSLContext.getProvider().getName()) || Build.VERSION.SDK_INT >= 23 ? sSLContext.createSSLEngine(str, i) : sSLContext.createSSLEngine();
    }
}
