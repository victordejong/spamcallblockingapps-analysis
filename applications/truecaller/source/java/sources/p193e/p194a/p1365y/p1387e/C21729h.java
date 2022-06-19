package p193e.p194a.p1365y.p1387e;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.viewpager.widget.ViewPager;
import com.truecaller.flashsdk.C3909R;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1387e.C21737k;
/* renamed from: e.a.y.e.h */
/* loaded from: classes9-dex2jar.jar:e/a/y/e/h.class */
public class C21729h extends PopupWindow implements AbstractC21740m, ViewPager.AbstractC0396i, AbstractC21728g {

    /* renamed from: a */
    public final View f60528a;

    /* renamed from: b */
    public final Context f60529b;

    /* renamed from: c */
    public AbstractC21629z<C21733i> f60530c;

    /* renamed from: d */
    public C21737k.AbstractC21738a f60531d;

    /* renamed from: e */
    public AbstractC21732c f60532e;

    /* renamed from: f */
    public int f60533f;

    /* renamed from: g */
    public View[] f60534g;

    /* renamed from: h */
    public long f60535h;

    /* renamed from: i */
    public boolean f60536i = false;

    /* renamed from: j */
    public boolean f60537j = false;

    /* renamed from: k */
    public int f60538k = -1;

    /* renamed from: l */
    public boolean f60539l = true;

    /* renamed from: e.a.y.e.h$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/e/h$b.class */
    public class C21731b extends AbstractC26640a {

        /* renamed from: c */
        public final List<C21737k> f60540c;

        public C21731b(C21729h c21729h, List list, C21730a c21730a) {
            this.f60540c = list;
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: a */
        public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: c */
        public int mo1537c() {
            return this.f60540c.size();
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: f */
        public Object mo1534f(ViewGroup viewGroup, int i) {
            View view = this.f60540c.get(i).f60546a;
            viewGroup.addView(view, 0);
            return view;
        }

        @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
        /* renamed from: g */
        public boolean mo1148g(View view, Object obj) {
            return obj == view;
        }
    }

    /* renamed from: e.a.y.e.h$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/e/h$c.class */
    public interface AbstractC21732c {
        /* renamed from: M7 */
        void mo9146M7();

        /* renamed from: w5 */
        void mo9145w5(int i);
    }

    public C21729h(Context context, View view, C21737k.AbstractC21738a abstractC21738a, AbstractC21629z<C21733i> abstractC21629z, long j) {
        super(context);
        this.f60535h = 0L;
        this.f60528a = view;
        this.f60529b = context;
        this.f60530c = abstractC21629z;
        this.f60531d = abstractC21738a;
        this.f60535h = j;
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C3909R.layout.layout_emoji_keyboard, (ViewGroup) null, false);
        final ViewPager viewPager = (ViewPager) inflate.findViewById(C3909R.C3911id.pager);
        viewPager.m42656b(this);
        viewPager.setAdapter(new C21731b(this, Arrays.asList(new C21739l(context, null, null, this.f60531d, this.f60530c, this.f60535h), new C21737k(context, C21741n.f60551c, this, this.f60531d, this.f60530c, this.f60535h), new C21737k(context, C21741n.f60549a, this, this.f60531d, this.f60530c, this.f60535h), new C21737k(context, C21741n.f60550b, this, this.f60531d, this.f60530c, this.f60535h), new C21737k(context, C21741n.f60552d, this, this.f60531d, this.f60530c, this.f60535h), new C21737k(context, C21741n.f60553e, this, this.f60531d, this.f60530c, this.f60535h)), null));
        View[] viewArr = new View[6];
        this.f60534g = viewArr;
        viewArr[0] = inflate.findViewById(C3909R.C3911id.tab_recents);
        this.f60534g[1] = inflate.findViewById(C3909R.C3911id.tab_people);
        this.f60534g[2] = inflate.findViewById(C3909R.C3911id.tab_nature);
        this.f60534g[3] = inflate.findViewById(C3909R.C3911id.tab_objects);
        this.f60534g[4] = inflate.findViewById(C3909R.C3911id.tab_cars);
        this.f60534g[5] = inflate.findViewById(C3909R.C3911id.tab_punctuation);
        int i = 0;
        while (true) {
            View[] viewArr2 = this.f60534g;
            if (i >= viewArr2.length) {
                break;
            }
            final int i2 = i;
            viewArr2[i].setOnClickListener(new View.OnClickListener() { // from class: e.a.y.e.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ViewPager.this.setCurrentItem(i2);
                }
            });
            i++;
        }
        inflate.findViewById(C3909R.C3911id.backspace).setOnClickListener(new View.OnClickListener() { // from class: e.a.y.e.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Objects.requireNonNull(C21729h.this);
            }
        });
        int mo9333c = this.f60530c.mo9333c();
        if (mo9333c == 0) {
            mo7748g(0);
        } else {
            viewPager.m42635w(mo9333c, false);
        }
        setContentView(inflate);
        setSoftInputMode(5);
        setWidth(-1);
        setHeight((int) context.getResources().getDimension(C3909R.dimen.keyboard_height));
        setBackgroundDrawable(new ColorDrawable(-1));
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: a */
    public void mo7749a(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21728g
    /* renamed from: c */
    public void mo9150c() {
        this.f60532e = null;
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21740m
    /* renamed from: d */
    public void mo9140d(Context context, C21733i c21733i, long j) {
        this.f60530c.push(c21733i);
        this.f60530c.mo9332d(j);
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21728g
    /* renamed from: e */
    public void mo9149e() {
        if (this.f60539l) {
            showAtLocation(this.f60528a, 80, 0, -this.f60533f);
        } else {
            showAtLocation(this.f60528a, 80, 0, 0);
        }
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21728g
    /* renamed from: f */
    public void mo9148f() {
        if (mo9147h().booleanValue()) {
            mo9149e();
        } else {
            this.f60537j = true;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: g */
    public void mo7748g(int i) {
        int i2 = this.f60538k;
        if (i2 == i) {
            return;
        }
        if (i2 >= 0) {
            View[] viewArr = this.f60534g;
            if (i2 < viewArr.length) {
                viewArr[i2].setSelected(false);
            }
        }
        this.f60534g[i].setSelected(true);
        this.f60538k = i;
        this.f60530c.mo9335a(i);
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21728g
    /* renamed from: h */
    public Boolean mo9147h() {
        return Boolean.valueOf(this.f60536i);
    }
}
