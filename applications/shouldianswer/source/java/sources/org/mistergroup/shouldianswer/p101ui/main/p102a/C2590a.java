package org.mistergroup.shouldianswer.p101ui.main.p102a;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.C0651f;
import androidx.fragment.app.ActivityC0711c;
import androidx.lifecycle.AbstractC0911q;
import androidx.recyclerview.widget.C1011g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.components.p099a.C2314e;
import org.mistergroup.shouldianswer.components.p099a.C2321g;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2257s;
import org.mistergroup.shouldianswer.p101ui.dialpad.DialpadFragment;
import org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d;
import org.mistergroup.shouldianswer.p101ui.main.C2589a;
import org.mistergroup.shouldianswer.p101ui.main.MainActivity;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3134x;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.ui.main.a.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a.class */
public final class C2590a extends AbstractC2709d {

    /* renamed from: a */
    private AbstractC2257s f7610a;

    /* renamed from: b */
    private C2589a f7611b;

    /* renamed from: c */
    private C2314e f7612c;

    /* renamed from: d */
    private LinearLayoutManager f7613d;

    /* renamed from: f */
    private int f7615f;

    /* renamed from: e */
    private boolean f7614e = true;

    /* renamed from: g */
    private final ArrayList<AppCompatTextView> f7616g = new ArrayList<>();

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$a.class */
    public enum EnumC2591a {
        COPY_NUMBER,
        CALL_NUMBER,
        SMS,
        CONTACT_DETAILS,
        CONTACT_TO_DIAL
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$b.class */
    public static final class C2592b implements Observer {
        C2592b() {
            C2590a.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C2590a.this.m730d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$c.class */
    public static final class C2593c extends AbstractC1695i implements AbstractC1663b<C2302a, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2593c() {
            super(1);
            C2590a.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2302a c2302a) {
            m726a(c2302a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m726a(C2302a c2302a) {
            C1694h.m3117b(c2302a, "contactItem");
            C2385ac m1658f = c2302a.m1658f();
            if (m1658f != null) {
                ActivityC0711c activity = C2590a.this.getActivity();
                if (activity == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) activity, "activity!!");
                m1658f.m1366a(activity);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$d.class */
    public static final class C2594d extends AbstractC1695i implements AbstractC1674m<ContextMenu, C2302a, C1775o> {

        /* renamed from: a */
        final /* synthetic */ C2589a f7625a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2594d(C2589a c2589a) {
            super(2);
            this.f7625a = c2589a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo44a(ContextMenu contextMenu, C2302a c2302a) {
            m725a(contextMenu, c2302a);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m725a(ContextMenu contextMenu, C2302a c2302a) {
            C1694h.m3117b(contextMenu, "menu");
            C1694h.m3117b(c2302a, "item");
            this.f7625a.m747a(c2302a);
            C2385ac m1658f = c2302a.m1658f();
            if (m1658f == null) {
                C1694h.m3124a();
            }
            contextMenu.setHeaderTitle(m1658f.m1360b());
            contextMenu.add(0, EnumC2591a.COPY_NUMBER.ordinal(), 0, 2131755254);
            contextMenu.add(0, EnumC2591a.CALL_NUMBER.ordinal(), 0, 2131755252);
            contextMenu.add(0, EnumC2591a.SMS.ordinal(), 0, 2131755258);
            contextMenu.add(0, EnumC2591a.CONTACT_TO_DIAL.ordinal(), 0, 2131755255);
            contextMenu.add(0, EnumC2591a.CONTACT_DETAILS.ordinal(), 0, 2131755253);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$e.class */
    public static final class View$OnTouchListenerC2595e implements View.OnTouchListener {

        /* renamed from: b */
        final /* synthetic */ float f7627b;

        /* renamed from: c */
        final /* synthetic */ C2598h f7628c;

        /* renamed from: d */
        final /* synthetic */ int f7629d;

        View$OnTouchListenerC2595e(float f, C2598h c2598h, int i) {
            C2590a.this = r4;
            this.f7627b = f;
            this.f7628c = c2598h;
            this.f7629d = i;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C1694h.m3122a((Object) view, "view1");
            int measuredHeight = view.getMeasuredHeight();
            C1694h.m3122a((Object) motionEvent, "motionEvent");
            int action = motionEvent.getAction();
            if (action == 0) {
                C2590a.this.f7615f = -1;
                if (view.getMeasuredWidth() - motionEvent.getX() > 30 * this.f7627b) {
                    return false;
                }
                float y = motionEvent.getY();
                float f = measuredHeight;
                float f2 = 26 * (y / f);
                float f3 = (y - (measuredHeight / 2)) / f;
                int m1645a = C2590a.m732b(C2590a.this).m1645a(f2);
                if (m1645a != C2590a.this.f7615f) {
                    C2590a.this.f7615f = m1645a;
                    this.f7628c.m4862c(m1645a);
                    C2590a.m731c(C2590a.this).startSmoothScroll(this.f7628c);
                }
                Iterator it = C2590a.this.f7616g.iterator();
                int i = 0;
                while (it.hasNext()) {
                    AppCompatTextView appCompatTextView = (AppCompatTextView) it.next();
                    float min = Math.min(Math.abs(f2 - i), 6.0f) / 6;
                    float f4 = 1;
                    if (min < f4) {
                        float abs = (float) Math.abs(Math.sin((((f4 - min) * 90.0f) / 360.0f) * 3.141592653589793d));
                        float f5 = f4 + (2 * abs);
                        appCompatTextView.setBackgroundColor((Math.min(Math.round((255 * abs) * 1.5f), 255) << 24) + this.f7629d);
                        C1694h.m3122a((Object) appCompatTextView, "textView");
                        appCompatTextView.setTranslationX(this.f7627b * (-130.0f) * abs);
                        appCompatTextView.setTranslationY(this.f7627b * (-30.0f) * f3);
                        appCompatTextView.setScaleX(f5);
                        appCompatTextView.setScaleY(f5);
                        appCompatTextView.setTranslationZ(f5 * 5);
                    } else {
                        C1694h.m3122a((Object) appCompatTextView, "textView");
                        appCompatTextView.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                        appCompatTextView.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                        appCompatTextView.setScaleX(1.0f);
                        appCompatTextView.setScaleY(1.0f);
                        appCompatTextView.setBackgroundColor(0);
                        appCompatTextView.setTranslationZ(FlexItem.FLEX_GROW_DEFAULT);
                    }
                    i++;
                }
                return true;
            }
            if (action != 1) {
                if (action == 2) {
                    float y2 = motionEvent.getY();
                    float f6 = measuredHeight;
                    float f7 = 26 * (y2 / f6);
                    float f8 = (y2 - (measuredHeight / 2)) / f6;
                    int m1645a2 = C2590a.m732b(C2590a.this).m1645a(f7);
                    if (m1645a2 != C2590a.this.f7615f) {
                        C2590a.this.f7615f = m1645a2;
                        this.f7628c.m4862c(m1645a2);
                        C2590a.m731c(C2590a.this).startSmoothScroll(this.f7628c);
                    }
                    Iterator it2 = C2590a.this.f7616g.iterator();
                    int i2 = 0;
                    while (it2.hasNext()) {
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) it2.next();
                        float min2 = Math.min(Math.abs(f7 - i2), 6.0f) / 6;
                        float f9 = 1;
                        if (min2 < f9) {
                            float abs2 = (float) Math.abs(Math.sin((((f9 - min2) * 90.0f) / 360.0f) * 3.141592653589793d));
                            float f10 = f9 + (2 * abs2);
                            appCompatTextView2.setBackgroundColor((Math.min(Math.round((255 * abs2) * 1.5f), 255) << 24) + this.f7629d);
                            C1694h.m3122a((Object) appCompatTextView2, "textView");
                            appCompatTextView2.setTranslationX(this.f7627b * (-130.0f) * abs2);
                            appCompatTextView2.setTranslationY(this.f7627b * (-30.0f) * f8);
                            appCompatTextView2.setScaleX(f10);
                            appCompatTextView2.setScaleY(f10);
                            appCompatTextView2.setTranslationZ(f10 * 5);
                        } else {
                            C1694h.m3122a((Object) appCompatTextView2, "textView");
                            appCompatTextView2.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                            appCompatTextView2.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                            appCompatTextView2.setScaleX(1.0f);
                            appCompatTextView2.setScaleY(1.0f);
                            appCompatTextView2.setBackgroundColor(0);
                            appCompatTextView2.setTranslationZ(FlexItem.FLEX_GROW_DEFAULT);
                        }
                        i2++;
                    }
                    return true;
                } else if (action != 3) {
                    return true;
                }
            }
            Iterator it3 = C2590a.this.f7616g.iterator();
            while (it3.hasNext()) {
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) it3.next();
                C1694h.m3122a((Object) appCompatTextView3, "textView");
                appCompatTextView3.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                appCompatTextView3.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                appCompatTextView3.setScaleX(1.0f);
                appCompatTextView3.setScaleY(1.0f);
                appCompatTextView3.setBackgroundColor(0);
                appCompatTextView3.setTranslationZ(FlexItem.FLEX_GROW_DEFAULT);
            }
            return true;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$f.class */
    public static final class View$OnClickListenerC2596f implements View.OnClickListener {
        View$OnClickListenerC2596f() {
            C2590a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2590a.this.requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 0);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$g.class */
    public static final class C2597g<T> implements AbstractC0911q<List<C2302a>> {

        /* renamed from: b */
        final /* synthetic */ C2589a f7632b;

        C2597g(C2589a c2589a) {
            C2590a.this = r4;
            this.f7632b = c2589a;
        }

        /* renamed from: a */
        public final void mo431a(List<C2302a> list) {
            if (list != null) {
                this.f7632b.m748a(list);
                C2314e.m1637a(C2590a.m732b(C2590a.this), list, false, 2, null);
                if (C2590a.this.f7614e) {
                    C2590a.m731c(C2590a.this).scrollToPosition(1);
                    C2590a.this.f7614e = false;
                }
            }
            MainFragment mainFragment = MainFragment.f7560b.m753a().get();
            if (mainFragment != null) {
                mainFragment.m759c();
            }
            C2590a.this.m730d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$h.class */
    public static final class C2598h extends C1011g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2598h(Context context) {
            super(context);
            C2590a.this = r4;
        }

        @Override // androidx.recyclerview.widget.C1011g
        /* renamed from: d */
        protected int mo723d() {
            return -1;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.a.a$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/a/a$i.class */
    static final class MenuItem$OnMenuItemClickListenerC2599i implements MenuItem.OnMenuItemClickListener {
        MenuItem$OnMenuItemClickListenerC2599i() {
            C2590a.this = r4;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C2398ai.f6930a.m1235x(!C2398ai.f6930a.m1302I());
            ActivityC0711c activity = C2590a.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
            C2590a.m732b(C2590a.this).m1636a(C2398ai.f6930a.m1302I());
            C2321g.f6563e.m1616e();
            return true;
        }
    }

    /* renamed from: a */
    private final void m736a(AppCompatTextView appCompatTextView) {
        this.f7616g.add(appCompatTextView);
    }

    /* renamed from: b */
    public static final /* synthetic */ C2314e m732b(C2590a c2590a) {
        C2314e c2314e = c2590a.f7612c;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        return c2314e;
    }

    /* renamed from: c */
    public static final /* synthetic */ LinearLayoutManager m731c(C2590a c2590a) {
        LinearLayoutManager linearLayoutManager = c2590a.f7613d;
        if (linearLayoutManager == null) {
            C1694h.m3116b("layoutManager");
        }
        return linearLayoutManager;
    }

    /* renamed from: e */
    private final void m728e() {
        AbstractC2257s abstractC2257s = this.f7610a;
        if (abstractC2257s != null) {
            AppCompatTextView appCompatTextView = abstractC2257s.f6278i;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvA");
            m736a(appCompatTextView);
            AppCompatTextView appCompatTextView2 = abstractC2257s.f6279j;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvB");
            m736a(appCompatTextView2);
            AppCompatTextView appCompatTextView3 = abstractC2257s.f6280k;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvC");
            m736a(appCompatTextView3);
            AppCompatTextView appCompatTextView4 = abstractC2257s.f6281l;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvD");
            m736a(appCompatTextView4);
            AppCompatTextView appCompatTextView5 = abstractC2257s.f6282m;
            C1694h.m3122a((Object) appCompatTextView5, "binding.tvE");
            m736a(appCompatTextView5);
            AppCompatTextView appCompatTextView6 = abstractC2257s.f6283n;
            C1694h.m3122a((Object) appCompatTextView6, "binding.tvF");
            m736a(appCompatTextView6);
            AppCompatTextView appCompatTextView7 = abstractC2257s.f6284o;
            C1694h.m3122a((Object) appCompatTextView7, "binding.tvG");
            m736a(appCompatTextView7);
            AppCompatTextView appCompatTextView8 = abstractC2257s.f6285p;
            C1694h.m3122a((Object) appCompatTextView8, "binding.tvH");
            m736a(appCompatTextView8);
            AppCompatTextView appCompatTextView9 = abstractC2257s.f6286q;
            C1694h.m3122a((Object) appCompatTextView9, "binding.tvI");
            m736a(appCompatTextView9);
            AppCompatTextView appCompatTextView10 = abstractC2257s.f6287r;
            C1694h.m3122a((Object) appCompatTextView10, "binding.tvJ");
            m736a(appCompatTextView10);
            AppCompatTextView appCompatTextView11 = abstractC2257s.f6288s;
            C1694h.m3122a((Object) appCompatTextView11, "binding.tvK");
            m736a(appCompatTextView11);
            AppCompatTextView appCompatTextView12 = abstractC2257s.f6289t;
            C1694h.m3122a((Object) appCompatTextView12, "binding.tvL");
            m736a(appCompatTextView12);
            AppCompatTextView appCompatTextView13 = abstractC2257s.f6290u;
            C1694h.m3122a((Object) appCompatTextView13, "binding.tvM");
            m736a(appCompatTextView13);
            AppCompatTextView appCompatTextView14 = abstractC2257s.f6291v;
            C1694h.m3122a((Object) appCompatTextView14, "binding.tvN");
            m736a(appCompatTextView14);
            AppCompatTextView appCompatTextView15 = abstractC2257s.f6292w;
            C1694h.m3122a((Object) appCompatTextView15, "binding.tvO");
            m736a(appCompatTextView15);
            AppCompatTextView appCompatTextView16 = abstractC2257s.f6293x;
            C1694h.m3122a((Object) appCompatTextView16, "binding.tvP");
            m736a(appCompatTextView16);
            AppCompatTextView appCompatTextView17 = abstractC2257s.f6294y;
            C1694h.m3122a((Object) appCompatTextView17, "binding.tvQ");
            m736a(appCompatTextView17);
            AppCompatTextView appCompatTextView18 = abstractC2257s.f6295z;
            C1694h.m3122a((Object) appCompatTextView18, "binding.tvR");
            m736a(appCompatTextView18);
            AppCompatTextView appCompatTextView19 = abstractC2257s.f6264A;
            C1694h.m3122a((Object) appCompatTextView19, "binding.tvS");
            m736a(appCompatTextView19);
            AppCompatTextView appCompatTextView20 = abstractC2257s.f6265B;
            C1694h.m3122a((Object) appCompatTextView20, "binding.tvT");
            m736a(appCompatTextView20);
            AppCompatTextView appCompatTextView21 = abstractC2257s.f6266C;
            C1694h.m3122a((Object) appCompatTextView21, "binding.tvU");
            m736a(appCompatTextView21);
            AppCompatTextView appCompatTextView22 = abstractC2257s.f6267D;
            C1694h.m3122a((Object) appCompatTextView22, "binding.tvV");
            m736a(appCompatTextView22);
            AppCompatTextView appCompatTextView23 = abstractC2257s.f6268E;
            C1694h.m3122a((Object) appCompatTextView23, "binding.tvW");
            m736a(appCompatTextView23);
            AppCompatTextView appCompatTextView24 = abstractC2257s.f6269F;
            C1694h.m3122a((Object) appCompatTextView24, "binding.tvX");
            m736a(appCompatTextView24);
            AppCompatTextView appCompatTextView25 = abstractC2257s.f6270G;
            C1694h.m3122a((Object) appCompatTextView25, "binding.tvY");
            m736a(appCompatTextView25);
            AppCompatTextView appCompatTextView26 = abstractC2257s.f6271H;
            C1694h.m3122a((Object) appCompatTextView26, "binding.tvZ");
            m736a(appCompatTextView26);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d
    /* renamed from: c */
    public void mo563c() {
        Resources resources;
        try {
            if (m564b()) {
                return;
            }
            MainActivity a = m567a();
            AbstractC2257s abstractC2257s = this.f7610a;
            if (a == null) {
                C3104j.m157a(C3104j.f9124a, "ContactsFragment.init mainActivity is null,skipping!", (String) null, 2, (Object) null);
            } else if (abstractC2257s == null) {
                C3104j.m157a(C3104j.f9124a, "ContactsFragment.init binding is null,skipping!", (String) null, 2, (Object) null);
            } else {
                C3104j.m157a(C3104j.f9124a, "ContactsFragment.init", (String) null, 2, (Object) null);
                C2589a m767m = a.m767m();
                this.f7611b = m767m;
                this.f7612c = new C2314e(m767m.m744b());
                C2314e c2314e = this.f7612c;
                if (c2314e == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                c2314e.m1646a().addObserver(new C2592b());
                C2314e c2314e2 = this.f7612c;
                if (c2314e2 == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                c2314e2.m1636a(C2398ai.f6930a.m1302I());
                C2314e c2314e3 = this.f7612c;
                if (c2314e3 == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                c2314e3.m1628e(true);
                C2314e c2314e4 = this.f7612c;
                if (c2314e4 == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                c2314e4.m1641a(new C2593c());
                C2314e c2314e5 = this.f7612c;
                if (c2314e5 == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                c2314e5.m1640a(new C2594d(m767m));
                this.f7613d = new LinearLayoutManager(getActivity());
                RecyclerView recyclerView = abstractC2257s.f6273d;
                C1694h.m3122a((Object) recyclerView, "binding.listView");
                LinearLayoutManager linearLayoutManager = this.f7613d;
                if (linearLayoutManager == null) {
                    C1694h.m3116b("layoutManager");
                }
                recyclerView.setLayoutManager(linearLayoutManager);
                RecyclerView recyclerView2 = abstractC2257s.f6273d;
                C1694h.m3122a((Object) recyclerView2, "binding.listView");
                C2314e c2314e6 = this.f7612c;
                if (c2314e6 == null) {
                    C1694h.m3116b("contactsAdapter");
                }
                recyclerView2.setAdapter(c2314e6);
                registerForContextMenu(abstractC2257s.f6273d);
                abstractC2257s.f6273d.setOnCreateContextMenuListener(this);
                m728e();
                float f = 1;
                C1694h.m3122a((Object) getResources(), "resources");
                float f2 = resources.getDisplayMetrics().densityDpi / 160;
                Context context = getContext();
                if (context == null) {
                    C1694h.m3124a();
                }
                C2598h c2598h = new C2598h(context);
                C3134x c3134x = C3134x.f9269a;
                Context context2 = getContext();
                if (context2 == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) context2, "context!!");
                abstractC2257s.f6274e.setOnTouchListener(new View$OnTouchListenerC2595e(f * f2, c2598h, c3134x.m26a(context2, 2130968724)));
                abstractC2257s.f6272c.setOnClickListener(new View$OnClickListenerC2596f());
                C2321g.f6563e.m5137a(this, new C2597g(m767m));
                m565a(true);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: d */
    public final void m730d() {
        AbstractC2257s abstractC2257s;
        C2589a c2589a = this.f7611b;
        if (c2589a == null || (abstractC2257s = this.f7610a) == null) {
            return;
        }
        C2314e c2314e = this.f7612c;
        if (c2314e == null) {
            C1694h.m3116b("contactsAdapter");
        }
        boolean m1627f = c2314e.m1627f();
        boolean isEmpty = c2589a.m744b().isEmpty();
        boolean m113j = C3115o.f9175a.m113j();
        if (C2386ad.f6885a.m1342a() && C3115o.f9175a.m113j()) {
            C3104j.m157a(C3104j.f9124a, "ContactsFragment.updateUI - invalidating ContactsLiveData due fixed permissions", (String) null, 2, (Object) null);
            C2386ad.f6885a.m1332d();
        }
        LinearLayout linearLayout = abstractC2257s.f6275f;
        C1694h.m3122a((Object) linearLayout, "binding.llLoadingData");
        linearLayout.setVisibility((!m1627f || !m113j) ? 8 : 0);
        LinearLayout linearLayout2 = abstractC2257s.f6276g;
        C1694h.m3122a((Object) linearLayout2, "binding.llNoItems");
        linearLayout2.setVisibility((m1627f || !isEmpty) ? 8 : 0);
        LinearLayout linearLayout3 = abstractC2257s.f6277h;
        C1694h.m3122a((Object) linearLayout3, "binding.llNoPermissions");
        linearLayout3.setVisibility(!m113j ? 0 : 8);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3104j.m157a(C3104j.f9124a, "ContactsFragment.onActivityCreated", (String) null, 2, (Object) null);
        if (m564b() || C2398ai.f6930a.m1287b() != 2) {
            return;
        }
        mo563c();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.main.AbstractC2709d, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C1694h.m3117b(context, "context");
        super.onAttach(context);
        C3104j.m157a(C3104j.f9124a, "ContactsFragment.onAttach", (String) null, 2, (Object) null);
        m566a((MainActivity) context);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C2302a m739f;
        C2385ac m1658f;
        NumberInfo m1346j;
        String m1479b;
        C1694h.m3117b(menuItem, "item");
        if (!getUserVisibleHint()) {
            return false;
        }
        try {
            C2589a c2589a = this.f7611b;
            if (c2589a == null || (m739f = c2589a.m739f()) == null || (m1658f = m739f.m1658f()) == null || (m1346j = m1658f.m1346j()) == null || (m1479b = m1346j.m1479b()) == null) {
                return true;
            }
            int i = C2600b.f7635a[EnumC2591a.values()[menuItem.getItemId()].ordinal()];
            if (i == 1) {
                C3135y.f9272b.m23a().setPrimaryClip(ClipData.newPlainText("phone number", m1479b));
                return true;
            } else if (i == 2) {
                Context context = getContext();
                if (context == null) {
                    return true;
                }
                C1694h.m3122a((Object) context, "it");
                m1658f.m1358b(context);
                return true;
            } else if (i == 3) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("sms: " + m1479b));
                startActivity(intent);
                return true;
            } else if (i == 4) {
                ActivityC0711c activity = getActivity();
                if (activity == null) {
                    return true;
                }
                C1694h.m3122a((Object) activity, "it");
                m1658f.m1366a(activity);
                return true;
            } else if (i != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                DialpadFragment.C2519a c2519a = DialpadFragment.f7404b;
                ActivityC0711c activity2 = getActivity();
                if (activity2 == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) activity2, "activity!!");
                c2519a.m844a(activity2, m1479b);
                return true;
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623936, menu);
        MenuItem findItem = menu.findItem(2131361854);
        if (findItem != null) {
            findItem.setVisible(true);
            findItem.setChecked(C2398ai.f6930a.m1302I());
            findItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC2599i());
        }
        MenuItem findItem2 = menu.findItem(2131361853);
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        MenuItem findItem3 = menu.findItem(2131361849);
        if (findItem3 != null) {
            findItem3.setVisible(false);
        }
        MenuItem findItem4 = menu.findItem(2131361851);
        if (findItem4 != null) {
            findItem4.setVisible(false);
        }
        MenuItem findItem5 = menu.findItem(2131361852);
        if (findItem5 != null) {
            findItem5.setVisible(false);
        }
        MenuItem findItem6 = menu.findItem(2131361850);
        if (findItem6 != null) {
            findItem6.setVisible(false);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        this.f7610a = (AbstractC2257s) C0651f.m5843a(layoutInflater, 2131558452, viewGroup, false);
        AbstractC2257s abstractC2257s = this.f7610a;
        return abstractC2257s != null ? abstractC2257s.m5863d() : null;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m564b()) {
            m730d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ContactsFragment.setUserVisibleHint " + z, (String) null, 2, (Object) null);
        super.setUserVisibleHint(z);
        if (m564b() || m567a() == null || !z) {
            return;
        }
        mo563c();
    }
}
