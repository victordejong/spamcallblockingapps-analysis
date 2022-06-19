package com.truecaller.search.global;

import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.truecaller.C2752R;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.components.EditBase;
import com.truecaller.search.global.CompositeAdapterDelegate;
import com.truecaller.search.global.GlobalSearchResultActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19023f1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1342w4.p1344s.AbstractC21242e0;
import p193e.p194a.p1342w4.p1344s.AbstractC21286s0;
import p193e.p194a.p1342w4.p1344s.C21224a0;
import p193e.p194a.p1342w4.p1344s.C21228b0;
import p193e.p194a.p1342w4.p1344s.C21240d0;
import p193e.p194a.p1342w4.p1344s.C21256i0;
import p193e.p194a.p1342w4.p1344s.C21258j0;
import p193e.p194a.p1342w4.p1344s.C21275p;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p682e.AbstractC13325w0;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import w3.c.a.a.a.h;
/* loaded from: classes13-dex2jar.jar:com/truecaller/search/global/GlobalSearchResultActivity.class */
public class GlobalSearchResultActivity extends AbstractC13325w0 implements AbstractC21286s0 {

    /* renamed from: d */
    public C21228b0 f14645d;
    @Inject

    /* renamed from: e */
    public AbstractC21242e0 f14646e;

    /* renamed from: f */
    public Toolbar f14647f;

    /* renamed from: g */
    public Toolbar f14648g;

    /* renamed from: h */
    public View f14649h;

    /* renamed from: i */
    public TextView f14650i;

    /* renamed from: j */
    public TextView f14651j;

    /* renamed from: k */
    public EditBase f14652k;

    /* renamed from: l */
    public View f14653l;

    /* renamed from: m */
    public View f14654m;

    /* renamed from: n */
    public EditText f14655n;

    /* renamed from: o */
    public TextView f14656o;

    /* renamed from: p */
    public View f14657p;

    /* renamed from: q */
    public View f14658q;

    /* renamed from: r */
    public View f14659r;

    /* renamed from: s */
    public View f14660s;

    /* renamed from: t */
    public Runnable f14661t;

