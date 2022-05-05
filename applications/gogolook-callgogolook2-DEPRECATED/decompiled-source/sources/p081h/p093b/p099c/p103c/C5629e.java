package p081h.p093b.p099c.p103c;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.text.BidiFormatter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import androidx.viewpager.widget.ViewPager;
import com.android.p018ex.photo.PhotoViewPager;
import com.android.p018ex.photo.R$dimen;
import com.android.p018ex.photo.R$id;
import com.android.p018ex.photo.R$integer;
import com.android.p018ex.photo.R$layout;
import com.android.p018ex.photo.R$string;
import gogolook.callgogolook2.photo.SmsPhotoViewActivity;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p081h.p093b.p099c.p103c.AbstractC5619a;
import p081h.p093b.p099c.p103c.AbstractC5626d;
import p081h.p093b.p099c.p103c.p104f.C5643c;
import p081h.p093b.p099c.p103c.p105g.View$OnClickListenerC5644a;
import p081h.p093b.p099c.p103c.p106h.AbstractC5649b;
import p081h.p093b.p099c.p103c.p106h.C5648a;
import p081h.p093b.p099c.p103c.p106h.C5651c;
import p081h.p093b.p099c.p103c.p108j.C5654b;
import p081h.p093b.p099c.p103c.p108j.C5661e;
/* renamed from: h.b.c.c.e */
/* loaded from: classes-dex2jar.jar:h/b/c/c/e.class */
public class C5629e implements LoaderManager.LoaderCallbacks<Cursor>, ViewPager.OnPageChangeListener, PhotoViewPager.AbstractC1564c, AbstractC5619a.AbstractC5620a, AbstractC5626d {

    /* renamed from: L */
    public static int f14065L;

    /* renamed from: N */
    public static int f14066N;

    /* renamed from: A */
    public int f14067A;

    /* renamed from: B */
    public int f14068B;

    /* renamed from: C */
    public int f14069C;

    /* renamed from: D */
    public int f14070D;

    /* renamed from: E */
    public boolean f14071E;

    /* renamed from: F */
    public boolean f14072F;

    /* renamed from: G */
    public final AccessibilityManager f14073G;

    /* renamed from: H */
    public C5639j f14074H;

    /* renamed from: J */
    public long f14076J;

    /* renamed from: a */
    public final AbstractC5638i f14078a;

    /* renamed from: b */
    public int f14079b;

    /* renamed from: c */
    public final View.OnSystemUiVisibilityChangeListener f14080c;

    /* renamed from: d */
    public String f14081d;

    /* renamed from: e */
    public String f14082e;

    /* renamed from: f */
    public int f14083f;

    /* renamed from: g */
    public String f14084g;

    /* renamed from: h */
    public String[] f14085h;

    /* renamed from: j */
    public boolean f14087j;

    /* renamed from: k */
    public View f14088k;

    /* renamed from: l */
    public View f14089l;

    /* renamed from: m */
    public PhotoViewPager f14090m;

    /* renamed from: n */
    public ImageView f14091n;

    /* renamed from: o */
    public C5643c f14092o;

    /* renamed from: p */
    public boolean f14093p;

    /* renamed from: s */
    public boolean f14096s;

    /* renamed from: t */
    public boolean f14097t;

    /* renamed from: v */
    public float f14099v;

    /* renamed from: w */
    public String f14100w;

    /* renamed from: x */
    public String f14101x;

    /* renamed from: y */
    public boolean f14102y;

    /* renamed from: z */
    public boolean f14103z;

    /* renamed from: i */
    public int f14086i = -1;

    /* renamed from: q */
    public final Map<Integer, AbstractC5626d.AbstractC5628b> f14094q = new HashMap();

    /* renamed from: r */
    public final Set<AbstractC5626d.AbstractC5627a> f14095r = new HashSet();

    /* renamed from: u */
    public boolean f14098u = true;

    /* renamed from: I */
    public final Handler f14075I = new Handler();

    /* renamed from: K */
    public final Runnable f14077K = new RunnableC5631b();

