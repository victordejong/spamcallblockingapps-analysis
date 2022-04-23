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

    /* renamed from: c  reason: collision with root package name */
    private int f11891c;

    public PostCallGalleryAdapter(List<PostCallCardItem> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener, int i) {
        super(list, onItemClickListener, onItemLongClickListener);
        this.f11891c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(RecyclerView.v vVar, int i) {
        final ImageViewGalleryItemViewHolder imageViewGalleryItemViewHolder = (ImageViewGalleryItemViewHolder) vVar;
        imageViewGalleryItemViewHolder.r.setImageResource(getItems().get(i).getPostCallContactAction().getLargeIcon());
        if (this.f11864a != null) {
            imageViewGalleryItemViewHolder.r.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PostCallGalleryAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PostCallGalleryAdapter.this.f11864a.onItemClick(null, view, imageViewGalleryItemViewHolder.getAdapterPosition(), 0L);
                }
            });
        } else {
            imageViewGalleryItemViewHolder.r.setOnClickListener(null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ImageViewGalleryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.f11891c, viewGroup, false));
    }
}
