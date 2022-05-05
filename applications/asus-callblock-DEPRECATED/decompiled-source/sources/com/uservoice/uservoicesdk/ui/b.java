package com.uservoice.uservoicesdk.ui;

import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/b.class */
public abstract class b extends BaseAdapter implements ViewGroup.OnHierarchyChangeListener, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected EditText f4774a;

    public final boolean a() {
        return (this.f4774a == null || this.f4774a.getText().toString().length() == 0) ? false : true;
    }

    protected abstract void doSubmit();
}
