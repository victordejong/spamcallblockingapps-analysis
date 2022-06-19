package com.mglab.scm.visual;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.Unbinder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList_ViewBinding.class */
public class FragmentBlackList_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentBlackList f7386b;

    /* renamed from: c */
    public View f7387c;

    /* renamed from: d */
    public View f7388d;

    /* renamed from: com.mglab.scm.visual.FragmentBlackList_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList_ViewBinding$a.class */
    public class C1996a implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentBlackList f7389a;

        public C1996a(FragmentBlackList_ViewBinding fragmentBlackList_ViewBinding, FragmentBlackList fragmentBlackList) {
            this.f7389a = fragmentBlackList;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7389a.onListItemClick(view, i);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBlackList_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList_ViewBinding$b.class */
    public class C1997b implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentBlackList f7390a;

        public C1997b(FragmentBlackList_ViewBinding fragmentBlackList_ViewBinding, FragmentBlackList fragmentBlackList) {
            this.f7390a = fragmentBlackList;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7390a.onListItemLongClick(i);
            return true;
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBlackList_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList_ViewBinding$c.class */
    public class C1998c extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBlackList f7391c;

        public C1998c(FragmentBlackList_ViewBinding fragmentBlackList_ViewBinding, FragmentBlackList fragmentBlackList) {
            this.f7391c = fragmentBlackList;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7391c.onFabClearSelectedClick();
        }
    }

    public FragmentBlackList_ViewBinding(FragmentBlackList fragmentBlackList, View view) {
        this.f7386b = fragmentBlackList;
        View m7347b = C0815c.m7347b(view, 2131296733, "field 'mList', method 'onListItemClick', and method 'onListItemLongClick'");
        fragmentBlackList.mList = (ListView) C0815c.m7348a(m7347b, 2131296733, "field 'mList'", ListView.class);
        this.f7387c = m7347b;
        AdapterView adapterView = (AdapterView) m7347b;
        adapterView.setOnItemClickListener(new C1996a(this, fragmentBlackList));
        adapterView.setOnItemLongClickListener(new C1997b(this, fragmentBlackList));
        fragmentBlackList.emptyTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297184, "field 'emptyTextView'"), 2131297184, "field 'emptyTextView'", TextView.class);
        View m7347b2 = C0815c.m7347b(view, 2131296601, "field 'fab_clear_selected' and method 'onFabClearSelectedClick'");
        fragmentBlackList.fab_clear_selected = (FloatingActionButton) C0815c.m7348a(m7347b2, 2131296601, "field 'fab_clear_selected'", FloatingActionButton.class);
        this.f7388d = m7347b2;
        m7347b2.setOnClickListener(new C1998c(this, fragmentBlackList));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentBlackList fragmentBlackList = this.f7386b;
        if (fragmentBlackList != null) {
            this.f7386b = null;
            fragmentBlackList.mList = null;
            fragmentBlackList.emptyTextView = null;
            fragmentBlackList.fab_clear_selected = null;
            ((AdapterView) this.f7387c).setOnItemClickListener(null);
            ((AdapterView) this.f7387c).setOnItemLongClickListener(null);
            this.f7387c = null;
            this.f7388d.setOnClickListener(null);
            this.f7388d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
