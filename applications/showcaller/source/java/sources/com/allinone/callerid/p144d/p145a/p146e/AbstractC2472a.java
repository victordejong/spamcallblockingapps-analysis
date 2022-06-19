package com.allinone.callerid.p144d.p145a.p146e;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.d.a.e.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/e/a.class */
public abstract class AbstractC2472a<T> extends RecyclerView.Adapter {

    /* renamed from: d */
    protected ArrayList<T> f8790d = new ArrayList<>();

    /* renamed from: e */
    protected LayoutInflater f8791e;

    public AbstractC2472a(Context context) {
        this.f8791e = LayoutInflater.from(context);
    }

    /* renamed from: A */
    public void m27281A(ArrayList<T> arrayList, boolean z) {
        if (arrayList != null) {
            if (z) {
                this.f8790d.clear();
            }
            this.f8790d.addAll(arrayList);
        }
    }

    /* renamed from: B */
    public ArrayList<T> m27280B() {
        return this.f8790d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        ArrayList<T> arrayList = this.f8790d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
