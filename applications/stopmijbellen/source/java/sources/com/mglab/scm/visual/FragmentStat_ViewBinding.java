package com.mglab.scm.visual;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding.class */
public class FragmentStat_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentStat f7615b;

    /* renamed from: c */
    public View f7616c;

    /* renamed from: d */
    public View f7617d;

    /* renamed from: e */
    public View f7618e;

    /* renamed from: f */
    public View f7619f;

    /* renamed from: g */
    public View f7620g;

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$a.class */
    public class C2095a implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentStat f7621a;

        public C2095a(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7621a = fragmentStat;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7621a.onItemClick(view, i);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$b.class */
    public class C2096b implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentStat f7622a;

        public C2096b(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7622a = fragmentStat;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return this.f7622a.onItemLongClick(i);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$c.class */
    public class C2097c extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentStat f7623c;

        public C2097c(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7623c = fragmentStat;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7623c.onClearClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$d.class */
    public class C2098d extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentStat f7624c;

        public C2098d(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7624c = fragmentStat;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7624c.filterClick(view);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$e.class */
    public class C2099e extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentStat f7625c;

        public C2099e(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7625c = fragmentStat;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7625c.onClearStatClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat_ViewBinding$f */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat_ViewBinding$f.class */
    public class C2100f extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentStat f7626c;

        public C2100f(FragmentStat_ViewBinding fragmentStat_ViewBinding, FragmentStat fragmentStat) {
            this.f7626c = fragmentStat;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7626c.onBlockedTextViewClick();
        }
    }

    public FragmentStat_ViewBinding(FragmentStat fragmentStat, View view) {
        this.f7615b = fragmentStat;
        fragmentStat.tv_blocked = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297179, "field 'tv_blocked'"), 2131297179, "field 'tv_blocked'", TextView.class);
        fragmentStat.tv_checked = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297181, "field 'tv_checked'"), 2131297181, "field 'tv_checked'", TextView.class);
        View m7347b = C0815c.m7347b(view, 2131296734, "field 'mList', method 'onItemClick', and method 'onItemLongClick'");
        fragmentStat.mList = (ListView) C0815c.m7348a(m7347b, 2131296734, "field 'mList'", ListView.class);
        this.f7616c = m7347b;
        AdapterView adapterView = (AdapterView) m7347b;
        adapterView.setOnItemClickListener(new C2095a(this, fragmentStat));
        adapterView.setOnItemLongClickListener(new C2096b(this, fragmentStat));
        fragmentStat.tv_empty = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297184, "field 'tv_empty'"), 2131297184, "field 'tv_empty'", TextView.class);
        fragmentStat.progress = (ProgressBar) C0815c.m7348a(C0815c.m7347b(view, 2131296957, "field 'progress'"), 2131296957, "field 'progress'", ProgressBar.class);
        fragmentStat.swipeRefreshLayout = (SwipeRefreshLayout) C0815c.m7348a(C0815c.m7347b(view, 2131297059, "field 'swipeRefreshLayout'"), 2131297059, "field 'swipeRefreshLayout'", SwipeRefreshLayout.class);
        View m7347b2 = C0815c.m7347b(view, 2131296600, "field 'fab_clear' and method 'onClearClick'");
        fragmentStat.fab_clear = (FloatingActionButton) C0815c.m7348a(m7347b2, 2131296600, "field 'fab_clear'", FloatingActionButton.class);
        this.f7617d = m7347b2;
        m7347b2.setOnClickListener(new C2097c(this, fragmentStat));
        View m7347b3 = C0815c.m7347b(view, 2131296618, "field 'filterImageView' and method 'filterClick'");
        fragmentStat.filterImageView = (ImageView) C0815c.m7348a(m7347b3, 2131296618, "field 'filterImageView'", ImageView.class);
        this.f7618e = m7347b3;
        m7347b3.setOnClickListener(new C2098d(this, fragmentStat));
        View m7347b4 = C0815c.m7347b(view, 2131296479, "method 'onClearStatClick'");
        this.f7619f = m7347b4;
        m7347b4.setOnClickListener(new C2099e(this, fragmentStat));
        View m7347b5 = C0815c.m7347b(view, 2131296371, "method 'onBlockedTextViewClick'");
        this.f7620g = m7347b5;
        m7347b5.setOnClickListener(new C2100f(this, fragmentStat));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentStat fragmentStat = this.f7615b;
        if (fragmentStat != null) {
            this.f7615b = null;
            fragmentStat.tv_blocked = null;
            fragmentStat.tv_checked = null;
            fragmentStat.mList = null;
            fragmentStat.tv_empty = null;
            fragmentStat.progress = null;
            fragmentStat.swipeRefreshLayout = null;
            fragmentStat.fab_clear = null;
            fragmentStat.filterImageView = null;
            ((AdapterView) this.f7616c).setOnItemClickListener(null);
            ((AdapterView) this.f7616c).setOnItemLongClickListener(null);
            this.f7616c = null;
            this.f7617d.setOnClickListener(null);
            this.f7617d = null;
            this.f7618e.setOnClickListener(null);
            this.f7618e = null;
            this.f7619f.setOnClickListener(null);
            this.f7619f = null;
            this.f7620g.setOnClickListener(null);
            this.f7620g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
