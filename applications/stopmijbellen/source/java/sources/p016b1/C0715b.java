package p016b1;

import androidx.lifecycle.AbstractC0506a0;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.AbstractC0531p;
import androidx.lifecycle.AbstractC0546x;
import androidx.lifecycle.AbstractC0548z;
import androidx.lifecycle.C0510b0;
import androidx.lifecycle.C0512c0;
import androidx.lifecycle.C0530o;
import com.google.android.gms.internal.ads.C1676a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
import p124i4.C3102d;
import p226s.C4264h;
/* renamed from: b1.b */
/* loaded from: classes-dex2jar.jar:b1/b.class */
public class C0715b extends AbstractC0714a {

    /* renamed from: a */
    public final AbstractC0524j f2768a;

    /* renamed from: b */
    public final C0717b f2769b;

    /* renamed from: b1.b$a */
    /* loaded from: classes-dex2jar.jar:b1/b$a.class */
    public static class C0716a<D> extends C0530o<D> {
        @Override // androidx.lifecycle.LiveData
        /* renamed from: e */
        public void mo7435e() {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: f */
        public void mo7434f() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: g */
        public void mo7433g(AbstractC0531p<? super D> abstractC0531p) {
            super.mo7433g(abstractC0531p);
        }

        @Override // androidx.lifecycle.C0530o, androidx.lifecycle.LiveData
        /* renamed from: h */
        public void mo7432h(D d) {
            super.mo7432h(d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(0);
            sb.append(" : ");
            C3102d.m2634e(null, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: b1.b$b */
    /* loaded from: classes-dex2jar.jar:b1/b$b.class */
    public static class C0717b extends AbstractC0546x {

        /* renamed from: d */
        public static final AbstractC0548z f2770d = new C0718a();

        /* renamed from: c */
        public C4264h<C0716a> f2771c = new C4264h<>();

        /* renamed from: b1.b$b$a */
        /* loaded from: classes-dex2jar.jar:b1/b$b$a.class */
        public static final class C0718a implements AbstractC0548z {
            @Override // androidx.lifecycle.AbstractC0548z
            /* renamed from: a */
            public <T extends AbstractC0546x> T mo2864a(Class<T> cls) {
                return new C0717b();
            }
        }

        @Override // androidx.lifecycle.AbstractC0546x
        /* renamed from: a */
        public void mo7431a() {
            C4264h<C0716a> c4264h = this.f2771c;
            int i = c4264h.f13369c;
            if (i > 0) {
                Objects.requireNonNull((C0716a) c4264h.f13368b[0]);
                throw null;
            }
            Object[] objArr = c4264h.f13368b;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            c4264h.f13369c = 0;
        }
    }

    public C0715b(AbstractC0524j abstractC0524j, C0512c0 c0512c0) {
        AbstractC0546x abstractC0546x;
        this.f2768a = abstractC0524j;
        AbstractC0548z abstractC0548z = C0717b.f2770d;
        String canonicalName = C0717b.class.getCanonicalName();
        if (canonicalName != null) {
            String m4789h = C1676a.m4789h("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC0546x abstractC0546x2 = c0512c0.f2027a.get(m4789h);
            if (C0717b.class.isInstance(abstractC0546x2)) {
                abstractC0546x = abstractC0546x2;
                if (abstractC0548z instanceof C0510b0) {
                    ((C0510b0) abstractC0548z).mo7974b(abstractC0546x2);
                    abstractC0546x = abstractC0546x2;
                }
            } else {
                AbstractC0546x mo7973c = abstractC0548z instanceof AbstractC0506a0 ? ((AbstractC0506a0) abstractC0548z).mo7973c(m4789h, C0717b.class) : ((C0717b.C0718a) abstractC0548z).mo2864a(C0717b.class);
                AbstractC0546x put = c0512c0.f2027a.put(m4789h, mo7973c);
                abstractC0546x = mo7973c;
                if (put != null) {
                    put.mo7431a();
                    abstractC0546x = mo7973c;
                }
            }
            this.f2769b = (C0717b) abstractC0546x;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // p016b1.AbstractC0714a
    @Deprecated
    /* renamed from: a */
    public void mo7436a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        C0717b c0717b = this.f2769b;
        if (c0717b.f2771c.f13369c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            C4264h<C0716a> c4264h = c0717b.f2771c;
            if (c4264h.f13369c <= 0) {
                return;
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(c0717b.f2771c.f13367a[0]);
            printWriter.print(": ");
            printWriter.println(((C0716a) c4264h.f13368b[0]).toString());
            printWriter.print(str2);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mArgs=");
            printWriter.println((Object) null);
            printWriter.print(str2);
            printWriter.print("mLoader=");
            printWriter.println((Object) null);
            throw null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C3102d.m2634e(this.f2768a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
