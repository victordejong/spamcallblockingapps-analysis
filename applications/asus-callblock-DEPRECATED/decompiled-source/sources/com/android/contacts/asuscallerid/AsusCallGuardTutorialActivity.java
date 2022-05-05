package com.android.contacts.asuscallerid;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.i;
import android.support.v4.app.m;
import android.support.v4.app.o;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.f.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallGuardTutorialActivity.class */
public class AsusCallGuardTutorialActivity extends i implements ViewPager.e, View.OnClickListener, CompoundButton.OnCheckedChangeListener, c.a {
    ViewPager n = null;
    TextView o = null;
    TextView p = null;
    TextView q = null;
    CheckBox r = null;
    TextView s = null;
    private int t = 0;
    private com.android.contacts.f.c u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallGuardTutorialActivity$a.class */
    public enum a {
        FIRST;
        

        /* renamed from: b  reason: collision with root package name */
        final int f575b = 2131755338;
        final int c = 2131755331;
        final int d = 2131755823;
        final int e = 2131427597;
        final int f = 2131165235;

        /* JADX WARN: Incorrect types in method signature: (I)V */
        a(String str) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallGuardTutorialActivity$b.class */
    public static final class b extends Fragment {
        @Override // android.support.v4.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            setHasOptionsMenu(false);
            a aVar = a.values()[getArguments().getInt("EXTRA_TUTORIAL_PAGE", 0)];
            int i = aVar.f;
            View inflate = layoutInflater.inflate(aVar.e, viewGroup, false);
            inflate.findViewById(2131297420);
            ((ImageView) inflate.findViewById(2131297420)).setImageResource(i);
            return inflate;
        }

        @Override // android.support.v4.app.Fragment
        public final void onDestroy() {
            super.onDestroy();
        }

        @Override // android.support.v4.app.Fragment
        public final void onDestroyView() {
            super.onDestroyView();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallGuardTutorialActivity$c.class */
    private static final class c extends o {
        public c(m mVar) {
            super(mVar);
        }

        @Override // android.support.v4.app.o
        public final Fragment a(int i) {
            b bVar = new b();
            Bundle bundle = new Bundle();
            bundle.putInt("EXTRA_TUTORIAL_PAGE", i);
            bVar.setArguments(bundle);
            return bVar;
        }

        @Override // android.support.v4.view.p
        public final int getCount() {
            return a.values().length;
        }
    }

    private void a(int i) {
        a aVar = a.values()[i];
        this.o.setText(aVar.f575b);
        this.p.setText(aVar.c);
        this.s.setText(aVar.d);
        if (aVar == a.FIRST) {
            this.q.setVisibility(0);
            this.r.setVisibility(0);
        }
        this.t = i;
    }

    @Override // com.android.contacts.f.c.a
    public final void a_(boolean z) {
        if (!z) {
            this.r.setChecked(true);
        }
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onBackPressed() {
        com.asus.a.c.b(this);
        if (this.u != null) {
            this.u.show(getFragmentManager(), "back_pressed");
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!z && this.u != null) {
            this.u.show(getFragmentManager(), "check_changed");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131297113:
                if (this.t < a.values().length - 1) {
                    ViewPager viewPager = this.n;
                    int i = this.t + 1;
                    this.t = i;
                    viewPager.setCurrentItem(i);
                    return;
                }
                if (this.r.isChecked()) {
                    com.asus.a.c.i(this, true);
                    com.asus.a.c.b(this);
                } else {
                    com.asus.a.c.i(this, false);
                    com.asus.a.c.b(this);
                }
                finish();
                return;
            case 2131297407:
                com.asus.a.c.s(this);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(2131427352);
        this.n = (ViewPager) findViewById(2131297419);
        this.n.setAdapter(new c(getSupportFragmentManager()));
        this.n.setOnPageChangeListener(this);
        this.o = (TextView) findViewById(2131297402);
        this.p = (TextView) findViewById(2131296606);
        this.q = (TextView) findViewById(2131297407);
        this.q.setOnClickListener(this);
        this.s = (TextView) findViewById(2131297113);
        this.s.setOnClickListener(this);
        this.r = (CheckBox) findViewById(2131296289);
        this.r.setOnCheckedChangeListener(this);
        a(this.t);
        this.u = com.android.contacts.f.c.a(false, 1);
        this.u.f1285b = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.u != null) {
            this.u.f1285b = this;
        }
    }

    @Override // android.support.v4.view.ViewPager.e
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // android.support.v4.view.ViewPager.e
    public void onPageSelected(int i) {
        a(i);
    }
}
