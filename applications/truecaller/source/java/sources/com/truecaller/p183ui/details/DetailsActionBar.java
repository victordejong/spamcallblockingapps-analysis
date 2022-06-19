package com.truecaller.p183ui.details;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.p183ui.details.DetailsActionBar;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p682e.p698c.C13107l0;
import p193e.p194a.p682e.p698c.C13132r1;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
/* renamed from: com.truecaller.ui.details.DetailsActionBar */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/details/DetailsActionBar.class */
public class DetailsActionBar extends LinearLayout implements View.OnClickListener {

    /* renamed from: a */
    public final View f15803a;

    /* renamed from: b */
    public final View f15804b;

    /* renamed from: d */
    public final LayoutInflater f15806d;

    /* renamed from: e */
    public AbstractC4687b f15807e;

    /* renamed from: f */
    public C13132r1 f15808f;

    /* renamed from: h */
    public final AbstractC17197v0 f15810h;

    /* renamed from: i */
    public final AbstractC21631b f15811i;

    /* renamed from: j */
    public final AbstractC11476s1 f15812j;

    /* renamed from: l */
    public boolean f15814l;

    /* renamed from: m */
    public boolean f15815m;

    /* renamed from: n */
    public Map<Integer, Integer> f15816n;

    /* renamed from: o */
    public boolean f15817o;

    /* renamed from: p */
    public boolean f15818p;

    /* renamed from: q */
    public AbstractC4686a f15819q;

    /* renamed from: c */
    public final List<Integer> f15805c = new ArrayList();

    /* renamed from: k */
    public Runnable f15813k = null;

    /* renamed from: g */
    public final int f15809g = C19291g.m13612L(getContext(), C2752R.attr.theme_spamColor);

    /* renamed from: com.truecaller.ui.details.DetailsActionBar$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/details/DetailsActionBar$a.class */
    public interface AbstractC4686a {
    }

    /* renamed from: com.truecaller.ui.details.DetailsActionBar$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/details/DetailsActionBar$b.class */
    public interface AbstractC4687b {
    }

    public DetailsActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        LayoutInflater from = LayoutInflater.from(context);
        this.f15806d = from;
        from.inflate(C2752R.layout.view_details_action_buttons, this);
        View findViewById = findViewById(C2752R.C2754id.contact_request_button);
        this.f15803a = findViewById;
        View findViewById2 = findViewById(C2752R.C2754id.get_premium_button);
        this.f15804b = findViewById2;
        findViewById.setOnClickListener(this);
        findViewById2.setOnClickListener(this);
        this.f15810h = mo10154s.mo11643f();
        this.f15811i = mo10154s.mo12805A3();
        this.f15812j = mo10154s.mo12679J6();
    }

    /* renamed from: a */
    public final TextView m34517a(int i, int i2, int i3) {
        return m34516b(i, i2, this.f15808f.f38081a, i3, m34514d());
    }

    /* renamed from: b */
    public final TextView m34516b(int i, int i2, int i3, int i4, boolean z) {
        GoldShineTextView goldShineTextView = (GoldShineTextView) this.f15806d.inflate(C2752R.layout.view_details_action_button, (ViewGroup) this, false);
        goldShineTextView.setOnClickListener(this);
        goldShineTextView.setTag(Integer.valueOf(i4));
        goldShineTextView.setText(i);
        if (!z) {
            goldShineTextView.setTextColor(i3);
        } else {
            goldShineTextView.m35618l();
        }
        Context context = getContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i2);
        if (m1789b != null) {
            Drawable mutate = m1789b.mutate();
            if (!z) {
                mutate.setColorFilter(i3, PorterDuff.Mode.SRC_IN);
            }
            goldShineTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, mutate, (Drawable) null, (Drawable) null);
        }
        return goldShineTextView;
    }

    /* renamed from: c */
    public void m34515c(int i) {
        int indexOf = this.f15805c.indexOf(Integer.valueOf(i));
        if (indexOf != -1) {
            this.f15805c.remove(indexOf);
            removeViewAt(indexOf);
        }
        View findViewWithTag = findViewWithTag(Integer.valueOf(i));
        if (findViewWithTag != null) {
            removeView(findViewWithTag);
        }
    }

    /* renamed from: d */
    public final boolean m34514d() {
        boolean z;
        if (!this.f15817o) {
            C15314a c15314a = C15314a.f43582g;
            if ((C15314a.m18938a() instanceof AbstractC15317d.C15319b) && this.f15814l && !this.f15815m) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: e */
    public final void m34513e(final List<Integer> list, final boolean z) {
        TextView textView;
        AbstractC4686a abstractC4686a = this.f15819q;
        if (abstractC4686a != null && ((C13107l0) abstractC4686a).f38037a.f38176k.m22099c().mo13454b()) {
            this.f15813k = new Runnable() { // from class: e.a.e.c.j
                @Override // java.lang.Runnable
                public final void run() {
                    DetailsActionBar.this.m34513e(list, z);
                }
            };
        } else if (z || !this.f15805c.containsAll(list) || !list.containsAll(this.f15805c)) {
            removeAllViews();
            this.f15805c.clear();
            for (int i = 0; i < list.size(); i++) {
                int intValue = list.get(i).intValue();
                boolean m34514d = m34514d();
                if (intValue == 0) {
                    textView = m34517a(C2752R.string.CallerCall, m34514d ? 2131232402 : this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                } else if (intValue == 1) {
                    textView = m34517a(C2752R.string.context_sms, m34514d ? 2131232418 : this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                } else if (intValue == 2) {
                    textView = m34517a(2131888942, m34514d ? 2131232413 : this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                } else if (intValue == 4) {
                    textView = m34517a(C2752R.string.AfterCallBlock, m34514d ? 2131232399 : this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                } else if (intValue == 5) {
                    textView = m34516b(C2752R.string.AfterCallUnblock, this.f15816n.get(Integer.valueOf(intValue)).intValue(), this.f15809g, intValue, m34514d);
                } else if (intValue == 6) {
                    textView = m34517a(C2752R.string.AfterCallNotSpam, this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                } else if (intValue != 11) {
                    throw new IllegalStateException(C22128a.m8611i2("Unsupported button ", intValue));
                } else {
                    textView = m34517a(C2752R.string.VoipCall, m34514d ? 2131232428 : this.f15816n.get(Integer.valueOf(intValue)).intValue(), intValue);
                }
                TextView textView2 = textView;
                textView2.setTag(Integer.valueOf(intValue));
                this.f15805c.add(Integer.valueOf(intValue));
                addView(textView2, i);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f15807e == null) {
            return;
        }
        int id = view.getId();
        if (id == 2131362920) {
            ((View$OnClickListenerC13135s1) this.f15807e).m22016tB(8);
        } else if (id == 2131363990) {
            ((View$OnClickListenerC13135s1) this.f15807e).m22016tB(7);
        } else {
            ((View$OnClickListenerC13135s1) this.f15807e).m22016tB(((Integer) view.getTag()).intValue());
        }
    }

    public void setDetailsActionbarCallback(AbstractC4686a abstractC4686a) {
        this.f15819q = abstractC4686a;
    }

    public void setEventListener(AbstractC4687b abstractC4687b) {
        this.f15807e = abstractC4687b;
    }
}
