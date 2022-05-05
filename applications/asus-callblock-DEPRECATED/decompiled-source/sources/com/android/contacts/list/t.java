package com.android.contacts.list;

import android.view.View;
import android.widget.ListView;
import com.android.contacts.widget.e;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/t.class */
public final class t extends e {

    /* renamed from: a  reason: collision with root package name */
    private final ListView f1877a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1878b;

    public t(ListView listView) {
        this.f1877a = listView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.e
    public final void a() {
        int childCount = this.f1877a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.f1877a.getChildAt(i);
            if (childAt instanceof ContactListItemView) {
                ((ContactListItemView) childAt).d().invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.e
    public final void b() {
        this.f1878b = this.f1877a.isScrollingCacheEnabled();
        this.f1877a.setScrollingCacheEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.e
    public final void c() {
        this.f1877a.setScrollingCacheEnabled(this.f1878b);
    }
}
