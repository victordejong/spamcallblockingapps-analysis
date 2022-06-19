package com.callerid.block.fragment;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import com.android.boom.C0677c;
import com.callerid.block.R$anim;
import com.callerid.block.main.MainActivity;
import com.callerid.block.mvc.controller.ContactActivity;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1227w;
import d.p.a.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$a.class */
public class a$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ a f4364b;

    /* renamed from: com.callerid.block.fragment.a$a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$a$a.class */
    class C0955a implements AdapterView.OnItemClickListener {
        C0955a() {
            a$a.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MainActivity I1;
            try {
                if (a.M1(a$a.this.f4364b) != null && a.M1(a$a.this.f4364b).size() > 0) {
                    CallLogBean callLogBean = (CallLogBean) a.M1(a$a.this.f4364b).get(i);
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("contact_tony", callLogBean);
                    intent.putExtras(bundle);
                    intent.setClass(a.I1(a$a.this.f4364b), ContactActivity.class);
                    a$a.this.f4364b.z1(intent);
                    I1 = a.I1(a$a.this.f4364b);
                } else if (a.d2(a$a.this.f4364b) == null || a.d2(a$a.this.f4364b).size() <= 0) {
                    return;
                } else {
                    CallLogBean callLogBean2 = (CallLogBean) a.d2(a$a.this.f4364b).get(i);
                    if (C1227w.f5084a) {
                        C1227w.m9527a("favtest", "contact:" + callLogBean2.toString());
                    }
                    Intent intent2 = new Intent();
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("contact_tony", callLogBean2);
                    intent2.putExtras(bundle2);
                    intent2.setClass(a.I1(a$a.this.f4364b), ContactActivity.class);
                    a$a.this.f4364b.z1(intent2);
                    I1 = a.I1(a$a.this.f4364b);
                }
                I1.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.callerid.block.fragment.a$a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$a$b.class */
    class C0956b implements AbsListView.OnScrollListener {
        C0956b(a$a a_a) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    a$a(a aVar) {
        this.f4364b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.K1(this.f4364b);
        a.L1(this.f4364b);
        a.f2(this.f4364b).setOnItemClickListener(new C0955a());
        a.f2(this.f4364b).setOnScrollListener(new C0956b(this));
        try {
            a.P1(this.f4364b, new a$k(this.f4364b, null));
            a.b(a.Q1(this.f4364b)).c(a.O1(this.f4364b), new IntentFilter("com.callerid.block.STARRED_DATA"));
            C0677c.m11446g(a.I1(this.f4364b));
            a.S1(this.f4364b);
            a.T1(this.f4364b, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