    /* renamed from: h.b.c.c.e$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$a.class */
    public class View$OnSystemUiVisibilityChangeListenerC5630a implements View.OnSystemUiVisibilityChangeListener {
        public View$OnSystemUiVisibilityChangeListenerC5630a() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if (Build.VERSION.SDK_INT >= 19 && i == 0 && C5629e.this.f14079b == 3846) {
                C5629e.this.m24959a(false, true);
            }
        }
    }

    /* renamed from: h.b.c.c.e$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$b.class */
    public class RunnableC5631b implements Runnable {
        public RunnableC5631b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5629e.this.m24959a(true, true);
        }
    }

    /* renamed from: h.b.c.c.e$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$c.class */
    public class RunnableC5632c implements Runnable {
        public RunnableC5632c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5629e.this.m24933o();
        }
    }

    /* renamed from: h.b.c.c.e$d  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$d.class */
    public class animationAnimation$AnimationListenerC5633d implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC5633d() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C5629e.this.m24933o();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: h.b.c.c.e$e */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$e.class */
    public class RunnableC5634e implements Runnable {
        public RunnableC5634e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5629e.this.m24932p();
        }
    }

    /* renamed from: h.b.c.c.e$f  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$f.class */
    public class animationAnimation$AnimationListenerC5635f implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC5635f() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C5629e.this.m24932p();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: h.b.c.c.e$g */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$g.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC5636g implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f14110a;

        public ViewTreeObserver$OnGlobalLayoutListenerC5636g(View view) {
            this.f14110a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f14110a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            } else {
                this.f14110a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
            C5629e.this.m24926v();
        }
    }

    /* renamed from: h.b.c.c.e$h */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$h.class */
    public static /* synthetic */ class C5637h {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14112a = new int[C5654b.EnumC5657c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f14112a[C5654b.EnumC5657c.EXTRA_SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14112a[C5654b.EnumC5657c.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14112a[C5654b.EnumC5657c.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: h.b.c.c.e$i */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$i.class */
    public interface AbstractC5638i {
        /* renamed from: A */
        AbstractC5619a mo24921A();

        View findViewById(int i);

        void finish();

        Context getApplicationContext();

        Context getContext();

        Intent getIntent();

        Resources getResources();

        FragmentManager getSupportFragmentManager();

        LoaderManager getSupportLoaderManager();

        void overridePendingTransition(int i, int i2);

        void setContentView(int i);

        /* renamed from: u */
        C5629e mo24920u();
    }

    /* renamed from: h.b.c.c.e$j */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/e$j.class */
    public class C5639j implements LoaderManager.LoaderCallbacks<AbstractC5649b.C5650a> {
        public C5639j() {
        }

        public /* synthetic */ C5639j(C5629e eVar, View$OnSystemUiVisibilityChangeListenerC5630a aVar) {
            this();
        }

        /* renamed from: a */
        public void onLoadFinished(Loader<AbstractC5649b.C5650a> loader, AbstractC5649b.C5650a aVar) {
            Drawable a = aVar.m24879a(C5629e.this.f14078a.getResources());
            AbstractC5619a A = C5629e.this.f14078a.mo24921A();
            int id = loader.getId();
            if (id != 1) {
                if (id == 2) {
                    C5629e.this.m24974a(a);
                }
            } else if (a == null) {
                A.setLogo(null);
            } else {
                A.setLogo(a);
            }
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public Loader<AbstractC5649b.C5650a> onCreateLoader(int i, Bundle bundle) {
            String string = bundle.getString("image_uri");
            if (i == 1) {
                return C5629e.this.mo24978a(1, bundle, string);
            }
            if (i != 2) {
                return null;
            }
            return C5629e.this.mo24978a(2, bundle, string);
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<AbstractC5649b.C5650a> loader) {
        }
    }

    public C5629e(AbstractC5638i iVar) {
        this.f14078a = iVar;
        if (Build.VERSION.SDK_INT < 11) {
            this.f14080c = null;
        } else {
            this.f14080c = new View$OnSystemUiVisibilityChangeListenerC5630a();
        }
        this.f14073G = (AccessibilityManager) iVar.getContext().getSystemService("accessibility");
    }

    /* renamed from: a */
    public static final String m24961a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: a */
    public final int m24980a(int i, int i2, int i3, float f) {
        float f2 = i3;
        float f3 = f * f2;
        return (i - Math.round((f2 - f3) / 2.0f)) - Math.round((f3 - i2) / 2.0f);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public Loader<AbstractC5649b.C5650a> mo24978a(int i, Bundle bundle, String str) {
        if (i == 1 || i == 2 || i == 3) {
            return new C5648a(this.f14078a.getContext(), str);
        }
        return null;
    }

    @Override // com.android.p018ex.photo.PhotoViewPager.AbstractC1564c
    /* renamed from: a */
    public PhotoViewPager.EnumC1563b mo24982a(float f, float f2) {
        boolean z = false;
        boolean z2 = false;
        for (AbstractC5626d.AbstractC5628b bVar : this.f14094q.values()) {
            boolean z3 = z;
            if (!z) {
                z3 = bVar.mo24888b(f, f2);
            }
            z = z3;
            if (!z2) {
                z2 = bVar.mo24896a(f, f2);
                z = z3;
            }
        }
        return z ? z2 ? PhotoViewPager.EnumC1563b.BOTH : PhotoViewPager.EnumC1563b.LEFT : z2 ? PhotoViewPager.EnumC1563b.RIGHT : PhotoViewPager.EnumC1563b.NONE;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public C5643c mo24983a() {
        return this.f14092o;
    }

    /* renamed from: a */
    public C5643c m24976a(Context context, FragmentManager fragmentManager, Cursor cursor, float f) {
        return new C5643c(context, fragmentManager, cursor, f, this.f14072F);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24981a(int i) {
    }

    /* renamed from: a */
    public void m24979a(int i, int i2, Intent intent) {
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24977a(int i, AbstractC5626d.AbstractC5628b bVar) {
        this.f14094q.put(Integer.valueOf(i), bVar);
    }

    /* renamed from: a */
    public final void m24975a(Cursor cursor) {
        synchronized (this) {
            for (AbstractC5626d.AbstractC5627a aVar : this.f14095r) {
                aVar.mo24887b(cursor);
            }
        }
    }

    /* renamed from: a */
    public final void m24974a(Drawable drawable) {
        if (!this.f14102y) {
            this.f14091n.setImageDrawable(drawable);
            if (drawable != null) {
                if (this.f14088k.getMeasuredWidth() == 0) {
                    View view = this.f14088k;
                    view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC5636g(view));
                } else {
                    m24926v();
                }
            }
            this.f14078a.getSupportLoaderManager().initLoader(100, null, this);
        }
    }

    /* renamed from: a */
    public void m24973a(Bundle bundle) {
        m24940h();
        f14065L = ((ActivityManager) this.f14078a.getApplicationContext().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getMemoryClass();
        Intent intent = this.f14078a.getIntent();
        if (intent.hasExtra("need_option_menu")) {
            intent.getBooleanExtra("need_option_menu", true);
        }
        if (intent.hasExtra(SmsPhotoViewActivity.f12478n)) {
            this.f14081d = intent.getStringExtra(SmsPhotoViewActivity.f12478n);
        }
        if (intent.getBooleanExtra("scale_up_animation", false)) {
            this.f14103z = true;
            this.f14067A = intent.getIntExtra("start_x_extra", 0);
            this.f14068B = intent.getIntExtra("start_y_extra", 0);
            this.f14069C = intent.getIntExtra("start_width_extra", 0);
            this.f14070D = intent.getIntExtra("start_height_extra", 0);
        }
        this.f14071E = intent.getBooleanExtra("action_bar_hidden_initially", false) && !C5661e.m24859a(this.f14073G);
        this.f14072F = intent.getBooleanExtra("display_thumbs_fullscreen", false);
        if (intent.hasExtra(SmsPhotoViewActivity.f12480p)) {
            this.f14085h = intent.getStringArrayExtra(SmsPhotoViewActivity.f12480p);
        } else {
            this.f14085h = null;
        }
        this.f14099v = intent.getFloatExtra("max_scale", 1.0f);
        this.f14084g = null;
        this.f14083f = -1;
        if (intent.hasExtra("photo_index")) {
            this.f14083f = intent.getIntExtra("photo_index", -1);
        }
        if (intent.hasExtra(SmsPhotoViewActivity.f12477m)) {
            this.f14082e = intent.getStringExtra(SmsPhotoViewActivity.f12477m);
            this.f14084g = this.f14082e;
        }
        this.f14087j = true;
        if (bundle != null) {
            this.f14082e = bundle.getString("com.android.ex.PhotoViewFragment.INITIAL_URI");
            this.f14084g = bundle.getString("com.android.ex.PhotoViewFragment.CURRENT_URI");
            this.f14083f = bundle.getInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX");
            this.f14093p = bundle.getBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", false) && !C5661e.m24859a(this.f14073G);
            this.f14100w = bundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE");
            this.f14101x = bundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE");
            this.f14102y = bundle.getBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", false);
        } else {
            this.f14093p = this.f14071E;
        }
        this.f14078a.setContentView(R$layout.photo_activity_view);
        this.f14092o = m24976a(this.f14078a.getContext(), this.f14078a.getSupportFragmentManager(), (Cursor) null, this.f14099v);
        Resources resources = this.f14078a.getResources();
        this.f14088k = m24949c(R$id.photo_activity_root_view);
        if (Build.VERSION.SDK_INT >= 11) {
            this.f14088k.setOnSystemUiVisibilityChangeListener(m24942f());
        }
        this.f14089l = m24949c(R$id.photo_activity_background);
        this.f14091n = (ImageView) m24949c(R$id.photo_activity_temporary_image);
        this.f14090m = (PhotoViewPager) m24949c(R$id.photo_view_pager);
        this.f14090m.setAdapter(this.f14092o);
        this.f14090m.setOnPageChangeListener(this);
        this.f14090m.m36669a(this);
        this.f14090m.setPageMargin(resources.getDimensionPixelSize(R$dimen.photo_page_margin));
        this.f14074H = new C5639j(this, null);
        if (!this.f14103z || this.f14102y) {
            this.f14078a.getSupportLoaderManager().initLoader(100, null, this);
            this.f14089l.setVisibility(0);
        } else {
            this.f14090m.setVisibility(8);
            Bundle bundle2 = new Bundle();
            bundle2.putString("image_uri", this.f14082e);
            this.f14078a.getSupportLoaderManager().initLoader(2, bundle2, this.f14074H);
        }
        this.f14076J = resources.getInteger(R$integer.reenter_fullscreen_delay_time_in_millis);
        AbstractC5619a A = this.f14078a.mo24921A();
        if (A != null) {
            A.mo24992a(true);
            A.mo24993a(this);
            A.mo24994a();
            m24968a(A);
            A.setBackgroundDrawable(new ColorDrawable(-16665561));
        }
        if (!this.f14103z) {
            m24951b(this.f14093p);
        } else {
            m24951b(false);
        }
    }

    /* renamed from: a */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        if (loader.getId() == 100) {
            if (cursor == null || cursor.getCount() == 0) {
                this.f14087j = true;
                this.f14092o.mo24909a((Cursor) null);
            } else {
                this.f14086i = cursor.getCount();
                if (this.f14084g != null) {
                    int columnIndex = cursor.getColumnIndex("uri");
                    Uri build = Build.VERSION.SDK_INT >= 11 ? Uri.parse(this.f14084g).buildUpon().clearQuery().build() : Uri.parse(this.f14084g).buildUpon().query(null).build();
                    cursor.moveToPosition(-1);
                    int i = 0;
                    while (true) {
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        String string = cursor.getString(columnIndex);
                        Uri build2 = Build.VERSION.SDK_INT >= 11 ? Uri.parse(string).buildUpon().clearQuery().build() : Uri.parse(string).buildUpon().query(null).build();
                        if (build != null && build.equals(build2)) {
                            this.f14083f = i;
                            break;
                        }
                        i++;
                    }
                }
                if (this.f14098u) {
                    this.f14096s = true;
                    this.f14092o.mo24909a((Cursor) null);
                    return;
                }
                boolean z = this.f14087j;
                this.f14087j = false;
                this.f14092o.mo24909a(cursor);
                if (this.f14090m.getAdapter() == null) {
                    this.f14090m.setAdapter(this.f14092o);
                }
                m24975a(cursor);
                if (this.f14083f < 0) {
                    this.f14083f = 0;
                }
                this.f14090m.setCurrentItem(this.f14083f, false);
                if (z) {
                    m24943e(this.f14083f);
                }
            }
            m24922z();
        }
    }

    /* renamed from: a */
    public final void m24968a(AbstractC5619a aVar) {
        if (aVar != null) {
            aVar.setTitle(m24961a(this.f14100w));
            aVar.setSubtitle(m24961a(this.f14101x));
        }
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24967a(AbstractC5626d.AbstractC5627a aVar) {
        synchronized (this) {
            this.f14095r.remove(aVar);
        }
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24964a(View$OnClickListenerC5644a aVar) {
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24963a(View$OnClickListenerC5644a aVar, Cursor cursor) {
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public void mo24962a(View$OnClickListenerC5644a aVar, boolean z) {
        if (this.f14091n.getVisibility() != 8 && TextUtils.equals(aVar.m24901K(), this.f14084g)) {
            if (z) {
                this.f14091n.setVisibility(8);
                this.f14090m.setVisibility(0);
            } else {
                this.f14091n.setVisibility(8);
                this.f14090m.setVisibility(0);
            }
            this.f14078a.getSupportLoaderManager().destroyLoader(2);
        }
    }

    /* renamed from: a */
    public void m24960a(boolean z) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 1;
        boolean z2 = i2 < 16;
        if (!z || (m24937k() && !m24938j())) {
            int i4 = i2 >= 19 ? BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE : i2 >= 16 ? 1280 : 0;
            i = i4;
            if (z2) {
                m24924x();
                i = i4;
            }
        } else {
            if (i2 > 19 || (i2 == 19 && !m24936l())) {
                i3 = 3846;
            } else if (i2 >= 16) {
                i3 = 1285;
            } else if (i2 < 14 && i2 < 11) {
                i3 = 0;
            }
            i = i3;
            if (z2) {
                m24941g();
                i = i3;
            }
        }
        if (i2 >= 11) {
            this.f14079b = i;
            m24944e().setSystemUiVisibility(i);
        }
    }

    /* renamed from: a */
    public void m24959a(boolean z, boolean z2) {
        if (C5661e.m24859a(this.f14073G)) {
            z = false;
            z2 = false;
        }
        boolean z3 = z != this.f14093p;
        this.f14093p = z;
        if (this.f14093p) {
            m24951b(true);
            m24950c();
        } else {
            m24951b(false);
            if (z2) {
                m24927u();
            }
        }
        if (z3) {
            for (AbstractC5626d.AbstractC5628b bVar : this.f14094q.values()) {
                bVar.mo24889a(this.f14093p);
            }
        }
    }

    /* renamed from: a */
    public boolean m24972a(Menu menu) {
        return true;
    }

    /* renamed from: a */
    public boolean m24971a(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        this.f14078a.finish();
        return true;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: a */
    public boolean mo24970a(Fragment fragment) {
        C5643c cVar;
        if (this.f14090m == null || (cVar = this.f14092o) == null || cVar.getCount() == 0) {
            return this.f14093p;
        }
        return this.f14093p || this.f14090m.getCurrentItem() != this.f14092o.getItemPosition(fragment);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: b */
    public void mo24958b() {
        m24959a(!this.f14093p, true);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: b */
    public void mo24957b(int i) {
        this.f14094q.remove(Integer.valueOf(i));
    }

    /* renamed from: b */
    public void m24956b(Bundle bundle) {
        bundle.putString("com.android.ex.PhotoViewFragment.INITIAL_URI", this.f14082e);
        bundle.putString("com.android.ex.PhotoViewFragment.CURRENT_URI", this.f14084g);
        bundle.putInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX", this.f14083f);
        bundle.putBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", this.f14093p);
        bundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE", this.f14100w);
        bundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE", this.f14101x);
        bundle.putBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", this.f14102y);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: b */
    public void mo24953b(AbstractC5626d.AbstractC5627a aVar) {
        synchronized (this) {
            this.f14095r.add(aVar);
        }
    }

    /* renamed from: b */
    public void m24951b(boolean z) {
        m24960a(z);
    }

    /* renamed from: b */
    public boolean m24955b(Menu menu) {
        return true;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5626d
    /* renamed from: b */
    public boolean mo24954b(Fragment fragment) {
        PhotoViewPager photoViewPager = this.f14090m;
        boolean z = false;
        if (photoViewPager != null) {
            if (this.f14092o == null) {
                z = false;
            } else {
                z = false;
                if (photoViewPager.getCurrentItem() == this.f14092o.getItemPosition(fragment)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public View m24949c(int i) {
        return this.f14078a.findViewById(i);
    }

    /* renamed from: c */
    public final void m24950c() {
        this.f14075I.removeCallbacks(this.f14077K);
    }

    /* renamed from: d */
    public Cursor m24947d() {
        PhotoViewPager photoViewPager = this.f14090m;
        if (photoViewPager == null) {
            return null;
        }
        int currentItem = photoViewPager.getCurrentItem();
        Cursor a = this.f14092o.m24918a();
        if (a == null) {
            return null;
        }
        a.moveToPosition(currentItem);
        return a;
    }

    /* renamed from: d */
    public String m24946d(int i) {
        String str = this.f14100w;
        if (this.f14101x != null) {
            str = this.f14078a.getContext().getResources().getString(R$string.titles, this.f14100w, this.f14101x);
        }
        return str;
    }

    /* renamed from: e */
    public View m24944e() {
        return this.f14088k;
    }

    /* renamed from: e */
    public void m24943e(int i) {
        String d;
        AbstractC5626d.AbstractC5628b bVar = this.f14094q.get(Integer.valueOf(i));
        if (bVar != null) {
            bVar.mo24884o();
        }
        Cursor d2 = m24947d();
        this.f14083f = i;
        this.f14084g = d2.getString(d2.getColumnIndex("uri"));
        m24923y();
        if (this.f14073G.isEnabled() && (d = m24946d(i)) != null) {
            C5661e.m24860a(this.f14088k, this.f14073G, d);
        }
        m24950c();
        m24927u();
    }

    /* renamed from: f */
    public View.OnSystemUiVisibilityChangeListener m24942f() {
        return this.f14080c;
    }

    /* renamed from: g */
    public void m24941g() {
        this.f14078a.mo24921A().mo24991b();
    }

    /* renamed from: h */
    public final void m24940h() {
        if (f14066N == 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) this.f14078a.getContext().getSystemService("window");
            C5654b.EnumC5657c cVar = C5654b.f14157b;
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            if (C5637h.f14112a[cVar.ordinal()] != 1) {
                f14066N = Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels);
            } else {
                f14066N = (Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels) * 800) / 1000;
            }
        }
    }

    /* renamed from: i */
    public final boolean m24939i() {
        return this.f14097t;
    }

    /* renamed from: j */
    public boolean m24938j() {
        return this.f14102y;
    }

    /* renamed from: k */
    public boolean m24937k() {
        return this.f14103z;
    }

    /* renamed from: l */
    public final boolean m24936l() {
        if (Build.VERSION.SDK_INT == 19) {
            return Process.myUid() > 100000;
        }
        throw new IllegalStateException("kitkatIsSecondary user is only callable on KitKat");
    }

    /* renamed from: m */
    public boolean m24935m() {
        if (this.f14093p && !this.f14071E) {
            mo24958b();
            return true;
        } else if (!this.f14103z) {
            return false;
        } else {
            m24925w();
            return true;
        }
    }

    /* renamed from: n */
    public void m24934n() {
        this.f14097t = true;
    }

    /* renamed from: o */
    public void m24933o() {
        this.f14102y = true;
        this.f14090m.setVisibility(0);
        m24951b(this.f14093p);
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        if (i == 100) {
            return new C5651c(this.f14078a.getContext(), Uri.parse(this.f14081d), this.f14085h);
        }
        return null;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        if (!m24939i()) {
            this.f14092o.mo24909a((Cursor) null);
        }
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a.AbstractC5620a
    public void onMenuVisibilityChanged(boolean z) {
        if (z) {
            m24950c();
        } else {
            m24927u();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (f < 1.0E-4d) {
            AbstractC5626d.AbstractC5628b bVar = this.f14094q.get(Integer.valueOf(i - 1));
            if (bVar != null) {
                bVar.mo24903H();
            }
            AbstractC5626d.AbstractC5628b bVar2 = this.f14094q.get(Integer.valueOf(i + 1));
            if (bVar2 != null) {
                bVar2.mo24903H();
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.f14083f = i;
        m24943e(i);
    }

    /* renamed from: p */
    public final void m24932p() {
        this.f14078a.finish();
        this.f14078a.overridePendingTransition(0, 0);
    }

    /* renamed from: q */
    public void m24931q() {
        this.f14098u = true;
    }

    /* renamed from: r */
    public void m24930r() {
        m24959a(this.f14093p, false);
        this.f14098u = false;
        if (this.f14096s) {
            this.f14096s = false;
            this.f14078a.getSupportLoaderManager().initLoader(100, null, this);
        }
    }

    /* renamed from: s */
    public void m24929s() {
    }

    /* renamed from: t */
    public void m24928t() {
    }

    /* renamed from: u */
    public final void m24927u() {
        this.f14075I.postDelayed(this.f14077K, this.f14076J);
    }

    /* renamed from: v */
    public final void m24926v() {
        int measuredWidth = this.f14088k.getMeasuredWidth();
        int measuredHeight = this.f14088k.getMeasuredHeight();
        this.f14091n.setVisibility(0);
        float max = Math.max(this.f14069C / measuredWidth, this.f14070D / measuredHeight);
        int a = m24980a(this.f14067A, this.f14069C, measuredWidth, max);
        int a2 = m24980a(this.f14068B, this.f14070D, measuredHeight, max);
        int i = Build.VERSION.SDK_INT;
        if (i >= 14) {
            this.f14089l.setAlpha(0.0f);
            this.f14089l.animate().alpha(1.0f).setDuration(250L).start();
            this.f14089l.setVisibility(0);
            this.f14091n.setScaleX(max);
            this.f14091n.setScaleY(max);
            this.f14091n.setTranslationX(a);
            this.f14091n.setTranslationY(a2);
            RunnableC5632c cVar = new RunnableC5632c();
            ViewPropertyAnimator duration = this.f14091n.animate().scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setDuration(250L);
            if (i >= 16) {
                duration.withEndAction(cVar);
            } else {
                this.f14075I.postDelayed(cVar, 250L);
            }
            duration.start();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(250L);
        this.f14089l.startAnimation(alphaAnimation);
        this.f14089l.setVisibility(0);
        TranslateAnimation translateAnimation = new TranslateAnimation(a, a2, 0.0f, 0.0f);
        translateAnimation.setDuration(250L);
        ScaleAnimation scaleAnimation = new ScaleAnimation(max, max, 0.0f, 0.0f);
        scaleAnimation.setDuration(250L);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(scaleAnimation);
        animationSet.setAnimationListener(new animationAnimation$AnimationListenerC5633d());
        this.f14091n.startAnimation(animationSet);
    }

    /* renamed from: w */
    public final void m24925w() {
        this.f14078a.getIntent();
        int measuredWidth = this.f14088k.getMeasuredWidth();
        int measuredHeight = this.f14088k.getMeasuredHeight();
        float max = Math.max(this.f14069C / measuredWidth, this.f14070D / measuredHeight);
        int a = m24980a(this.f14067A, this.f14069C, measuredWidth, max);
        int a2 = m24980a(this.f14068B, this.f14070D, measuredHeight, max);
        int i = Build.VERSION.SDK_INT;
        if (i >= 14) {
            this.f14089l.animate().alpha(0.0f).setDuration(250L).start();
            this.f14089l.setVisibility(0);
            RunnableC5634e eVar = new RunnableC5634e();
            ViewPropertyAnimator duration = this.f14091n.getVisibility() == 0 ? this.f14091n.animate().scaleX(max).scaleY(max).translationX(a).translationY(a2).setDuration(250L) : this.f14090m.animate().scaleX(max).scaleY(max).translationX(a).translationY(a2).setDuration(250L);
            if (!this.f14082e.equals(this.f14084g)) {
                duration.alpha(0.0f);
            }
            if (i >= 16) {
                duration.withEndAction(eVar);
            } else {
                this.f14075I.postDelayed(eVar, 250L);
            }
            duration.start();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(250L);
        this.f14089l.startAnimation(alphaAnimation);
        this.f14089l.setVisibility(0);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, max, max);
        scaleAnimation.setDuration(250L);
        scaleAnimation.setAnimationListener(new animationAnimation$AnimationListenerC5635f());
        if (this.f14091n.getVisibility() == 0) {
            this.f14091n.startAnimation(scaleAnimation);
        } else {
            this.f14090m.startAnimation(scaleAnimation);
        }
    }

    /* renamed from: x */
    public void m24924x() {
        this.f14078a.mo24921A().show();
    }

    /* renamed from: y */
    public void m24923y() {
        int currentItem = this.f14090m.getCurrentItem() + 1;
        boolean z = this.f14086i >= 0;
        Cursor d = m24947d();
        if (d != null) {
            this.f14100w = d.getString(d.getColumnIndex("_display_name"));
        } else {
            this.f14100w = null;
        }
        if (this.f14087j || !z || currentItem <= 0) {
            this.f14101x = null;
        } else {
            this.f14101x = this.f14078a.getResources().getString(R$string.photo_view_count, Integer.valueOf(currentItem), Integer.valueOf(this.f14086i));
        }
        m24968a(this.f14078a.mo24921A());
    }

    /* renamed from: z */
    public void m24922z() {
    }
}
