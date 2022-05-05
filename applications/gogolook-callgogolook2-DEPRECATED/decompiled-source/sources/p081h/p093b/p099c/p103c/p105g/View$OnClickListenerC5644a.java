package p081h.p093b.p099c.p103c.p105g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.android.p018ex.photo.R$bool;
import com.android.p018ex.photo.R$id;
import com.android.p018ex.photo.R$layout;
import com.android.p018ex.photo.R$string;
import com.android.p018ex.photo.views.PhotoView;
import p081h.p093b.p099c.p103c.AbstractC5626d;
import p081h.p093b.p099c.p103c.C5629e;
import p081h.p093b.p099c.p103c.p104f.C5643c;
import p081h.p093b.p099c.p103c.p106h.AbstractC5649b;
import p081h.p093b.p099c.p103c.p109k.C5662a;
/* renamed from: h.b.c.c.g.a */
/* loaded from: classes-dex2jar.jar:h/b/c/c/g/a.class */
public class View$OnClickListenerC5644a extends Fragment implements LoaderManager.LoaderCallbacks<AbstractC5649b.C5650a>, View.OnClickListener, AbstractC5626d.AbstractC5628b, AbstractC5626d.AbstractC5627a {

    /* renamed from: a */
    public String f14127a;

    /* renamed from: b */
    public String f14128b;

    /* renamed from: c */
    public Intent f14129c;

    /* renamed from: d */
    public AbstractC5626d f14130d;

    /* renamed from: e */
    public C5643c f14131e;

    /* renamed from: f */
    public BroadcastReceiver f14132f;

    /* renamed from: g */
    public PhotoView f14133g;

    /* renamed from: h */
    public ImageView f14134h;

    /* renamed from: i */
    public TextView f14135i;

    /* renamed from: j */
    public C5662a f14136j;

    /* renamed from: k */
    public int f14137k;

    /* renamed from: l */
    public boolean f14138l;

    /* renamed from: m */
    public boolean f14139m;

    /* renamed from: n */
    public boolean f14140n;

    /* renamed from: o */
    public boolean f14141o = true;

    /* renamed from: p */
    public View f14142p;

    /* renamed from: q */
    public boolean f14143q;

    /* renamed from: r */
    public boolean f14144r;

    /* renamed from: s */
    public boolean f14145s;

    /* renamed from: h.b.c.c.g.a$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/g/a$b.class */
    public interface AbstractC5646b {
    }

