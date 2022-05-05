package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/loader/content/Loader.class */
public class Loader<D> {

    /* renamed from: a */
    int f4148a;

    /* renamed from: b */
    OnLoadCompleteListener<D> f4149b;

    /* renamed from: c */
    OnLoadCanceledListener<D> f4150c;

    /* renamed from: d */
    Context f4151d;

    /* renamed from: e */
    boolean f4152e = false;

    /* renamed from: f */
    boolean f4153f = false;

    /* renamed from: g */
    boolean f4154g = true;

    /* renamed from: h */
    boolean f4155h = false;

    /* renamed from: i */
    boolean f4156i = false;

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/Loader$ForceLoadContentObserver.class */
    public final class ForceLoadContentObserver extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ Loader f4157a;

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.f4157a.m18083o();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/Loader$OnLoadCanceledListener.class */
    public interface OnLoadCanceledListener<D> {
        /* renamed from: a */
        void m18071a(@NonNull Loader<D> loader);
    }

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/Loader$OnLoadCompleteListener.class */
    public interface OnLoadCompleteListener<D> {
        /* renamed from: a */
        void mo18070a(@NonNull Loader<D> loader, @Nullable D d);
    }

    public Loader(@NonNull Context context) {
        this.f4151d = context.getApplicationContext();
    }

    @MainThread
    /* renamed from: a */
    public void m18097a() {
        this.f4153f = true;
        m18085m();
    }

    @MainThread
    /* renamed from: b */
    public boolean m18096b() {
        return mo18084n();
    }

    /* renamed from: c */
    public void m18095c() {
        this.f4156i = false;
    }

    @NonNull
    /* renamed from: d */
    public String m18094d(@Nullable D d) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.m19348a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    /* renamed from: e */
    public void m18093e() {
        OnLoadCanceledListener<D> onLoadCanceledListener = this.f4150c;
        if (onLoadCanceledListener != null) {
            onLoadCanceledListener.m18071a(this);
        }
    }

    @MainThread
    /* renamed from: f */
    public void mo18092f(@Nullable D d) {
        OnLoadCompleteListener<D> onLoadCompleteListener = this.f4149b;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.mo18070a(this, d);
        }
    }

    @Deprecated
    /* renamed from: g */
    public void mo18091g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f4148a);
        printWriter.print(" mListener=");
        printWriter.println(this.f4149b);
        if (this.f4152e || this.f4155h || this.f4156i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f4152e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f4155h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f4156i);
        }
        if (this.f4153f || this.f4154g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f4153f);
            printWriter.print(" mReset=");
            printWriter.println(this.f4154g);
        }
    }

    @MainThread
    /* renamed from: h */
    public void m18090h() {
        mo18082p();
    }

    @NonNull
    /* renamed from: i */
    public Context m18089i() {
        return this.f4151d;
    }

    /* renamed from: j */
    public boolean m18088j() {
        return this.f4153f;
    }

    /* renamed from: k */
    public boolean m18087k() {
        return this.f4154g;
    }

    /* renamed from: l */
    public boolean m18086l() {
        return this.f4152e;
    }

    @MainThread
    /* renamed from: m */
    protected void m18085m() {
    }

    @MainThread
    /* renamed from: n */
    protected boolean mo18084n() {
        return false;
    }

    @MainThread
    /* renamed from: o */
    public void m18083o() {
        if (this.f4152e) {
            m18090h();
        } else {
            this.f4155h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    /* renamed from: p */
    public void mo18082p() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    /* renamed from: q */
    public void mo18081q() {
    }

    @MainThread
    /* renamed from: r */
    protected void mo18080r() {
    }

    @MainThread
    /* renamed from: s */
    protected void mo18079s() {
    }

    @MainThread
    /* renamed from: t */
    public void m18078t(int i, @NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.f4149b == null) {
            this.f4149b = onLoadCompleteListener;
            this.f4148a = i;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.m19348a(this, sb);
        sb.append(" id=");
        sb.append(this.f4148a);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    /* renamed from: u */
    public void m18077u() {
        mo18081q();
        this.f4154g = true;
        this.f4152e = false;
        this.f4153f = false;
        this.f4155h = false;
        this.f4156i = false;
    }

    /* renamed from: v */
    public void m18076v() {
        if (this.f4156i) {
            m18083o();
        }
    }

    @MainThread
    /* renamed from: w */
    public final void m18075w() {
        this.f4152e = true;
        this.f4154g = false;
        this.f4153f = false;
        mo18080r();
    }

    @MainThread
    /* renamed from: x */
    public void m18074x() {
        this.f4152e = false;
        mo18079s();
    }

    /* renamed from: y */
    public boolean m18073y() {
        boolean z = this.f4155h;
        this.f4155h = false;
        this.f4156i |= z;
        return z;
    }

    @MainThread
    /* renamed from: z */
    public void m18072z(@NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        OnLoadCompleteListener<D> onLoadCompleteListener2 = this.f4149b;
        if (onLoadCompleteListener2 == null) {
            throw new IllegalStateException("No listener register");
        } else if (onLoadCompleteListener2 == onLoadCompleteListener) {
            this.f4149b = null;
        } else {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
    }
}
