package com.callerid.block.fragment;

import android.text.Editable;
import android.text.TextWatcher;
import com.callerid.block.util.C1186k;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$f.class */
class a$f implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ a f4369b;

    a$f(a aVar) {
        this.f4369b = aVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        try {
            String obj = a.X1(this.f4369b).getText().toString();
            if ("".equals(obj)) {
                a.Y1(this.f4369b).setVisibility(4);
            } else {
                a.Y1(this.f4369b).setVisibility(0);
            }
            if (obj.length() > 0) {
                a aVar = this.f4369b;
                a.N1(aVar, (ArrayList) a.Z1(aVar, obj));
                a.R1(this.f4369b).setVisibility(8);
                a.e2(this.f4369b).m10606c(a.M1(this.f4369b), obj);
                C1186k.m9816c().m9812g("contact_search");
            } else {
                a.M1(this.f4369b).clear();
                a.R1(this.f4369b).setVisibility(0);
                a.e2(this.f4369b).m10606c(a.d2(this.f4369b), "");
            }
            a.f2(this.f4369b).setSelection(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