    /* renamed from: h.b.c.c.g.a$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/g/a$c.class */
    public class C5647c extends BroadcastReceiver {
        public C5647c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                View$OnClickListenerC5644a.this.f14144r = false;
                return;
            }
            View$OnClickListenerC5644a aVar = View$OnClickListenerC5644a.this;
            if (!aVar.f14144r && !aVar.m24900L()) {
                View$OnClickListenerC5644a aVar2 = View$OnClickListenerC5644a.this;
                if (!aVar2.f14143q) {
                    aVar2.getLoaderManager().restartLoader(2, null, View$OnClickListenerC5644a.this);
                }
                View$OnClickListenerC5644a.this.getLoaderManager().restartLoader(3, null, View$OnClickListenerC5644a.this);
                View$OnClickListenerC5644a aVar3 = View$OnClickListenerC5644a.this;
                aVar3.f14144r = true;
                aVar3.f14136j.m24858a(0);
            }
        }
    }

    /* renamed from: a */
    public static View$OnClickListenerC5644a m24895a(Intent intent, int i, boolean z) {
        View$OnClickListenerC5644a aVar = new View$OnClickListenerC5644a();
        m24894a(intent, i, z, aVar);
        return aVar;
    }

    /* renamed from: a */
    public static void m24894a(Intent intent, int i, boolean z, View$OnClickListenerC5644a aVar) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg-intent", intent);
        bundle.putInt("arg-position", i);
        bundle.putBoolean("arg-show-spinner", z);
        aVar.setArguments(bundle);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5628b
    /* renamed from: H */
    public void mo24903H() {
        m24898N();
    }

    /* renamed from: J */
    public AbstractC5626d m24902J() {
        return ((C5629e.AbstractC5638i) getActivity()).mo24920u();
    }

    /* renamed from: K */
    public String m24901K() {
        return this.f14127a;
    }

    /* renamed from: L */
    public boolean m24900L() {
        PhotoView photoView = this.f14133g;
        return photoView != null && photoView.m36646g();
    }

    /* renamed from: M */
    public final void m24899M() {
        PhotoView photoView = this.f14133g;
        if (photoView != null) {
            photoView.m36663a((Bitmap) null);
        }
    }

    /* renamed from: N */
    public void m24898N() {
        PhotoView photoView = this.f14133g;
        if (photoView != null) {
            photoView.m36645h();
        }
    }

    /* renamed from: O */
    public final void m24897O() {
        AbstractC5626d dVar = this.f14130d;
        m24885e(dVar == null ? false : dVar.mo24970a((Fragment) this));
    }

    /* renamed from: a */
    public final void m24893a(Drawable drawable) {
        if (drawable != null) {
            PhotoView photoView = this.f14133g;
            if (photoView != null) {
                photoView.m36662a(drawable);
            }
            m24886d(true);
            this.f14142p.setVisibility(8);
            this.f14141o = false;
        }
    }

    /* renamed from: a */
    public void m24892a(View view) {
        this.f14133g = (PhotoView) view.findViewById(R$id.photo_view);
        this.f14133g.m36667a(this.f14129c.getFloatExtra("max_scale", 1.0f));
        this.f14133g.setOnClickListener(this);
        this.f14133g.m36655a(this.f14138l, false);
        this.f14133g.m36652b(false);
        this.f14142p = view.findViewById(R$id.photo_preview);
        this.f14134h = (ImageView) view.findViewById(R$id.photo_preview_image);
        this.f14143q = false;
        this.f14136j = new C5662a((ProgressBar) view.findViewById(R$id.determinate_progress), (ProgressBar) view.findViewById(R$id.indeterminate_progress), true);
        this.f14135i = (TextView) view.findViewById(R$id.empty_text);
        ImageView imageView = (ImageView) view.findViewById(R$id.retry_button);
        m24897O();
    }

    /* renamed from: a */
    public void onLoadFinished(Loader<AbstractC5649b.C5650a> loader, AbstractC5649b.C5650a aVar) {
        if (getView() != null && isAdded()) {
            Drawable a = aVar.m24879a(getResources());
            int id = loader.getId();
            if (id != 2) {
                if (id == 3) {
                    m24890a(aVar);
                }
            } else if (this.f14145s) {
                m24890a(aVar);
            } else if (!m24900L()) {
                if (a == null) {
                    this.f14143q = false;
                    this.f14134h.setVisibility(8);
                } else {
                    this.f14134h.setImageDrawable(a);
                    this.f14143q = true;
                    this.f14134h.setVisibility(0);
                }
                if (getResources().getBoolean(R$bool.force_thumbnail_no_scaling)) {
                    this.f14134h.setScaleType(ImageView.ScaleType.CENTER);
                }
                m24886d(false);
            } else {
                return;
            }
            if (!this.f14141o) {
                this.f14136j.m24858a(8);
            }
            if (a != null) {
                this.f14130d.mo24981a(this.f14137k);
            }
            m24897O();
        }
    }

    /* renamed from: a */
    public final void m24890a(AbstractC5649b.C5650a aVar) {
        if (aVar.f14151c == 1) {
            this.f14141o = false;
            this.f14135i.setText(R$string.failed);
            this.f14135i.setVisibility(0);
            this.f14130d.mo24962a(this, false);
            return;
        }
        this.f14135i.setVisibility(8);
        m24893a(aVar.m24879a(getResources()));
        this.f14130d.mo24962a(this, true);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5628b
    /* renamed from: a */
    public void mo24889a(boolean z) {
        m24897O();
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5628b
    /* renamed from: a */
    public boolean mo24896a(float f, float f2) {
        if (!this.f14130d.mo24954b((Fragment) this)) {
            return false;
        }
        PhotoView photoView = this.f14133g;
        boolean z = false;
        if (photoView != null) {
            z = false;
            if (photoView.m36653b(f, f2)) {
                z = true;
            }
        }
        return z;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5627a
    /* renamed from: b */
    public void mo24887b(Cursor cursor) {
        Loader loader;
        if (this.f14131e != null && cursor.moveToPosition(this.f14137k) && !m24900L()) {
            this.f14130d.mo24963a(this, cursor);
            LoaderManager loaderManager = getLoaderManager();
            Loader loader2 = loaderManager.getLoader(3);
            if (loader2 != null) {
                AbstractC5649b bVar = (AbstractC5649b) loader2;
                this.f14127a = this.f14131e.m24907b(cursor);
                bVar.mo24880a(this.f14127a);
                bVar.forceLoad();
            }
            if (!this.f14143q && (loader = loaderManager.getLoader(2)) != null) {
                AbstractC5649b bVar2 = (AbstractC5649b) loader;
                this.f14128b = this.f14131e.m24905c(cursor);
                bVar2.mo24880a(this.f14128b);
                bVar2.forceLoad();
            }
        }
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5628b
    /* renamed from: b */
    public boolean mo24888b(float f, float f2) {
        if (!this.f14130d.mo24954b((Fragment) this)) {
            return false;
        }
        PhotoView photoView = this.f14133g;
        boolean z = false;
        if (photoView != null) {
            z = false;
            if (photoView.m36666a(f, f2)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    public void m24886d(boolean z) {
        this.f14133g.m36652b(z);
    }

    /* renamed from: e */
    public void m24885e(boolean z) {
        this.f14138l = z;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d.AbstractC5628b
    /* renamed from: o */
    public void mo24884o() {
        if (!this.f14130d.mo24954b((Fragment) this)) {
            m24898N();
            return;
        }
        if (!m24900L()) {
            getLoaderManager().restartLoader(2, null, this);
        }
        this.f14130d.mo24964a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f14130d = m24902J();
        AbstractC5626d dVar = this.f14130d;
        if (dVar != null) {
            this.f14131e = dVar.mo24983a();
            if (this.f14131e != null) {
                m24897O();
                return;
            }
            throw new IllegalStateException("Callback reported null adapter");
        }
        throw new IllegalArgumentException("Activity must be a derived class of PhotoViewActivity");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f14130d.mo24958b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundle2;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f14129c = (Intent) arguments.getParcelable("arg-intent");
            this.f14145s = this.f14129c.getBooleanExtra("display_thumbs_fullscreen", false);
            this.f14137k = arguments.getInt("arg-position");
            this.f14140n = arguments.getBoolean("arg-show-spinner");
            this.f14141o = true;
            if (!(bundle == null || (bundle2 = bundle.getBundle("com.android.mail.photo.fragments.PhotoViewFragment.INTENT")) == null)) {
                this.f14129c = new Intent().putExtras(bundle2);
            }
            Intent intent = this.f14129c;
            if (intent != null) {
                this.f14127a = intent.getStringExtra("resolved_photo_uri");
                this.f14128b = this.f14129c.getStringExtra("thumbnail_uri");
                this.f14139m = this.f14129c.getBooleanExtra("watch_network", false);
            }
        }
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public Loader<AbstractC5649b.C5650a> onCreateLoader(int i, Bundle bundle) {
        String str = null;
        if (this.f14140n) {
            return null;
        }
        if (i == 2) {
            str = this.f14128b;
        } else if (i == 3) {
            str = this.f14127a;
        }
        return this.f14130d.mo24978a(i, bundle, str);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R$layout.photo_fragment_view, viewGroup, false);
        m24892a(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        PhotoView photoView = this.f14133g;
        if (photoView != null) {
            photoView.m36668a();
            this.f14133g = null;
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f14130d = null;
        super.onDetach();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<AbstractC5649b.C5650a> loader) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        if (this.f14139m) {
            getActivity().unregisterReceiver(this.f14132f);
        }
        this.f14130d.mo24967a((AbstractC5626d.AbstractC5627a) this);
        this.f14130d.mo24957b(this.f14137k);
        m24899M();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f14130d.mo24977a(this.f14137k, this);
        this.f14130d.mo24953b((AbstractC5626d.AbstractC5627a) this);
        if (this.f14139m) {
            if (this.f14132f == null) {
                this.f14132f = new C5647c();
            }
            getActivity().registerReceiver(this.f14132f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.f14144r = activeNetworkInfo.isConnected();
            } else {
                this.f14144r = false;
            }
        }
        if (!m24900L()) {
            this.f14141o = true;
            this.f14142p.setVisibility(0);
            getLoaderManager().initLoader(2, null, this);
            getLoaderManager().initLoader(3, null, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Intent intent = this.f14129c;
        if (intent != null) {
            bundle.putParcelable("com.android.mail.photo.fragments.PhotoViewFragment.INTENT", intent.getExtras());
        }
    }
}
