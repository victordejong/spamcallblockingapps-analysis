package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.contact.cards.PostCallCardItem;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter.class */
public class PostCallGalleryAdapter extends HorizontalGalleryAdapter<PostCallCardItem, ImageViewGalleryItemViewHolder> {

    /* renamed from: c */
    private int f21433c;

    public PostCallGalleryAdapter(List<PostCallCardItem> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener, int i) {
        super(list, onItemClickListener, onItemLongClickListener);
        this.f21433c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        final ImageViewGalleryItemViewHolder imageViewGalleryItemViewHolder = (ImageViewGalleryItemViewHolder) abstractC2657v;
        imageViewGalleryItemViewHolder.f21417r.setImageResource(getItems().get(i).getPostCallContactAction().getLargeIcon());
        if (this.f21377a != null) {
            imageViewGalleryItemViewHolder.f21417r.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PostCallGalleryAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PostCallGalleryAdapter.this.f21377a.onItemClick(null, view, imageViewGalleryItemViewHolder.getAdapterPosition(), 0L);
                }
            });
        } else {
            imageViewGalleryItemViewHolder.f21417r.setOnClickListener(null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ImageViewGalleryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.f21433c, viewGroup, false));
    }
}
