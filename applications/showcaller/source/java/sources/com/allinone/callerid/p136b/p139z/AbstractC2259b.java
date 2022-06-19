package com.allinone.callerid.p136b.p139z;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.z.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/b.class */
public abstract class AbstractC2259b<T> extends RecyclerView.Adapter {

    /* renamed from: d */
    protected ArrayList<T> f7933d;

    /* renamed from: e */
    protected LayoutInflater f7934e;

    public AbstractC2259b(Context context) {
        this.f7933d = new ArrayList<>();
        this.f7934e = LayoutInflater.from(context);
    }

    public AbstractC2259b(Context context, ArrayList<T> arrayList) {
        this.f7933d = arrayList;
        if (arrayList == null) {
            this.f7933d = new ArrayList<>();
        }
        this.f7934e = LayoutInflater.from(context);
    }

    /* renamed from: A */
    public void m27781A(ArrayList<T> arrayList, boolean z) {
        if (arrayList != null) {
            if (z) {
                this.f7933d.clear();
            }
            this.f7933d.addAll(arrayList);
        }
    }

    /* renamed from: B */
    public void m27780B(T t, boolean z) {
        if (t != null) {
            if (z) {
                this.f7933d.clear();
            }
            this.f7933d.add(0, t);
        }
    }

    /* renamed from: C */
    public ArrayList<T> m27779C() {
        return this.f7933d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        ArrayList<T> arrayList = this.f7933d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
