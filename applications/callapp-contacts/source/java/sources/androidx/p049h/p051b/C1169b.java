package androidx.p049h.p051b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.content.C0788a;
import androidx.core.p037os.C0856a;
import androidx.core.p037os.OperationCanceledException;
import androidx.p049h.p051b.C1170c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* renamed from: androidx.h.b.b */
/* loaded from: classes-dex2jar.jar:androidx/h/b/b.class */
public final class C1169b extends AbstractC1167a<Cursor> {

    /* renamed from: c */
    public String[] f4565c;

    /* renamed from: d */
    public String f4566d;

    /* renamed from: e */
    public String[] f4567e;

    /* renamed from: f */
    public String f4568f;

    /* renamed from: k */
    private final C1170c<Cursor>.C1171a f4569k = new C1170c.C1171a();

    /* renamed from: l */
    private Uri f4570l;

    /* renamed from: m */
    private Cursor f4571m;

    /* renamed from: n */
    private C0856a f4572n;

    public C1169b(Context context) {
        super(context);
    }

    public C1169b(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.f4570l = uri;
        this.f4565c = strArr;
        this.f4566d = str;
        this.f4567e = strArr2;
        this.f4568f = str2;
    }

    /* renamed from: a */
    public void mo43437b(Cursor cursor) {
        if (m43431l()) {
            if (cursor == null) {
                return;
            }
            cursor.close();
            return;
        }
        Cursor cursor2 = this.f4571m;
        this.f4571m = cursor;
        if (m43432k()) {
            super.mo43437b(cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    /* renamed from: u */
    public Cursor mo19543d() {
        synchronized (this) {
            if (m43446f()) {
                throw new OperationCanceledException();
            }
            this.f4572n = new C0856a();
        }
        try {
            Cursor m44505a = C0788a.m44505a(m43433j().getContentResolver(), this.f4570l, this.f4565c, this.f4566d, this.f4567e, this.f4568f, this.f4572n);
            if (m44505a != null) {
                try {
                    m44505a.getCount();
                    m44505a.registerContentObserver(this.f4569k);
                } catch (RuntimeException e) {
                    m44505a.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.f4572n = null;
            }
            return m44505a;
        } catch (Throwable th) {
            synchronized (this) {
                this.f4572n = null;
                throw th;
            }
        }
    }

    @Override // androidx.p049h.p051b.AbstractC1167a
    /* renamed from: a */
    public final /* synthetic */ void mo43444a(Cursor cursor) {
        Cursor cursor2 = cursor;
        if (cursor2 == null || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    @Override // androidx.p049h.p051b.AbstractC1167a, androidx.p049h.p051b.C1170c
    @Deprecated
    /* renamed from: a */
    public final void mo43439a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo43439a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f4570l);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f4565c));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f4566d);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f4567e));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f4568f);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f4571m);
    }

    @Override // androidx.p049h.p051b.AbstractC1167a
    /* renamed from: e */
    public final void mo43443e() {
        super.mo43443e();
        synchronized (this) {
            C0856a c0856a = this.f4572n;
            if (c0856a != null) {
                c0856a.m44301b();
            }
        }
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: g */
    protected final void mo19542g() {
        Cursor cursor = this.f4571m;
        if (cursor != null) {
            mo43437b(cursor);
        }
        if (m43425r() || this.f4571m == null) {
            m43428o();
        }
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: h */
    protected final void mo43435h() {
        m43429n();
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: i */
    public final void mo43434i() {
        super.mo43434i();
        m43429n();
        Cursor cursor = this.f4571m;
        if (cursor != null && !cursor.isClosed()) {
            this.f4571m.close();
        }
        this.f4571m = null;
    }
}
