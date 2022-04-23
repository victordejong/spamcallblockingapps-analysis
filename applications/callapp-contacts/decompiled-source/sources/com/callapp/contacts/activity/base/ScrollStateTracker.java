package com.callapp.contacts.activity.base;

import android.widget.AbsListView;
import android.widget.ListView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/ScrollStateTracker.class */
public class ScrollStateTracker implements ScrollEvents {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11164a = false;

    @Override // com.callapp.contacts.activity.base.ScrollEvents
    public boolean isScrolling() {
        return this.f11164a;
    }

    public void setListView(ListView listView) {
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.callapp.contacts.activity.base.ScrollStateTracker.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 0) {
                    ScrollStateTracker.this.f11164a = false;
                } else if (i == 1) {
                    ScrollStateTracker.this.f11164a = true;
                } else if (i == 2) {
                    ScrollStateTracker.this.f11164a = true;
                }
            }
        });
    }
}
