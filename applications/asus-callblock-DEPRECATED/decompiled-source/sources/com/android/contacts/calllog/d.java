package com.android.contacts.calllog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.y;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/d.class */
public final class d extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public String f677a;

    /* renamed from: b  reason: collision with root package name */
    public String f678b;
    public int c;
    public final y[] d;
    private boolean e;
    private boolean f;
    private boolean g;
    private final Context h;
    private final LayoutInflater i;
    private final n j;
    private final boolean k;
    private final boolean l;
    private final View m;
    private final String n;
    private ArrayList<String> o;
    private boolean p;
    private View.OnFocusChangeListener q;

    public d(Context context, LayoutInflater layoutInflater, n nVar, y[] yVarArr, boolean z, boolean z2, View view) {
        this(context, layoutInflater, nVar, yVarArr, z, z2, view, BuildConfig.FLAVOR);
    }

    public d(Context context, LayoutInflater layoutInflater, n nVar, y[] yVarArr, boolean z, boolean z2, View view, String str) {
        this.f677a = null;
        this.f678b = null;
        this.c = 0;
        this.e = false;
        this.p = false;
        this.q = new View.OnFocusChangeListener() { // from class: com.android.contacts.calllog.d.1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z3) {
                if (z3) {
                    d.this.m.requestFocus();
                }
            }
        };
        this.h = context;
        this.i = layoutInflater;
        this.j = nVar;
        this.d = yVarArr;
        this.k = z;
        this.l = z2;
        this.m = view;
        new t(this.h);
        if (!(yVarArr == null || yVarArr.length <= 0 || yVarArr[0] == null)) {
            this.e = t.d(yVarArr[0].f2214a);
        }
        this.n = str;
        this.o = new ArrayList<>();
        if (this.n != null) {
            for (String str2 : this.n.split(",")) {
                this.o.add(str2);
            }
        }
        this.p = PhoneCapabilityTester.isRCSVerizon();
    }

    public final void a(boolean z, boolean z2) {
        this.f = z;
        this.g = z2;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.d.length + 1;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return i == 0 ? null : this.d[i - 1];
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i == 0 ? -1L : i - 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(final int r10, android.view.View r11, android.view.ViewGroup r12) {
        /*
            Method dump skipped, instructions count: 1254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.d.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return false;
    }
}
