package com.callapp.contacts.activity.base;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseContactHolder;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppViewHolder.class */
public abstract class BaseCallAppViewHolder extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    protected BaseContactHolder.OnDataLoadListener f20271r;

    public BaseCallAppViewHolder(View view) {
        super(view);
    }

    public void setBackgroundColor(int i) {
        this.itemView.setBackgroundColor(i);
    }
}
