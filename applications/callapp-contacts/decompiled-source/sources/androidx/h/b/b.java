package androidx.h.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.os.OperationCanceledException;
import androidx.core.os.a;
import androidx.h.b.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/h/b/b.class */
public final class b extends a<Cursor> {

    /* renamed from: c  reason: collision with root package name */
    public String[] f2424c;

    /* renamed from: d  reason: collision with root package name */
    public String f2425d;
    public String[] e;
    public String f;
    private final c<Cursor>.a k = new c.a();
    private Uri l;
    private Cursor m;
    private a n;

    public b(Context context) {
        super(context);
    }

    public b(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.l = uri;
        this.f2424c = strArr;
        this.f2425d = str;
        this.e = strArr2;
        this.f = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void b(Cursor cursor) {
        if (!l()) {
            Cursor cursor2 = this.m;
            this.m = cursor;
            if (k()) {
                super.b(cursor);
            }
            if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
                cursor2.close();
            }
        } else if (cursor != null) {
            cursor.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public Cursor d() {
        synchronized (this) {
            if (!f()) {
                this.n = new a();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor a2 = androidx.core.content.a.a(j().getContentResolver(), this.l, this.f2424c, this.f2425d, this.e, this.f, this.n);
            if (a2 != null) {
                try {
                    a2.getCount();
                    a2.registerContentObserver(this.k);
                } catch (RuntimeException e) {
                    a2.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.n = null;
            }
            return a2;
        } catch (Throwable th) {
            synchronized (this) {
                this.n = null;
                throw th;
            }
        }
    }

    @Override // androidx.h.b.a
    public final /* synthetic */ void a(Cursor cursor) {
        Cursor cursor2 = cursor;
        if (cursor2 != null && !cursor2.isClosed()) {
            cursor2.close();
        }
    }

    @Override // androidx.h.b.a, androidx.h.b.c
    @Deprecated
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.l);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f2424c));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f2425d);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.e));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.m);
    }

    @Override // androidx.h.b.a
    public final void e() {
        super.e();
        synchronized (this) {
            a aVar = this.n;
            if (aVar != null) {
                aVar.b();
            }
        }
    }

    @Override // androidx.h.b.c
    protected final void g() {
        Cursor cursor = this.m;
        if (cursor != null) {
            b(cursor);
        }
        if (r() || this.m == null) {
            o();
        }
    }

    @Override // androidx.h.b.c
    protected final void h() {
        n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.h.b.c
    public final void i() {
        super.i();
        n();
        Cursor cursor = this.m;
        if (cursor != null && !cursor.isClosed()) {
            this.m.close();
        }
        this.m = null;
    }
}