    /* renamed from: u */
    public boolean f14662u = true;

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: E8 */
    public void mo9993E8() {
        if (this.f14661t == null) {
            this.f14661t = new Runnable() { // from class: e.a.w4.s.l
                /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.search.global.GlobalSearchResultActivity] */
                @Override // java.lang.Runnable
                public final void run() {
                    ?? r0 = GlobalSearchResultActivity.this;
                    if (!(r0.f14652k.getVisibility() == 0) || !h.j(r0.f14652k.getText())) {
                        return;
                    }
                    View inflate = View.inflate(r0, C2752R.layout.scanner_tooltip_layout, null);
                    ((TextView) inflate.findViewById(2131366265)).setText(C2752R.string.scanner_Tooltip);
                    PopupWindow popupWindow = new PopupWindow(inflate, -1, -2, true);
                    popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                    popupWindow.setOutsideTouchable(false);
                    popupWindow.setOverlapAnchor(false);
                    popupWindow.showAsDropDown(r0.f14652k, 0, 0, 0);
                    r0.f14646e.mo10062bj();
                }
            };
        }
        this.f14652k.post(this.f14661t);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: L9 */
    public void mo9992L9(String str) {
        this.f14652k.setText(str);
        EditBase editBase = this.f14652k;
        editBase.setSelection(editBase.getText().length());
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: R5 */
    public void mo9991R5() {
        C19023f1 m14250a = C19023f1.m14250a(this.f14653l, "alpha", 1.0f, 0.2f, 1.0f);
        m14250a.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
        m14250a.f53147a.setStartDelay(300L);
        m14250a.f53147a.setDuration(1000L);
        m14250a.f53147a.setRepeatCount(3);
        m14250a.f53147a.start();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: V4 */
    public void mo9990V4(String str) {
        this.f14656o.setText(str);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: W4 */
    public void mo9989W4(boolean z) {
        this.f14658q.setVisibility(z ? 0 : 8);
        this.f14657p.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: X4 */
    public void mo9988X4(CharSequence charSequence) {
        this.f14650i.setText(charSequence);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: Y4 */
    public void mo9987Y4(boolean z) {
        this.f14653l.setSelected(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: a5 */
    public void mo9986a5() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, C2752R.anim.slide_left_with_fade_out);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this, C2752R.anim.slide_right_with_fade_out);
        Animation loadAnimation3 = AnimationUtils.loadAnimation(this, C2752R.anim.slide_down_with_fade_out);
        boolean m28437a = C8502h.m28437a();
        this.f14653l.startAnimation(m28437a ? loadAnimation : loadAnimation2);
        if (this.f14662u) {
            this.f14654m.startAnimation(m28437a ? loadAnimation : loadAnimation2);
        }
        View view = this.f14659r;
        if (m28437a) {
            loadAnimation = loadAnimation2;
        }
        view.startAnimation(loadAnimation);
        this.f14660s.startAnimation(loadAnimation3);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: e0 */
    public void mo9985e0() {
        C19286f.m13681W(this.f14652k, false);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: e5 */
    public void mo9984e5(boolean z) {
        this.f14662u = z;
        C19045j0.m14194v(this.f14654m, z, true);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: g5 */
    public boolean mo9983g5() {
        return this.f14652k.getVisibility() == 0;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: g7 */
    public void mo9982g7(boolean z) {
        if (z) {
            m34778ua(this.f14647f);
        }
        this.f14649h.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: ka */
    public void mo9981ka() {
        c.Ca(this, WizardActivity.class, "globalSearch", WizardStartContext.GLOBAL_SEARCH);
        mo9985e0();
        finish();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: l7 */
    public void mo9980l7(boolean z) {
        if (z) {
            m34778ua(this.f14648g);
        }
        this.f14648g.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onBackPressed() {
        C21228b0 c21228b0 = this.f14645d;
        if (c21228b0 != null) {
            c21228b0.f59454a.onBackPressed();
            return;
        }
        mo9986a5();
        super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C15571h.m18652D(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_global_search);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C21240d0 c21240d0 = new C21240d0(3, (CompositeAdapterDelegate.SearchResultOrder) getIntent().getSerializableExtra("ARG_RESULT_ORDER"), this, mo10154s.mo12659L0().m10906a());
        C25225a.m3846s(c21240d0, C21240d0.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f14646e = (AbstractC21242e0) new C21224a0(c21240d0, mo10154s, null).f59448u.get();
        this.f14647f = (Toolbar) findViewById((int) C2752R.C2754id.search_toolbar);
        this.f14649h = findViewById(2131365596);
        this.f14648g = (Toolbar) findViewById((int) C2752R.C2754id.more_search_result_toolbar);
        this.f14650i = (TextView) findViewById(2131366502);
        this.f14651j = (TextView) findViewById((int) C2752R.C2754id.subtitle_text);
        this.f14657p = findViewById((int) C2752R.C2754id.sectionSearchAddress);
        this.f14658q = findViewById((int) C2752R.C2754id.dividerSearchAddress);
        this.f14652k = (EditBase) findViewById((int) C2752R.C2754id.search_field);
        this.f14653l = findViewById((int) C2752R.C2754id.button_location);
        this.f14654m = findViewById((int) C2752R.C2754id.button_scanner);
        this.f14655n = (EditText) findViewById((int) C2752R.C2754id.addressEdit);
        this.f14656o = (TextView) findViewById((int) C2752R.C2754id.searchCountryText);
        this.f14659r = findViewById((int) C2752R.C2754id.button_back);
        this.f14660s = findViewById((int) C2752R.C2754id.content_frame);
        this.f14659r.setOnClickListener(new View.OnClickListener() { // from class: e.a.w4.s.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalSearchResultActivity.this.f14646e.onBackPressed();
            }
        });
        this.f14656o.setOnClickListener(new View.OnClickListener() { // from class: e.a.w4.s.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalSearchResultActivity.this.f14646e.mo10085O0();
            }
        });
        C19045j0.m14193w(this.f14656o, 2130970334);
        this.f14653l.setOnClickListener(new View.OnClickListener() { // from class: e.a.w4.s.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalSearchResultActivity.this.f14646e.mo10076T1();
            }
        });
        ImageView imageView = (ImageView) this.f14653l;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            imageView.setImageDrawable(mutate);
            mutate.setTintList(C19291g.m13609M(this, C2752R.attr.globalSearchLocationIconColorState));
            mutate.invalidateSelf();
        }
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: e.a.w4.s.n
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z;
                GlobalSearchResultActivity globalSearchResultActivity = GlobalSearchResultActivity.this;
                Objects.requireNonNull(globalSearchResultActivity);
                if (i == 3) {
                    globalSearchResultActivity.f14646e.mo10079Rf();
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }
        };
        this.f14654m.setOnClickListener(new View.OnClickListener() { // from class: e.a.w4.s.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalSearchResultActivity.this.f14646e.mo10059jg();
            }
        });
        this.f14655n.setOnEditorActionListener(onEditorActionListener);
        this.f14652k.setClearIconListener(new C21275p(this));
        this.f14652k.setOnEditorActionListener(onEditorActionListener);
        this.f14652k.addTextChangedListener(new C21256i0(this));
        this.f14655n.addTextChangedListener(new C21258j0(this));
        Animation loadAnimation = AnimationUtils.loadAnimation(this, 2130772033);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this, 2130772038);
        Animation loadAnimation3 = AnimationUtils.loadAnimation(this, C2752R.anim.slide_up_with_fade);
        boolean m28437a = C8502h.m28437a();
        this.f14653l.startAnimation(m28437a ? loadAnimation2 : loadAnimation);
        if (this.f14662u) {
            this.f14654m.startAnimation(m28437a ? loadAnimation2 : loadAnimation);
        }
        View view = this.f14659r;
        if (!m28437a) {
            loadAnimation = loadAnimation2;
        }
        view.startAnimation(loadAnimation);
        this.f14660s.startAnimation(loadAnimation3);
        this.f14646e.mo10055qb(this);
        m34778ua(this.f14647f);
        if (bundle != null) {
            C21228b0 m42942K = getSupportFragmentManager().m42942K("SEARCH_RESULT_TAG");
            this.f14645d = m42942K;
            m42942K.f59454a = this.f14646e;
            return;
        }
        C21228b0 c21228b0 = new C21228b0();
        this.f14645d = c21228b0;
        c21228b0.f59454a = this.f14646e;
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(C2752R.C2754id.content_frame, this.f14645d, "SEARCH_RESULT_TAG");
        c26907a.mo1127f();
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onDestroy() {
        super.onDestroy();
        this.f14646e.mo10066Y1();
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onStop() {
        super.onStop();
        Runnable runnable = this.f14661t;
        if (runnable != null) {
            this.f14652k.removeCallbacks(runnable);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: p0 */
    public void mo9979p0() {
        C19286f.m13680X(this.f14652k, true, 500L);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: r7 */
    public void mo9978r7(CharSequence charSequence) {
        this.f14651j.setText(charSequence);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21286s0
    /* renamed from: t7 */
    public boolean mo9977t7() {
        return this.f14653l.isSelected();
    }

    /* renamed from: ua */
    public final void m34778ua(Toolbar toolbar) {
        setSupportActionBar(toolbar);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3551p(false);
        }
    }
}
