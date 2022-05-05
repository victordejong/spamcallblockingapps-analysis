package androidx.loader.content;

import android.database.Cursor;
import android.net.Uri;
import androidx.core.content.ContentResolverCompat;
import androidx.core.p004os.CancellationSignal;
import androidx.core.p004os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/loader/content/CursorLoader.class */
public class CursorLoader extends AsyncTaskLoader<Cursor> {

    /* renamed from: p */
    final Loader<Cursor>.ForceLoadContentObserver f4140p;

    /* renamed from: q */
    Uri f4141q;

    /* renamed from: r */
    String[] f4142r;

    /* renamed from: s */
    String f4143s;

    /* renamed from: t */
    String[] f4144t;

    /* renamed from: u */
    String f4145u;

    /* renamed from: v */
    Cursor f4146v;

    /* renamed from: w */
    CancellationSignal f4147w;

    @Override // androidx.loader.content.AsyncTaskLoader
    /* renamed from: A */
    public void mo18102A() {
        super.mo18102A();
        synchronized (this) {
            if (this.f4147w != null) {
                this.f4147w.m19449a();
            }
        }
    }

    /* renamed from: I */
    public void mo18092f(Cursor cursor) {
        if (!m18087k()) {
            Cursor cursor2 = this.f4146v;
            this.f4146v = cursor;
            if (m18086l()) {
                super.mo18092f(cursor);
            }
            if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
                cursor2.close();
            }
        } else if (cursor != null) {
            cursor.close();
        }
    }

    /* renamed from: J */
    public Cursor mo7800F() {
        synchronized (this) {
            if (!m18105E()) {
                this.f4147w = new CancellationSignal();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor a = ContentResolverCompat.m19679a(m18089i().getContentResolver(), this.f4141q, this.f4142r, this.f4143s, this.f4144t, this.f4145u, this.f4147w);
            if (a != null) {
                try {
                    a.getCount();
                    a.registerContentObserver(this.f4140p);
                } catch (RuntimeException e) {
                    a.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.f4147w = null;
            }
            return a;
        } catch (Throwable th) {
            synchronized (this) {
                this.f4147w = null;
                throw th;
            }
        }
    }

    /* renamed from: K */
    public void mo18101G(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    @Deprecated
    /* renamed from: g */
    public void mo18091g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo18091g(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f4141q);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f4142r));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f4143s);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f4144t));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f4145u);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f4146v);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.f4155h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.loader.content.Loader
    /* renamed from: q */
    public void mo18081q() {
        super.mo18081q();
        mo18079s();
        Cursor cursor = this.f4146v;
        if (cursor != null && !cursor.isClosed()) {
            this.f4146v.close();
        }
        this.f4146v = null;
    }

    @Override // androidx.loader.content.Loader
    /* renamed from: r */
    protected void mo18080r() {
        Cursor cursor = this.f4146v;
        if (cursor != null) {
            mo18092f(cursor);
        }
        if (m18073y() || this.f4146v == null) {
            m18090h();
        }
    }

    @Override // androidx.loader.content.Loader
    /* renamed from: s */
    protected void mo18079s() {
        m18096b();
    }
}
