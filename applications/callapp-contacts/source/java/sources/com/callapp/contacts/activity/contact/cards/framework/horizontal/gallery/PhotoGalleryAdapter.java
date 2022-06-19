package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter.class */
public class PhotoGalleryAdapter<Data extends HorizontalCircleImageGalleryCard.PhotoPresentableData> extends HorizontalGalleryAdapter<Data, PhotoGalleryItemViewHolder> {

    /* renamed from: c */
    private int f21418c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1.class */
    public class C61061 extends Task {

        /* renamed from: a */
        final /* synthetic */ HorizontalCircleImageGalleryCard.PhotoPresentableData f21419a;

        /* renamed from: b */
        final /* synthetic */ ProfilePictureView f21420b;

        /* renamed from: c */
        final /* synthetic */ String f21421c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter$1$1 */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1.class */
        public class RunnableC61071 implements Runnable {

            /* renamed from: a */
            final /* synthetic */ boolean f21423a;

            RunnableC61071(boolean z) {
                C61061.this = r4;
                this.f21423a = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C61061.this.isCancelled()) {
                    ProfilePictureView profilePictureView = C61061.this.f21420b;
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(C61061.this.f21421c);
                    glideRequestBuilder.f28246l = true;
                    glideRequestBuilder.f28245k = this.f21423a ? 300 : 0;
                    glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.1.1.1
                        @Override // com.bumptech.glide.p112e.AbstractC3604g
                        /* renamed from: a */
                        public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                            CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.1.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C61061.this.f21420b.m26688a();
                                }
                            });
                            return false;
                        }

                        @Override // com.bumptech.glide.p112e.AbstractC3604g
                        /* renamed from: a */
                        public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                            return false;
                        }
                    };
                    profilePictureView.m26684a(glideRequestBuilder);
                }
            }
        }

        C61061(HorizontalCircleImageGalleryCard.PhotoPresentableData photoPresentableData, ProfilePictureView profilePictureView, String str) {
            PhotoGalleryAdapter.this = r4;
            this.f21419a = photoPresentableData;
            this.f21420b = profilePictureView;
            this.f21421c = str;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (!this.f21419a.isDefaultProfileImageUrl()) {
                CallAppApplication.get().m31858d(new RunnableC61071(getMiilisSinceTaskCreation() > 10));
            }
        }
    }

    public PhotoGalleryAdapter(List<Data> list, AdapterView.OnItemClickListener onItemClickListener, AdapterView.OnItemLongClickListener onItemLongClickListener, int i) {
        super(list, onItemClickListener, onItemLongClickListener);
        this.f21418c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        final PhotoGalleryItemViewHolder photoGalleryItemViewHolder = (PhotoGalleryItemViewHolder) abstractC2657v;
        HorizontalCircleImageGalleryCard.PhotoPresentableData photoPresentableData = (HorizontalCircleImageGalleryCard.PhotoPresentableData) getItems().get(i);
        if (photoGalleryItemViewHolder.f21431r != null) {
            photoGalleryItemViewHolder.f21431r.cancel();
        }
        if (photoPresentableData == null) {
            CLog.m27611a(PhotoGalleryAdapter.class, "data is null for position: ".concat(String.valueOf(i)));
            return;
        }
        ProfilePictureView picView = photoGalleryItemViewHolder.getPicView();
        String imageUrl = photoPresentableData.getImageUrl();
        if (StringUtils.m26059a((CharSequence) imageUrl)) {
            if (photoPresentableData.getResourcePhoto() != 0) {
                GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(photoPresentableData.getResourcePhoto()).m27025a(photoPresentableData.getIconColorFilter(), PorterDuff.Mode.SRC_IN);
                m27025a.f28241g = photoPresentableData.getBackgroundColor();
                m27025a.f28251q = photoPresentableData.dontTransform();
                GlideUtils.GlideRequestBuilder m27018b = m27025a.m27018b(photoPresentableData.getBorderWidth(), photoPresentableData.getBorderColor());
                m27018b.f28246l = true;
                m27018b.f28243i = photoPresentableData.getIconPadding();
                picView.m26684a(m27018b);
            } else {
                picView.m26688a();
            }
        } else if (!StringUtils.m26042b(imageUrl, picView.f28791a)) {
            if (photoPresentableData.getResourcePhoto() != 0) {
                GlideUtils.GlideRequestBuilder m27025a2 = new GlideUtils.GlideRequestBuilder(photoPresentableData.getResourcePhoto()).m27025a(photoPresentableData.getIconColorFilter(), PorterDuff.Mode.SRC_IN);
                m27025a2.f28241g = photoPresentableData.getBackgroundColor();
                GlideUtils.GlideRequestBuilder m27018b2 = m27025a2.m27018b(photoPresentableData.getBorderWidth(), photoPresentableData.getBorderColor());
                m27018b2.f28251q = photoPresentableData.dontTransform();
                m27018b2.f28246l = true;
                m27018b2.f28243i = photoPresentableData.getIconPadding();
                picView.m26684a(m27018b2);
            } else {
                picView.m26688a();
            }
            photoGalleryItemViewHolder.setTask(new C61061(photoPresentableData, picView, imageUrl));
            if (photoGalleryItemViewHolder.f21431r != null) {
                photoGalleryItemViewHolder.f21431r.execute();
            }
        }
        if (this.f21377a != null) {
            picView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PhotoGalleryAdapter.this.f21377a.onItemClick(null, view, photoGalleryItemViewHolder.getAdapterPosition(), 0L);
                }
            });
        } else {
            picView.setOnClickListener(null);
        }
        if (this.f21378b != null) {
            picView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    PhotoGalleryAdapter.this.f21378b.onItemLongClick(null, view, photoGalleryItemViewHolder.getAdapterPosition(), 0L);
                    return true;
                }
            });
        } else {
            picView.setOnLongClickListener(null);
        }
        picView.setText(StringUtils.m26010r(photoPresentableData.getName()));
        picView.m26683a(photoPresentableData.getBadgeResourceId() != 0);
        picView.m26685a(ViewUtils.getDrawable(photoPresentableData.getBadgeResourceId()));
        if (photoPresentableData.getBadgeTintColor() != 0) {
            picView.m26686a(photoPresentableData.getBadgeTintColor(), true);
        }
        picView.m26687a(photoPresentableData.getBadgeBackgroundColor());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new PhotoGalleryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.f21418c, viewGroup, false));
    }
}
