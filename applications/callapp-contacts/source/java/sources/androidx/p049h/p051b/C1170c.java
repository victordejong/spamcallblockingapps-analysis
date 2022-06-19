package androidx.p049h.p051b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: androidx.h.b.c */
/* loaded from: classes-dex2jar.jar:androidx/h/b/c.class */
public class C1170c<D> {

    /* renamed from: a */
    private Context f4573a;

    /* renamed from: g */
    public int f4577g;

    /* renamed from: h */
    public AbstractC1172b<D> f4578h;

    /* renamed from: b */
    private boolean f4574b = false;

    /* renamed from: i */
    public boolean f4579i = false;

    /* renamed from: c */
    private boolean f4575c = true;

    /* renamed from: d */
    private boolean f4576d = false;

    /* renamed from: j */
    boolean f4580j = false;

    /* renamed from: androidx.h.b.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/c$a.class */
    public final class C1171a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1171a() {
            super(new Handler());
            C1170c.this = r5;
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            C1170c.this.m43423t();
        }
    }

    /* renamed from: androidx.h.b.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/c$b.class */
    public interface AbstractC1172b<D> {
        /* renamed from: c */
        void mo43422c(D d);
    }

    public C1170c(Context context) {
        this.f4573a = context.getApplicationContext();
    }

    /* renamed from: c */
    public static String m43436c(D d) {
        StringBuilder sb = new StringBuilder(64);
        if (d == null) {
            sb.append(JsonReaderKt.NULL);
        } else {
            Class<?> cls = d.getClass();
            sb.append(cls.getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append("}");
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void mo43441a() {
    }

    /* renamed from: a */
    public final void m43440a(AbstractC1172b<D> abstractC1172b) {
        AbstractC1172b<D> abstractC1172b2 = this.f4578h;
        if (abstractC1172b2 != null) {
            if (abstractC1172b2 != abstractC1172b) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            this.f4578h = null;
            return;
        }
        throw new IllegalStateException("No listener register");
    }

    @Deprecated
    /* renamed from: a */
    public void mo43439a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f4577g);
        printWriter.print(" mListener=");
        printWriter.println(this.f4578h);
        if (this.f4574b || this.f4576d || this.f4580j) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f4574b);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f4576d);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f4580j);
        }
        if (this.f4579i || this.f4575c) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f4579i);
            printWriter.print(" mReset=");
            printWriter.println(this.f4575c);
        }
    }

    /* renamed from: b */
    public void mo43437b(D d) {
        AbstractC1172b<D> abstractC1172b = this.f4578h;
        if (abstractC1172b != null) {
            abstractC1172b.mo43422c(d);
        }
    }

    /* renamed from: b */
    protected boolean mo43438b() {
        return false;
    }

    /* renamed from: g */
    protected void mo19542g() {
    }

    /* renamed from: h */
    protected void mo43435h() {
    }

    /* renamed from: i */
    public void mo43434i() {
    }

    /* renamed from: j */
    public final Context m43433j() {
        return this.f4573a;
    }

    /* renamed from: k */
    public final boolean m43432k() {
        return this.f4574b;
    }

    /* renamed from: l */
    public final boolean m43431l() {
        return this.f4575c;
    }

    /* renamed from: m */
    public final void m43430m() {
        this.f4574b = true;
        this.f4575c = false;
        this.f4579i = false;
        mo19542g();
    }

    /* renamed from: n */
    public final boolean m43429n() {
        return mo43438b();
    }

    /* renamed from: o */
    public final void m43428o() {
        mo43441a();
    }

    /* renamed from: p */
    public final void m43427p() {
        this.f4574b = false;
        mo43435h();
    }

    /* renamed from: q */
    public final void m43426q() {
        mo43434i();
        this.f4575c = true;
        this.f4574b = false;
        this.f4579i = false;
        this.f4576d = false;
        this.f4580j = false;
    }

    /* renamed from: r */
    public final boolean m43425r() {
        boolean z = this.f4576d;
        this.f4576d = false;
        this.f4580j |= z;
        return z;
    }

    /* renamed from: s */
    public final void m43424s() {
        if (this.f4580j) {
            m43423t();
        }
    }

    /* renamed from: t */
    public final void m43423t() {
        if (this.f4574b) {
            mo43441a();
        } else {
            this.f4576d = true;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        Class<?> cls = getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(" id=");
        sb.append(this.f4577g);
        sb.append("}");
        return sb.toString();
    }
}
