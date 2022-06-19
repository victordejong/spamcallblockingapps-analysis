package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.C1740g;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.u */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/u.class */
public class C1764u implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ MaterialCalendarGridView f6608a;

    /* renamed from: b */
    public final /* synthetic */ C1765v f6609b;

    public C1764u(C1765v c1765v, MaterialCalendarGridView materialCalendarGridView) {
        this.f6609b = c1765v;
        this.f6608a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        C1763t adapter2 = this.f6608a.getAdapter2();
        if (i >= adapter2.m4600b() && i <= adapter2.m4598d()) {
            C1740g.AbstractC1745e abstractC1745e = this.f6609b.f6613f;
            long longValue = this.f6608a.getAdapter2().getItem(i).longValue();
            C1740g.C1744d c1744d = (C1740g.C1744d) abstractC1745e;
            if (!C1740g.this.f6544d.f6507c.mo4625p(longValue)) {
                return;
            }
            C1740g.this.f6543c.m4631P(longValue);
            Iterator it2 = C1740g.this.f6617a.iterator();
            while (it2.hasNext()) {
                ((AbstractC1767w) it2.next()).mo4593a(C1740g.this.f6543c.m4632D());
            }
            C1740g.this.f6549i.getAdapter().f2244a.m7829b();
            RecyclerView recyclerView = C1740g.this.f6548h;
            if (recyclerView == null) {
                return;
            }
            recyclerView.getAdapter().f2244a.m7829b();
        }
    }
}
