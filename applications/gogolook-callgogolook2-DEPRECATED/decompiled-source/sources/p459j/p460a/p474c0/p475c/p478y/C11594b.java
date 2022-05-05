package p459j.p460a.p474c0.p475c.p478y;

import android.app.LoaderManager;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.Objects;
import p459j.p460a.p474c0.p475c.C11520b;
import p459j.p460a.p474c0.p475c.C11537m;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12197q;
/* renamed from: j.a.c0.c.y.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/b.class */
public class C11594b extends AbstractC11587a implements LoaderManager.LoaderCallbacks<Cursor> {

    /* renamed from: b */
    public final Context f25912b;

    /* renamed from: c */
    public LoaderManager f25913c;

    /* renamed from: d */
    public AbstractC11595a f25914d;

    /* renamed from: e */
    public final C11537m f25915e = new C11537m();

    /* renamed from: j.a.c0.c.y.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/b$a.class */
    public interface AbstractC11595a {
        /* renamed from: a */
        void mo9014a(Cursor cursor);

        /* renamed from: a */
        void mo9013a(C11594b bVar);

        /* renamed from: b */
        void mo9012b(Cursor cursor);
    }

    public C11594b(Context context, AbstractC11595a aVar) {
        this.f25914d = aVar;
        this.f25912b = context;
    }

    /* renamed from: a */
    public static boolean m9019a(int i) {
        return i < C11828f.m8193a(-1).m8181l();
    }

    /* renamed from: b */
    public static boolean m9015b(int i) {
        return i > C11828f.m8193a(-1).m8181l();
    }

    /* renamed from: a */
    public final Cursor m9016a(Cursor cursor) {
        MatrixCursor matrixCursor = new MatrixCursor(C12197q.C12201d.f27361a);
        if (cursor != null && cursor.moveToFirst()) {
            String str = "";
            do {
                Object[] objArr = new Object[C12197q.C12201d.f27361a.length];
                objArr[7] = Long.valueOf(cursor.getLong(7));
                objArr[0] = Long.valueOf(cursor.getLong(0));
                objArr[6] = cursor.getString(6);
                objArr[1] = cursor.getString(1);
                objArr[2] = cursor.getString(2);
                objArr[3] = cursor.getString(3);
                objArr[4] = Integer.valueOf(cursor.getInt(4));
                objArr[5] = cursor.getString(5);
                objArr[8] = cursor.getString(8);
                String str2 = (String) objArr[3];
                String str3 = str2;
                if (str2 != null) {
                    str3 = str2.replaceAll("\\s+|-", "");
                }
                str = str;
                if (!Objects.equals(str, str3)) {
                    matrixCursor.addRow(objArr);
                    str = str3;
                }
            } while (cursor.moveToNext());
            if (!cursor.isClosed()) {
                cursor.close();
            }
        }
        return matrixCursor;
    }

    /* renamed from: a */
    public void m9018a(LoaderManager loaderManager, AbstractC11590d<C11594b> dVar) {
        Bundle bundle = new Bundle();
        bundle.putString("bindingId", dVar.mo9035a());
        this.f25913c = loaderManager;
        this.f25913c.initLoader(1, bundle, this);
        this.f25913c.initLoader(2, bundle, this);
        this.f25913c.initLoader(3, bundle, this);
    }

    /* renamed from: a */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        Cursor a;
        if (!m9045b(((C11520b) loader).m9394f()) || this.f25914d == null) {
            C12153d0.m6981e("MessagingApp", "Loader finished after unbinding the contacts list");
            return;
        }
        int id = loader.getId();
        if (id == 1) {
            Cursor a2 = m9016a(cursor);
            this.f25914d.mo9014a(a2);
            this.f25915e.m9208a(a2);
        } else if (id == 2) {
            this.f25915e.m9206b(cursor);
        } else if (id != 3) {
            C12151d.m7005a("Unknown loader id for contact picker!");
        } else {
            this.f25914d.mo9013a(this);
        }
        if (loader.getId() != 3 && (a = this.f25915e.m9209a()) != null) {
            this.f25914d.mo9012b(a);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f25914d = null;
        LoaderManager loaderManager = this.f25913c;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
            this.f25913c.destroyLoader(2);
            this.f25913c.destroyLoader(3);
            this.f25913c = null;
        }
        this.f25915e.m9207b();
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        String string = bundle.getString("bindingId");
        if (!m9045b(string)) {
            C12153d0.m6981e("MessagingApp", "Loader created after unbinding the contacts list");
            return null;
        } else if (i == 1) {
            return C12197q.m6823b(this.f25912b).mo9204a(string);
        } else {
            if (i == 2) {
                return C12197q.m6831a(this.f25912b).mo9204a(string);
            }
            if (i == 3) {
                return new C11520b(string, this.f25912b, MessagingContentProvider.f11180h, ParticipantData.C4657b.f11256a, null, null, null);
            }
            C12151d.m7005a("Unknown loader id for contact picker!");
            return null;
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        if (!m9045b(((C11520b) loader).m9394f()) || this.f25914d == null) {
            C12153d0.m6981e("MessagingApp", "Loader reset after unbinding the contacts list");
            return;
        }
        int id = loader.getId();
        if (id == 1) {
            this.f25914d.mo9014a((Cursor) null);
            this.f25915e.m9208a(null);
        } else if (id == 2) {
            this.f25914d.mo9012b(null);
            this.f25915e.m9206b(null);
        } else if (id != 3) {
            C12151d.m7005a("Unknown loader id for contact picker!");
        } else {
            this.f25914d.mo9013a(this);
        }
    }
}
