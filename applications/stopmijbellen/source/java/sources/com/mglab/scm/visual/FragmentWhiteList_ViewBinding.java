package com.mglab.scm.visual;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.Unbinder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList_ViewBinding.class */
public class FragmentWhiteList_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentWhiteList f7635b;

    /* renamed from: c */
    public View f7636c;

    /* renamed from: d */
    public View f7637d;

    /* renamed from: com.mglab.scm.visual.FragmentWhiteList_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList_ViewBinding$a.class */
    public class C2102a implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentWhiteList f7638a;

        public C2102a(FragmentWhiteList_ViewBinding fragmentWhiteList_ViewBinding, FragmentWhiteList fragmentWhiteList) {
            this.f7638a = fragmentWhiteList;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7638a.onItemClick(view, i);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentWhiteList_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList_ViewBinding$b.class */
    public class C2103b implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentWhiteList f7639a;

        public C2103b(FragmentWhiteList_ViewBinding fragmentWhiteList_ViewBinding, FragmentWhiteList fragmentWhiteList) {
            this.f7639a = fragmentWhiteList;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7639a.onListItemLongClick(i);
            return true;
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentWhiteList_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList_ViewBinding$c.class */
    public class C2104c extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentWhiteList f7640c;

        public C2104c(FragmentWhiteList_ViewBinding fragmentWhiteList_ViewBinding, FragmentWhiteList fragmentWhiteList) {
            this.f7640c = fragmentWhiteList;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7640c.onFabClearSelectedClick();
        }
    }

    public FragmentWhiteList_ViewBinding(FragmentWhiteList fragmentWhiteList, View view) {
        this.f7635b = fragmentWhiteList;
        View m7347b = C0815c.m7347b(view, 2131296733, "field 'mList', method 'onItemClick', and method 'onListItemLongClick'");
        fragmentWhiteList.mList = (ListView) C0815c.m7348a(m7347b, 2131296733, "field 'mList'", ListView.class);
        this.f7636c = m7347b;
        AdapterView adapterView = (AdapterView) m7347b;
        adapterView.setOnItemClickListener(new C2102a(this, fragmentWhiteList));
        adapterView.setOnItemLongClickListener(new C2103b(this, fragmentWhiteList));
        fragmentWhiteList.emptyTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297184, "field 'emptyTextView'"), 2131297184, "field 'emptyTextView'", TextView.class);
        View m7347b2 = C0815c.m7347b(view, 2131296601, "field 'fab_clear_selected' and method 'onFabClearSelectedClick'");
        fragmentWhiteList.fab_clear_selected = (FloatingActionButton) C0815c.m7348a(m7347b2, 2131296601, "field 'fab_clear_selected'", FloatingActionButton.class);
        this.f7637d = m7347b2;
        m7347b2.setOnClickListener(new C2104c(this, fragmentWhiteList));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentWhiteList fragmentWhiteList = this.f7635b;
        if (fragmentWhiteList != null) {
            this.f7635b = null;
            fragmentWhiteList.mList = null;
            fragmentWhiteList.emptyTextView = null;
            fragmentWhiteList.fab_clear_selected = null;
            ((AdapterView) this.f7636c).setOnItemClickListener(null);
            ((AdapterView) this.f7636c).setOnItemLongClickListener(null);
            this.f7636c = null;
            this.f7637d.setOnClickListener(null);
            this.f7637d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
