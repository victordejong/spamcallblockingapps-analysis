package com.cocosw.bottomsheet;

import android.content.DialogInterface;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import java.util.Objects;
/* renamed from: com.cocosw.bottomsheet.f */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/f.class */
public class C1597f implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ ClosableSlidingLayout f5917a;

    /* renamed from: b */
    public final /* synthetic */ DialogC1599h f5918b;

    public C1597f(DialogC1599h dialogC1599h, ClosableSlidingLayout closableSlidingLayout) {
        this.f5918b = dialogC1599h;
        this.f5917a = closableSlidingLayout;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (((MenuItem) this.f5918b.f5930k.getItem(i)).getItemId() == 2131296392) {
            DialogC1599h.m4859a(this.f5918b);
            this.f5917a.f5889k = false;
            return;
        }
        if (!((MenuItemC1592b) this.f5918b.f5930k.getItem(i)).m4861c()) {
            Objects.requireNonNull(this.f5918b.f5931l);
            DialogC1599h dialogC1599h = this.f5918b;
            DialogInterface.OnClickListener onClickListener = dialogC1599h.f5931l.f5947e;
            if (onClickListener != null) {
                onClickListener.onClick(dialogC1599h, ((MenuItem) dialogC1599h.f5930k.getItem(i)).getItemId());
            }
        }
        this.f5918b.dismiss();
    }
}
