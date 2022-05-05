package p459j.p460a.p474c0.p475c.p478y;

import android.app.LoaderManager;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import androidx.annotation.Nullable;
import p459j.p460a.p474c0.p475c.C11520b;
import p459j.p460a.p474c0.p475c.C11546o;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.y.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/m.class */
public class C11627m extends AbstractC11587a {

    /* renamed from: b */
    public final Context f26107b;

    /* renamed from: c */
    public LoaderManager f26108c;

    /* renamed from: d */
    public final C11629b f26109d = new C11629b();

    /* renamed from: e */
    public AbstractC11630c f26110e;

    /* renamed from: j.a.c0.c.y.m$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/m$b.class */
    public class C11629b implements LoaderManager.LoaderCallbacks<Cursor> {
        public C11629b() {
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (!C11627m.this.m9045b(((C11520b) loader).m9394f())) {
                C12153d0.m6981e("MessagingApp", "Loader finished after unbinding the media picker");
            } else if (loader.getId() != 1) {
                C12151d.m7005a("Unknown loader id for gallery picker!");
            } else {
                C11627m.this.f26110e.mo7444a(C11627m.this, cursor, 1);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            String string = bundle.getString("bindingId");
            if (!C11627m.this.m9045b(string)) {
                C12153d0.m6981e("MessagingApp", "Loader created after unbinding the media picker");
                return null;
            } else if (i == 1) {
                return new C11546o(string, C11627m.this.f26107b);
            } else {
                C12151d.m7005a("Unknown loader id for gallery picker!");
                return null;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
            if (!C11627m.this.m9045b(((C11520b) loader).m9394f())) {
                C12153d0.m6981e("MessagingApp", "Loader reset after unbinding the media picker");
            } else if (loader.getId() != 1) {
                C12151d.m7005a("Unknown loader id for media picker!");
            } else {
                C11627m.this.f26110e.mo7444a(C11627m.this, null, 1);
            }
        }
    }

    /* renamed from: j.a.c0.c.y.m$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/m$c.class */
    public interface AbstractC11630c {
        /* renamed from: a */
        void mo7444a(C11627m mVar, Object obj, int i);
    }

    public C11627m(Context context) {
        this.f26107b = context;
    }

    /* renamed from: a */
    public void m8768a(int i) {
        this.f26108c.destroyLoader(i);
    }

    /* renamed from: a */
    public void m8767a(int i, AbstractC11590d<C11627m> dVar, @Nullable Bundle bundle, AbstractC11630c cVar) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putString("bindingId", dVar.mo9035a());
        if (i == 1) {
            this.f26108c.initLoader(i, bundle2, this.f26109d);
        } else {
            C12151d.m7005a("Unsupported loader id for media picker!");
        }
        this.f26110e = cVar;
    }

    /* renamed from: a */
    public void m8766a(LoaderManager loaderManager) {
        this.f26108c = loaderManager;
    }

    /* renamed from: b */
    public void m8764b(int i) {
        AbstractC12178k.m6912b().mo6905b("selected_media_picker_chooser_index", i);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        LoaderManager loaderManager = this.f26108c;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
            this.f26108c = null;
        }
    }

    /* renamed from: f */
    public int m8762f() {
        return AbstractC12178k.m6912b().mo6909a("selected_media_picker_chooser_index", -1);
    }
}
