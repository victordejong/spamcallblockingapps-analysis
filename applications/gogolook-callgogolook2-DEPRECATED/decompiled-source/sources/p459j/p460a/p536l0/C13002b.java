package p459j.p460a.p536l0;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.TouchImageView;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
/* renamed from: j.a.l0.b */
/* loaded from: classes3-dex2jar.jar:j/a/l0/b.class */
public class C13002b extends Fragment {

    /* renamed from: g */
    public static final String f29396g = C13002b.class.getSimpleName();

    /* renamed from: a */
    public Uri f29397a = null;

    /* renamed from: b */
    public String f29398b = null;

    /* renamed from: c */
    public boolean f29399c = false;

    /* renamed from: d */
    public int f29400d;

    /* renamed from: e */
    public ImageView f29401e;

    /* renamed from: f */
    public ProgressWheel f29402f;

    /* renamed from: j.a.l0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/b$a.class */
    public class View$OnClickListenerC13003a implements View.OnClickListener {
        public View$OnClickListenerC13003a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActionBar supportActionBar;
            FragmentActivity activity = C13002b.this.getActivity();
            if ((activity instanceof AppCompatActivity) && (supportActionBar = ((AppCompatActivity) activity).getSupportActionBar()) != null) {
                if (supportActionBar.isShowing()) {
                    supportActionBar.hide();
                } else {
                    supportActionBar.show();
                }
            }
        }
    }

    /* renamed from: j.a.l0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/b$b.class */
    public class C13004b extends AbstractC6078h<AbstractC5979b> {

        /* renamed from: j.a.l0.b$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/l0/b$b$a.class */
        public class RunnableC13005a implements Runnable {
            public RunnableC13005a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C13002b.this.f29402f.setVisibility(8);
                C13002b.this.f29401e.setVisibility(0);
            }
        }

        public C13004b() {
        }

        /* renamed from: a */
        public void m4823a(AbstractC5979b bVar, AbstractC6063c<? super AbstractC5979b> cVar) {
            String unused = C13002b.f29396g;
            C13002b.this.f29401e.setImageDrawable(bVar);
            C13002b.this.f29402f.postDelayed(new RunnableC13005a(), 500L);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m4823a((AbstractC5979b) obj, (AbstractC6063c<? super AbstractC5979b>) cVar);
        }
    }

    /* renamed from: j.a.l0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/b$c.class */
    public class C13006c extends AbstractC6078h<AbstractC5979b> {

        /* renamed from: j.a.l0.b$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/l0/b$c$a.class */
        public class RunnableC13007a implements Runnable {
            public RunnableC13007a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C13002b.this.f29402f.setVisibility(8);
                C13002b.this.f29401e.setVisibility(0);
            }
        }

        public C13006c() {
        }

        /* renamed from: a */
        public void m4822a(AbstractC5979b bVar, AbstractC6063c<? super AbstractC5979b> cVar) {
            String unused = C13002b.f29396g;
            C13002b.this.f29401e.setImageDrawable(bVar);
            C13002b.this.f29402f.postDelayed(new RunnableC13007a(), 500L);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m4822a((AbstractC5979b) obj, (AbstractC6063c<? super AbstractC5979b>) cVar);
        }
    }

    /* renamed from: a */
    public static final Fragment m4827a(Uri uri, boolean z, int i) {
        C13002b bVar = new C13002b();
        Bundle bundle = new Bundle();
        bundle.putString("photo_uri", uri.toString());
        bundle.putBoolean("is_zoomable", z);
        bundle.putInt("bg_color", i);
        bVar.setArguments(bundle);
        return bVar;
    }

    /* renamed from: a */
    public static final Fragment m4825a(String str, boolean z, int i) {
        C13002b bVar = new C13002b();
        Bundle bundle = new Bundle();
        bundle.putString("photo_url", str);
        bundle.putBoolean("is_zoomable", z);
        bundle.putInt("bg_color", i);
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f29397a = TextUtils.isEmpty(getArguments().getString("photo_uri")) ? null : Uri.parse(getArguments().getString("photo_uri"));
            this.f29398b = getArguments().getString("photo_url");
            this.f29399c = getArguments().getBoolean("is_zoomable", false);
            this.f29400d = getArguments().getInt("bg_color", 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R$layout.fragment_photo_display, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        int i = C13008c.m4790i();
        int k = this.f29399c ? C13008c.m4788k() : C13008c.m4791h();
        if (i > 0 && k > 0) {
            if (C13008c.m4817a(this.f29397a)) {
                this.f29401e.setVisibility(8);
                this.f29402f.setVisibility(0);
                C5769g<Uri> a = C5776l.m24481a(getActivity()).m24457a(this.f29397a);
                a.mo24495b(i, k);
                a.m24512b((C5769g<Uri>) new C13004b());
            } else if (!TextUtils.isEmpty(this.f29398b)) {
                this.f29401e.setVisibility(8);
                this.f29402f.setVisibility(0);
                C5769g<String> a2 = C5776l.m24481a(getActivity()).m24450a(this.f29398b);
                a2.mo24495b(i, k);
                a2.m24512b((C5769g<String>) new C13006c());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(this.f29400d);
        this.f29402f = (ProgressWheel) view.findViewById(R$id.pw_loading);
        this.f29401e = (ImageView) view.findViewById(this.f29399c ? R$id.iv_detail_photo : R$id.iv_thumbnail_photo);
        if (this.f29399c) {
            ImageView imageView = this.f29401e;
            if (imageView instanceof TouchImageView) {
                ((TouchImageView) imageView).m25808a(true);
                ((TouchImageView) this.f29401e).m25804b(true);
            }
        }
        this.f29401e.setOnClickListener(new View$OnClickListenerC13003a());
    }
}
