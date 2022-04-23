package com.callerid.block.mvc.controller;

import android.text.Editable;
import android.text.TextWatcher;
import com.callerid.block.b.l;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SelectContactsActivity$b.class */
class SelectContactsActivity$b implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ SelectContactsActivity f4701b;

    SelectContactsActivity$b(SelectContactsActivity selectContactsActivity) {
        this.f4701b = selectContactsActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l Q;
        try {
            String obj = SelectContactsActivity.T(this.f4701b).getText().toString();
            if (obj.length() > 0) {
                ArrayList arrayList = (ArrayList) SelectContactsActivity.U(this.f4701b, obj);
                if (arrayList != null) {
                    SelectContactsActivity.Q(this.f4701b).x(arrayList, true);
                    Q = SelectContactsActivity.Q(this.f4701b);
                } else {
                    SelectContactsActivity.Q(this.f4701b).x(new ArrayList(), true);
                    Q = SelectContactsActivity.Q(this.f4701b);
                }
            } else if (SelectContactsActivity.R(this.f4701b) != null) {
                SelectContactsActivity.Q(this.f4701b).x(SelectContactsActivity.R(this.f4701b), true);
                Q = SelectContactsActivity.Q(this.f4701b);
            } else {
                return;
            }
            Q.m12833k();
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
