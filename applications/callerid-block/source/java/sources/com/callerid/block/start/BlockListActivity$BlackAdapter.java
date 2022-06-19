package com.callerid.block.start;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0334p;
import androidx.fragment.app.Fragment;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.R$string;
import com.callerid.block.R$style;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.util.C1210r0;
import com.rey.material.app.C2824a;
import com.rey.material.widget.ImageButton;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$BlackAdapter.class */
public class BlockListActivity$BlackAdapter extends BaseAdapter {

    /* renamed from: b */
    private List<EZBlackList> f4895b;

    /* renamed from: c */
    private Context f4896c;

    /* renamed from: d */
    C1154b f4897d;

    /* renamed from: e */
    final /* synthetic */ BlockListActivity f4898e;

    /* renamed from: com.callerid.block.start.BlockListActivity$BlackAdapter$2 */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$BlackAdapter$2.class */
    class View$OnClickListenerC11522 implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f4899b;

        View$OnClickListenerC11522(int i) {
            BlockListActivity$BlackAdapter.this = r4;
            this.f4899b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            1 r0 = new 1(this, (int) R$style.SimpleDialogLight);
            r0.m1520f(R$layout.view_dialog_block);
            r0.m1517n("");
            r0.m1519g("");
            Fragment m1467K1 = C2824a.m1467K1(r0);
            AbstractC0334p m13186i = BlockListActivity$BlackAdapter.this.f4898e.v().m13186i();
            m13186i.m13093d(m1467K1, View$OnClickListenerC11522.class.getSimpleName());
            m13186i.m13089h();
        }
    }

    /* renamed from: com.callerid.block.start.BlockListActivity$BlackAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$BlackAdapter$a.class */
    class View$OnClickListenerC1153a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ int f4901b;

        /* renamed from: c */
        final /* synthetic */ EZBlackList f4902c;

        View$OnClickListenerC1153a(int i, EZBlackList eZBlackList) {
            BlockListActivity$BlackAdapter.this = r4;
            this.f4901b = i;
            this.f4902c = eZBlackList;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockListActivity$BlackAdapter.this.m9936e(this.f4901b, this.f4902c);
        }
    }

    /* renamed from: com.callerid.block.start.BlockListActivity$BlackAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$BlackAdapter$b.class */
    class C1154b {

        /* renamed from: a */
        TextView f4904a;

        /* renamed from: b */
        TextView f4905b;

        /* renamed from: c */
        FrameLayout f4906c;

        /* renamed from: d */
        ImageButton f4907d;

        C1154b(BlockListActivity$BlackAdapter blockListActivity$BlackAdapter) {
        }
    }

    private BlockListActivity$BlackAdapter(BlockListActivity blockListActivity, Context context, List<EZBlackList> list) {
        this.f4898e = blockListActivity;
        this.f4895b = new ArrayList();
        this.f4895b = list;
        this.f4896c = context;
    }

    /* synthetic */ BlockListActivity$BlackAdapter(BlockListActivity blockListActivity, Context context, List list, BlockListActivity$a blockListActivity$a) {
        this(blockListActivity, context, list);
    }

    /* renamed from: a */
    public static /* synthetic */ void m9940a(BlockListActivity$BlackAdapter blockListActivity$BlackAdapter, List list) {
        blockListActivity$BlackAdapter.m9935f(list);
    }

    /* renamed from: e */
    public void m9936e(int i, EZBlackList eZBlackList) {
        4 r0 = new 4(this, (int) R$style.SimpleDialogLight, eZBlackList, i);
        r0.m1517n(this.f4898e.getResources().getString(R$string.update_dialog_ok));
        r0.m1519g(this.f4898e.getResources().getString(R$string.cancel_dialog));
        r0.m1477p(this.f4898e.getResources().getString(R$string.delete_this_block));
        r0.m1476q(C1210r0.m9624b());
        Fragment m1467K1 = C2824a.m1467K1(r0);
        AbstractC0334p m13186i = this.f4898e.v().m13186i();
        m13186i.m13093d(m1467K1, BlockListActivity$BlackAdapter.class.getSimpleName());
        m13186i.m13089h();
    }

    /* renamed from: f */
    public void m9935f(List<EZBlackList> list) {
        List<EZBlackList> list2 = this.f4895b;
        if (list2 != null && list2.size() != 0) {
            List<EZBlackList> list3 = this.f4895b;
            list3.removeAll(list3);
        }
        this.f4895b = list;
        notifyDataSetChanged();
    }

    /* renamed from: d */
    public void m9937d(View view, int i) {
        try {
            EZBlackList eZBlackList = this.f4895b.get(i);
            switch (view.getId()) {
                case R$id.block_delete /* 2131296363 */:
                    m9936e(i, eZBlackList);
                    break;
                case R$id.block_edit /* 2131296364 */:
                    3 r0 = new 3(this, (int) R$style.SimpleDialogLight, eZBlackList);
                    r0.m1520f(R$layout.view_dialog_block_edit);
                    r0.m1517n(this.f4898e.getResources().getString(R$string.save_small));
                    r0.m1519g(this.f4898e.getResources().getString(R$string.cancel_dialog));
                    r0.m1516o(this.f4898e.getResources().getString(R$string.block_edit));
                    Fragment m1467K1 = C2824a.m1467K1(r0);
                    AbstractC0334p m13186i = this.f4898e.v().m13186i();
                    m13186i.m13093d(m1467K1, getClass().getSimpleName());
                    m13186i.m13089h();
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4895b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4895b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        String str;
        if (view == null) {
            this.f4897d = new C1154b(this);
            view = LayoutInflater.from(this.f4896c).inflate(R$layout.block_item, (ViewGroup) null);
            this.f4897d.f4904a = (TextView) view.findViewById(R$id.block_name);
            this.f4897d.f4905b = (TextView) view.findViewById(R$id.block_number);
            this.f4897d.f4904a.setTypeface(this.f4898e.y);
            this.f4897d.f4905b.setTypeface(this.f4898e.y);
            this.f4897d.f4907d = (ImageButton) view.findViewById(R$id.block_icon);
            this.f4897d.f4906c = (FrameLayout) view.findViewById(R$id.ripple_bg);
            view.setTag(this.f4897d);
        } else {
            this.f4897d = (C1154b) view.getTag();
        }
        EZBlackList eZBlackList = this.f4895b.get(i);
        if (eZBlackList.getName() == null || "".equals(eZBlackList.getName())) {
            this.f4897d.f4904a.setVisibility(8);
        } else {
            this.f4897d.f4904a.setVisibility(0);
            this.f4897d.f4904a.setText(eZBlackList.getName());
        }
        if (eZBlackList.getFormat_number() == null || "".equals(eZBlackList.getFormat_number())) {
            textView = this.f4897d.f4905b;
            str = eZBlackList.getNumber();
        } else {
            textView = this.f4897d.f4905b;
            str = eZBlackList.getFormat_number();
        }
        textView.setText(str);
        this.f4897d.f4907d.setOnClickListener(new View$OnClickListenerC1153a(i, eZBlackList));
        this.f4897d.f4906c.setOnClickListener(new View$OnClickListenerC11522(i));
        return view;
    }
}
