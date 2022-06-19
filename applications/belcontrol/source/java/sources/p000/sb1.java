package p000;

import android.content.res.Resources;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import com.kedlin.cca.p007ui.CCANavBarFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
/* renamed from: sb1 */
/* loaded from: classes3-dex2jar.jar:sb1.class */
public class sb1 implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public Object f8097a;

    /* renamed from: b */
    public Resources f8098b;

    /* renamed from: c */
    public ViewGroup f8099c;

    /* renamed from: d */
    public ViewGroup f8100d;

    /* renamed from: f */
    public ViewGroup f8101f;

    /* renamed from: g */
    public AbstractC1652b f8102g;

    /* renamed from: h */
    public TextView f8103h;

    /* renamed from: j */
    public CCANavBarFilter f8104j;

    /* renamed from: k */
    public Button f8105k;

    /* renamed from: l */
    public Button f8106l;

    /* renamed from: m */
    public ProgressBar f8107m;

    /* renamed from: sb1$a */
    /* loaded from: classes3-dex2jar.jar:sb1$a.class */
    public class View$OnClickListenerC1651a implements View.OnClickListener {
        public View$OnClickListenerC1651a() {
            sb1.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DrawerLayout drawerLayout = (DrawerLayout) sb1.this.f8099c.getRootView().findViewById(2131362410);
            LinearLayout linearLayout = (LinearLayout) sb1.this.f8099c.getRootView().findViewById(2131362706);
            if (drawerLayout == null || linearLayout == null) {
                return;
            }
            drawerLayout.m6766H(linearLayout);
        }
    }

    /* renamed from: sb1$b */
    /* loaded from: classes3-dex2jar.jar:sb1$b.class */
    public interface AbstractC1652b {
        /* renamed from: a */
        void mo584a(EnumC1653c enumC1653c);

        /* renamed from: b */
        void mo583b(Object obj, boolean z);

        /* renamed from: c */
        void mo582c(EnumC1654d enumC1654d, boolean z);

        /* renamed from: g */
        void mo581g(EnumC1653c enumC1653c);
    }

    /* renamed from: sb1$c */
    /* loaded from: classes3-dex2jar.jar:sb1$c.class */
    public enum EnumC1653c {
        BTN_MORE,
        BTN_PLUS,
        BTN_SHARE,
        BTN_SYNC,
        BTN_SAVE,
        BTN_BACKUP,
        BTN_CUSTOM,
        BTN_BACK,
        BTN_LOOKUP,
        BTN_FAVORITE,
        BTN_BLOCK
    }

    /* renamed from: sb1$d */
    /* loaded from: classes3-dex2jar.jar:sb1$d.class */
    public enum EnumC1654d {
        TGL_BLOCKED_ENTRIES,
        TGL_MESSAGE_ENTRIES,
        TGL_PHONE_STAR
    }

    public sb1(Fragment fragment) {
        EnumSet.noneOf(EnumC1653c.class);
        this.f8097a = fragment;
        this.f8098b = fragment.getResources();
        if (fragment.getView() == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) fragment.getView().findViewById(2131363416);
        this.f8099c = viewGroup;
        if (viewGroup == null) {
            j91.m1505k("CCANavBar", "The activity layout does not contain @id/topNav on attach time");
            return;
        }
        viewGroup.removeAllViews();
        this.f8099c.getViewTreeObserver().addOnGlobalLayoutListener(this);
        ImageButton imageButton = new ImageButton(this.f8099c.getContext());
        imageButton.setId(2147483637);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(15);
        layoutParams.addRule(5);
        layoutParams.addRule(9);
        imageButton.setBackgroundColor(0);
        imageButton.setPadding(32, 0, 32, 0);
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageResource(2131231271);
        imageButton.setOnClickListener(new View$OnClickListenerC1651a());
        this.f8099c.addView(imageButton);
    }

    /* renamed from: b */
    public sb1 m600b() {
        if (this.f8105k != null) {
            return this;
        }
        View findViewById = this.f8099c.findViewById(2147483637);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        this.f8105k = new Button(this.f8099c.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(15);
        layoutParams.addRule(5);
        layoutParams.addRule(9);
        this.f8105k.setLayoutParams(layoutParams);
        this.f8105k.setText(this.f8098b.getString(2131820758).toUpperCase(this.f8098b.getConfiguration().locale));
        this.f8105k.setTextSize(14.0f);
        this.f8105k.setTextColor(this.f8098b.getColor(2131100301));
        this.f8105k.setBackgroundResource(17170445);
        this.f8105k.setCompoundDrawablesWithIntrinsicBounds(2131231093, 0, 0, 0);
        this.f8105k.setOnClickListener(this);
        this.f8105k.setPadding(0, 0, 0, 0);
        this.f8105k.setTag(EnumC1653c.BTN_BACK);
        this.f8105k.setId(2147483636);
        this.f8099c.addView(this.f8105k);
        return this;
    }

    /* renamed from: c */
    public final sb1 m599c(EnumC1653c enumC1653c, int i) {
        if (this.f8100d == null) {
            return this;
        }
        ImageButton imageButton = new ImageButton(this.f8099c.getContext());
        imageButton.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        imageButton.setBackgroundColor(this.f8098b.getColor(17170445));
        imageButton.setImageResource(i);
        imageButton.setTag(enumC1653c);
        int m1093c = oe1.m1093c(8);
        imageButton.setPadding(m1093c, 0, m1093c, 0);
        imageButton.setOnClickListener(this);
        this.f8100d.addView(imageButton);
        return this;
    }

    /* renamed from: d */
    public sb1 m598d(String str) {
        if (this.f8106l != null) {
            return this;
        }
        this.f8106l = new Button(this.f8099c.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        this.f8106l.setLayoutParams(layoutParams);
        this.f8106l.setText(str.toUpperCase(this.f8098b.getConfiguration().locale));
        this.f8106l.setTextSize(14.0f);
        this.f8106l.setTextColor(this.f8098b.getColor(2131100301));
        this.f8106l.setBackgroundResource(17170445);
        this.f8106l.setOnClickListener(this);
        this.f8106l.setPadding(0, 0, 0, 0);
        this.f8106l.setTag(EnumC1653c.BTN_CUSTOM);
        this.f8099c.addView(this.f8106l);
        return this;
    }

    /* renamed from: e */
    public final sb1 m597e(EnumC1654d enumC1654d, int i) {
        if (this.f8101f == null) {
            return this;
        }
        View view = new View(this.f8099c.getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(oe1.m1093c(4), -1));
        this.f8101f.addView(view);
        CheckBox checkBox = new CheckBox(this.f8099c.getContext());
        checkBox.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        checkBox.setBackgroundColor(this.f8098b.getColor(17170445));
        checkBox.setButtonDrawable(i);
        checkBox.setTag(enumC1654d);
        checkBox.setOnCheckedChangeListener(this);
        this.f8101f.addView(checkBox);
        return this;
    }

    /* renamed from: f */
    public CCANavBarFilter m596f() {
        CCANavBarFilter cCANavBarFilter = this.f8104j;
        if (cCANavBarFilter != null) {
            return cCANavBarFilter;
        }
        CCANavBarFilter cCANavBarFilter2 = new CCANavBarFilter(this.f8099c.getContext());
        this.f8104j = cCANavBarFilter2;
        cCANavBarFilter2.m4306f(this.f8102g);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(15);
        View findViewById = this.f8099c.findViewById(2147483637);
        if (findViewById != null && findViewById.getVisibility() != 8) {
            layoutParams.addRule(1, 2147483637);
        } else if (this.f8099c.findViewWithTag(EnumC1653c.BTN_BACK) != null) {
            layoutParams.addRule(1, 2147483636);
            layoutParams.setMargins(oe1.m1093c(8), 0, 0, 0);
        }
        this.f8104j.setLayoutParams(layoutParams);
        this.f8104j.setGravity(16);
        this.f8099c.addView(this.f8104j);
        return this.f8104j;
    }

    /* renamed from: g */
    public View m595g(Object obj) {
        View view;
        View view2 = null;
        if (obj == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(this.f8099c, this.f8100d, this.f8101f, this.f8104j));
        Iterator it = arrayList.iterator();
        while (true) {
            view = view2;
            if (!it.hasNext()) {
                break;
            }
            view = (View) it.next();
            if (view != null) {
                if (obj.equals(view.getTag())) {
                    break;
                }
                view = view.findViewWithTag(obj);
                view2 = view;
                if (view != null) {
                    break;
                }
            }
        }
        return view;
    }

    /* renamed from: h */
    public void m594h() {
        ViewGroup viewGroup = this.f8099c;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: i */
    public boolean m593i(EnumC1653c enumC1653c) {
        ViewGroup viewGroup = this.f8100d;
        if (viewGroup == null) {
            return false;
        }
        View findViewWithTag = viewGroup.findViewWithTag(enumC1653c);
        boolean z = false;
        if (findViewWithTag != null) {
            z = false;
            if (findViewWithTag.getVisibility() == 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: j */
    public sb1 m592j(EnumSet<EnumC1653c> enumSet) {
        if (this.f8100d == null) {
            this.f8100d = new LinearLayout(this.f8099c.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(15);
            layoutParams.addRule(11);
            this.f8100d.setLayoutParams(layoutParams);
            this.f8100d.setId(2147483646);
            this.f8099c.addView(this.f8100d);
        }
        this.f8100d.removeAllViews();
        EnumC1653c enumC1653c = EnumC1653c.BTN_PLUS;
        if (enumSet.contains(enumC1653c)) {
            m599c(enumC1653c, 2131231055);
        }
        EnumC1653c enumC1653c2 = EnumC1653c.BTN_SHARE;
        if (enumSet.contains(enumC1653c2)) {
            m599c(enumC1653c2, 2131231065);
        }
        EnumC1653c enumC1653c3 = EnumC1653c.BTN_SYNC;
        if (enumSet.contains(enumC1653c3)) {
            m599c(enumC1653c3, 2131231061);
        }
        EnumC1653c enumC1653c4 = EnumC1653c.BTN_MORE;
        if (enumSet.contains(enumC1653c4)) {
            m599c(enumC1653c4, 2131231056);
        }
        EnumC1653c enumC1653c5 = EnumC1653c.BTN_BACKUP;
        if (enumSet.contains(enumC1653c5)) {
            m599c(enumC1653c5, 2131231063);
        }
        return this;
    }

    /* renamed from: k */
    public sb1 m591k(EnumSet<EnumC1653c> enumSet, int i) {
        if (this.f8100d == null) {
            this.f8100d = new LinearLayout(this.f8099c.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(15);
            layoutParams.addRule(11);
            this.f8100d.setLayoutParams(layoutParams);
            this.f8100d.setId(2147483646);
            this.f8099c.addView(this.f8100d);
        }
        this.f8100d.removeAllViews();
        EnumC1653c enumC1653c = EnumC1653c.BTN_LOOKUP;
        if (enumSet.contains(enumC1653c)) {
            m599c(enumC1653c, 2131231581);
        }
        EnumC1653c enumC1653c2 = EnumC1653c.BTN_FAVORITE;
        if (enumSet.contains(enumC1653c2)) {
            m599c(enumC1653c2, 2131231220);
        }
        EnumC1653c enumC1653c3 = EnumC1653c.BTN_BLOCK;
        if (enumSet.contains(enumC1653c3)) {
            m599c(enumC1653c3, 2131231115);
        }
        EnumC1653c enumC1653c4 = EnumC1653c.BTN_PLUS;
        if (enumSet.contains(enumC1653c4)) {
            m599c(enumC1653c4, 2131231055);
        }
        EnumC1653c enumC1653c5 = EnumC1653c.BTN_SHARE;
        if (enumSet.contains(enumC1653c5)) {
            m599c(enumC1653c5, 2131231065);
        }
        EnumC1653c enumC1653c6 = EnumC1653c.BTN_SYNC;
        if (enumSet.contains(enumC1653c6)) {
            m599c(enumC1653c6, 2131231061);
        }
        EnumC1653c enumC1653c7 = EnumC1653c.BTN_BACKUP;
        if (enumSet.contains(enumC1653c7)) {
            m599c(enumC1653c7, 2131231063);
        }
        EnumC1653c enumC1653c8 = EnumC1653c.BTN_MORE;
        if (enumSet.contains(enumC1653c8)) {
            m599c(enumC1653c8, 2131231342);
        }
        return this;
    }

    /* renamed from: l */
    public sb1 m590l(AbstractC1652b abstractC1652b) {
        this.f8102g = abstractC1652b;
        CCANavBarFilter cCANavBarFilter = this.f8104j;
        if (cCANavBarFilter != null) {
            cCANavBarFilter.m4306f(abstractC1652b);
        }
        return this;
    }

    /* renamed from: m */
    public sb1 m589m(EnumSet<EnumC1654d> enumSet) {
        if (this.f8101f == null) {
            this.f8101f = new LinearLayout(this.f8099c.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(15);
            if (this.f8100d != null) {
                layoutParams.addRule(0, 2147483646);
            } else {
                layoutParams.addRule(11);
            }
            this.f8101f.setLayoutParams(layoutParams);
            this.f8099c.addView(this.f8101f);
        }
        this.f8101f.removeAllViews();
        EnumC1654d enumC1654d = EnumC1654d.TGL_BLOCKED_ENTRIES;
        if (enumSet.contains(enumC1654d)) {
            m597e(enumC1654d, 2131230903);
        }
        EnumC1654d enumC1654d2 = EnumC1654d.TGL_MESSAGE_ENTRIES;
        if (enumSet.contains(enumC1654d2)) {
            m597e(enumC1654d2, 2131230904);
        }
        EnumC1654d enumC1654d3 = EnumC1654d.TGL_PHONE_STAR;
        if (enumSet.contains(enumC1654d3)) {
            m597e(enumC1654d3, 2131230902);
        }
        return this;
    }

    /* renamed from: n */
    public void m588n(boolean z) {
        if (this.f8099c == null) {
            return;
        }
        int i = 8;
        if (this.f8107m == null) {
            this.f8107m = new ProgressBar(this.f8099c.getContext(), null, 16842872);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, oe1.m1093c(8));
            layoutParams.addRule(12);
            layoutParams.bottomMargin = -oe1.m1093c(3);
            this.f8107m.setPadding(0, 0, 0, 0);
            this.f8107m.setLayoutParams(layoutParams);
            this.f8107m.setProgressDrawable(this.f8099c.getResources().getDrawable(2131231541));
            this.f8107m.setIndeterminateDrawable(this.f8099c.getResources().getDrawable(2131231542));
            this.f8099c.addView(this.f8107m);
        }
        ProgressBar progressBar = this.f8107m;
        if (z) {
            i = 0;
        }
        progressBar.setVisibility(i);
        this.f8107m.setIndeterminate(z);
    }

    /* renamed from: o */
    public sb1 m587o(int i) {
        if (this.f8097a == null) {
            return null;
        }
        return m586p(this.f8098b.getString(i));
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AbstractC1652b abstractC1652b = this.f8102g;
        if (abstractC1652b == null) {
            return;
        }
        abstractC1652b.mo582c((EnumC1654d) compoundButton.getTag(), z);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractC1652b abstractC1652b = this.f8102g;
        if (abstractC1652b == null) {
            return;
        }
        abstractC1652b.mo581g((EnumC1653c) view.getTag());
        if (view == null || !view.equals(this.f8105k)) {
            return;
        }
        this.f8102g.mo584a((EnumC1653c) view.getTag());
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        boolean z;
        CCANavBarFilter cCANavBarFilter;
        if (this.f8099c == null || this.f8100d == null) {
            return;
        }
        Rect rect = new Rect(0, 0, 0, 0);
        CCANavBarFilter cCANavBarFilter2 = this.f8104j;
        if (cCANavBarFilter2 != null) {
            cCANavBarFilter2.getGlobalVisibleRect(rect);
        }
        Rect rect2 = new Rect(0, 0, 0, 0);
        TextView textView = this.f8103h;
        if (textView != null) {
            textView.getGlobalVisibleRect(rect2);
        }
        Rect rect3 = new Rect(0, 0, 0, 0);
        View m595g = m595g(EnumC1653c.BTN_MORE);
        if (m595g != null) {
            m595g.getGlobalVisibleRect(rect3);
            z = Rect.intersects(rect3, rect);
        } else {
            this.f8099c.getGlobalVisibleRect(rect3);
            z = rect.right >= rect3.right;
        }
        if (!z || (cCANavBarFilter = this.f8104j) == null) {
            int childCount = this.f8100d.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f8100d.getChildAt(i);
                if (!childAt.getTag().equals(EnumC1653c.BTN_MORE)) {
                    childAt.getGlobalVisibleRect(rect3);
                    if (Rect.intersects(rect3, rect) || Rect.intersects(rect3, rect2)) {
                        childAt.setVisibility(8);
                    }
                }
            }
            this.f8099c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            return;
        }
        int childCount2 = cCANavBarFilter.getChildCount();
        for (int i2 = 0; i2 < childCount2; i2++) {
            View childAt2 = this.f8104j.getChildAt(i2);
            if (childAt2 != null && (childAt2 instanceof TextView) && childAt2.getVisibility() == 0) {
                TextView textView2 = (TextView) childAt2;
                textView2.setTextSize(0, textView2.getTextSize() - 2.0f);
            }
        }
        this.f8104j.requestLayout();
    }

    /* renamed from: p */
    public sb1 m586p(String str) {
        if (this.f8097a == null) {
            return null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        int i = oe1.m1059t(str2, 14) > 50 ? (int) (fa1.m1840j().getResources().getDisplayMetrics().widthPixels * 0.55d) : -2;
        TextView textView = this.f8103h;
        if (textView != null) {
            textView.setText(str2.toUpperCase());
            return this;
        }
        this.f8103h = new TextView(this.f8099c.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, -2);
        layoutParams.addRule(13, 1);
        int m1093c = TextUtils.isEmpty(str2) ? 0 : oe1.m1093c(8);
        this.f8103h.setPadding(m1093c, 0, m1093c, 0);
        this.f8103h.setEllipsize(TextUtils.TruncateAt.END);
        this.f8103h.setGravity(17);
        this.f8103h.setMaxLines(1);
        this.f8103h.setSingleLine(true);
        this.f8103h.setLayoutParams(layoutParams);
        this.f8103h.setBackgroundColor(this.f8098b.getColor(17170445));
        TextView textView2 = this.f8103h;
        textView2.setTextColor(g8.d(textView2.getContext(), 2131100053));
        this.f8103h.setText(str2.toUpperCase());
        this.f8103h.setTextAppearance(fa1.m1839k(), 2131886708);
        this.f8099c.addView(this.f8103h);
        return this;
    }

    /* renamed from: q */
    public sb1 m585q(EnumC1654d enumC1654d, boolean z) {
        CheckBox checkBox;
        ViewGroup viewGroup = this.f8101f;
        if (viewGroup != null && (checkBox = (CheckBox) viewGroup.findViewWithTag(enumC1654d)) != null) {
            checkBox.setChecked(z);
            return this;
        }
        return this;
    }
}
