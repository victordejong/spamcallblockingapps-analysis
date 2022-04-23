package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter.class */
public class PhotoGalleryAdapter<Data extends HorizontalCircleImageGalleryCard.PhotoPresentableData> extends HorizontalGalleryAdapter<Data, PhotoGalleryItemViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private int f11878c;

    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1.class */
    class AnonymousClass1 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HorizontalCircleImageGalleryCard.PhotoPresentableData f11879a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ProfilePictureView f11880b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f11881c;

        /* renamed from: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1.class */
        class RunnableC02261 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f11883a;

            RunnableC02261(boolean z) {
                this.f11883a = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!AnonymousClass1.this.isCancelled()) {
                    ProfilePictureView profilePictureView = AnonymousClass1.this.f11880b;
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(AnonymousClass1.this.f11881c);
                    glideRequestBuilder.l = true;
                    glideRequestBuilder.k = this.f11883a ? VastError.ERROR_CODE_GENERAL_WRAPPER : 0;
                    glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.1.1.1
                        @Override // com.bumptech.glide.e.g
                        public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                            CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.1.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass1.this.f11880b.a();
                                }
                            });
                            return false;
                        }

                        @Override // com.bumptech.glide.e.g
                        public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                            return false;
                        }
                    };
                    profilePictureView.a(glideRequestBuilder);
                }
            }
        }

        AnonymousClass1(HorizontalCircleImageGalleryCard.PhotoPresentableData photoPresentableData, ProfilePictureView profilePictureView, String str) {
            this.f11879a = photoPresentableData;
            this.f11880b = profilePictureView;
            this.f11881c = str;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (!this.f11879a.isDefaultProfileImageUrl()) {
                CallAppApplication.get().d(new RunnableC02261(getMiilisSinceTaskCreation() > 10));
            }
        }
    }

    public PhotoGalleryAdapter(List<Data> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener, int i) {
        super(list, onItemClickListener, onItemLongClickListener);
        this.f11878c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(RecyclerView.v vVar, int i) {
        final PhotoGalleryItemViewHolder photoGalleryItemViewHolder = (PhotoGalleryItemViewHolder) vVar;
        HorizontalCircleImageGalleryCard.PhotoPresentableData photoPresentableData = (HorizontalCircleImageGalleryCard.PhotoPresentableData) getItems().get(i);
        if (photoGalleryItemViewHolder.r != null) {
            photoGalleryItemViewHolder.r.cancel();
        }
        if (photoPresentableData == null) {
            CLog.a(PhotoGalleryAdapter.class, "data is null for position: ".concat(String.valueOf(i)));
            return;
        }
        ProfilePictureView picView = photoGalleryItemViewHolder.getPicView();
        String imageUrl = photoPresentableData.getImageUrl();
        if (StringUtils.a((CharSequence) imageUrl)) {
            if (photoPresentableData.getResourcePhoto() != 0) {
                GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(photoPresentableData.getResourcePhoto()).a(photoPresentableData.getIconColorFilter(), PorterDuff.Mode.SRC_IN);
                a2.g = photoPresentableData.getBackgroundColor();
                a2.q = photoPresentableData.dontTransform();
                GlideUtils.GlideRequestBuilder b2 = a2.b(photoPresentableData.getBorderWidth(), photoPresentableData.getBorderColor());
                b2.l = true;
                b2.i = photoPresentableData.getIconPadding();
                picView.a(b2);
            } else {
                picView.a();
            }
        } else if (!StringUtils.b(imageUrl, picView.f16553a)) {
            if (photoPresentableData.getResourcePhoto() != 0) {
                GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(photoPresentableData.getResourcePhoto()).a(photoPresentableData.getIconColorFilter(), PorterDuff.Mode.SRC_IN);
                a3.g = photoPresentableData.getBackgroundColor();
                GlideUtils.GlideRequestBuilder b3 = a3.b(photoPresentableData.getBorderWidth(), photoPresentableData.getBorderColor());
                b3.q = photoPresentableData.dontTransform();
                b3.l = true;
                b3.i = photoPresentableData.getIconPadding();
                picView.a(b3);
            } else {
                picView.a();
            }
            photoGalleryItemViewHolder.setTask(new AnonymousClass1(photoPresentableData, picView, imageUrl));
            if (photoGalleryItemViewHolder.r != null) {
                photoGalleryItemViewHolder.r.execute();
            }
        }
        if (this.f11864a != null) {
            picView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PhotoGalleryAdapter.this.f11864a.onItemClick(null, view, photoGalleryItemViewHolder.getAdapterPosition(), 0L);
                }
            });
        } else {
            picView.setOnClickListener(null);
        }
        if (this.f11865b != null) {
            picView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    PhotoGalleryAdapter.this.f11865b.onItemLongClick(null, view, photoGalleryItemViewHolder.getAdapterPosition(), 0L);
                    return true;
                }
            });
        } else {
            picView.setOnLongClickListener(null);
        }
        picView.setText(StringUtils.r(photoPresentableData.getName()));
        picView.a(photoPresentableData.getBadgeResourceId() != 0);
        picView.a(ViewUtils.getDrawable(photoPresentableData.getBadgeResourceId()));
        if (photoPresentableData.getBadgeTintColor() != 0) {
            picView.a(photoPresentableData.getBadgeTintColor(), true);
        }
        picView.a(photoPresentableData.getBadgeBackgroundColor());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new PhotoGalleryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.f11878c, viewGroup, false));
    }
}
