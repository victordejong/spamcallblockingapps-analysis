package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.AbstractC2657v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter.class */
public abstract class HorizontalGalleryAdapter<DataItem, ItemViewHolder extends RecyclerView.AbstractC2657v> extends RecyclerView.AbstractC2626a<ItemViewHolder> {

    /* renamed from: a */
    AdapterView.OnItemClickListener f21377a;

    /* renamed from: b */
    AdapterView.OnItemLongClickListener f21378b;

    /* renamed from: c */
    private final Object f21379c;

    /* renamed from: d */
    private final List<DataItem> f21380d;

    public HorizontalGalleryAdapter(List<DataItem> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        Object obj = new Object();
        this.f21379c = obj;
        synchronized (obj) {
            if (list != null) {
                this.f21380d = new ArrayList(list);
            } else {
                this.f21380d = new ArrayList();
            }
        }
        this.f21377a = onItemClickListener;
        this.f21378b = onItemLongClickListener;
    }

    /* renamed from: a */
    public final void m31135a(Collection<DataItem> collection, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        boolean addAll;
        synchronized (this.f21379c) {
            this.f21380d.clear();
            this.f21377a = onItemClickListener;
            this.f21378b = onItemLongClickListener;
            if (CollectionUtils.m26068b(collection)) {
                synchronized (this.f21379c) {
                    addAll = this.f21380d.addAll(collection);
                }
                if (addAll) {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            HorizontalGalleryAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            } else {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        HorizontalGalleryAdapter.this.notifyDataSetChanged();
                    }
                });
            }
        }
    }

    public DataItem getItem(int i) {
        synchronized (this.f21379c) {
            if (i >= 0) {
                if (i < this.f21380d.size()) {
                    return this.f21380d.get(i);
                }
            }
            return null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f21380d.size();
    }

    public List<DataItem> getItems() {
        return this.f21380d;
    }
}
