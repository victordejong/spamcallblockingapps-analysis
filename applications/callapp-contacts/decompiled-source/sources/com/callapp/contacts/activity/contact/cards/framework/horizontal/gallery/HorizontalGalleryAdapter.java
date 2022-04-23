package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter.class */
public abstract class HorizontalGalleryAdapter<DataItem, ItemViewHolder extends RecyclerView.v> extends RecyclerView.a<ItemViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    AdapterView.OnItemClickListener f11864a;

    /* renamed from: b  reason: collision with root package name */
    AdapterView.OnItemLongClickListener f11865b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f11866c;

    /* renamed from: d  reason: collision with root package name */
    private final List<DataItem> f11867d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HorizontalGalleryAdapter(List<DataItem> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        Object obj = new Object();
        this.f11866c = obj;
        synchronized (obj) {
            if (list != null) {
                this.f11867d = new ArrayList(list);
            } else {
                this.f11867d = new ArrayList();
            }
        }
        this.f11864a = onItemClickListener;
        this.f11865b = onItemLongClickListener;
    }

    public final void a(Collection<DataItem> collection, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        boolean addAll;
        synchronized (this.f11866c) {
            this.f11867d.clear();
            this.f11864a = onItemClickListener;
            this.f11865b = onItemLongClickListener;
            if (CollectionUtils.b(collection)) {
                synchronized (this.f11866c) {
                    addAll = this.f11867d.addAll(collection);
                }
                if (addAll) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            HorizontalGalleryAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            } else {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        HorizontalGalleryAdapter.this.notifyDataSetChanged();
                    }
                });
            }
        }
    }

    public DataItem getItem(int i) {
        synchronized (this.f11866c) {
            if (i >= 0) {
                if (i < this.f11867d.size()) {
                    return this.f11867d.get(i);
                }
            }
            return null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f11867d.size();
    }

    public List<DataItem> getItems() {
        return this.f11867d;
    }
}
