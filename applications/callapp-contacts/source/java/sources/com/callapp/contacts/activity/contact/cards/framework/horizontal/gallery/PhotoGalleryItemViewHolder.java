package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryItemViewHolder.class */
public class PhotoGalleryItemViewHolder extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    Task f21431r;

    /* renamed from: s */
    private final ProfilePictureView f21432s;

    public PhotoGalleryItemViewHolder(View view) {
        super(view);
        this.f21432s = (ProfilePictureView) view.findViewById(2131363565);
    }

    public ProfilePictureView getPicView() {
        return this.f21432s;
    }

    public void setTask(Task task) {
        this.f21431r = task;
    }
}
