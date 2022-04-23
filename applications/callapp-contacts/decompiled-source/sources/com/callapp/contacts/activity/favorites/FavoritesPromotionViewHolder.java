package com.callapp.contacts.activity.favorites;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.widget.ProfilePictureView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.EnumSet;
import kotlin.Metadata;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\b\u0018\u00010\fR\u00020\rH\u0014J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003J\u0010\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0014J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0019"}, d2 = {"Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;", "Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "promotionCardBackground", "Landroid/widget/ImageView;", "promotionCardCTA", "Landroid/widget/TextView;", "promotionCardImage", "promotionCardText", "createAdapterDataLoadTask", "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;", "Lcom/callapp/contacts/activity/base/BaseContactHolder;", "flip", "", "view", "getLoaderLoadFields", "Ljava/util/EnumSet;", "Lcom/callapp/contacts/model/contact/ContactField;", "getProfilePicture", "Lcom/callapp/contacts/widget/ProfilePictureView;", "onBind", "jsonStickyData", "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder.class */
public final class FavoritesPromotionViewHolder extends BaseFavoriteViewHolder {
    TextView w;
    ImageView x;
    TextView y;
    ImageView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FavoritesPromotionViewHolder(View itemView) {
        super(itemView, 2131363123, false);
        p.d(itemView, "itemView");
        View findViewById = itemView.findViewById(2131363595);
        p.b(findViewById, "itemView.findViewById<Te…>(R.id.promotionCardText)");
        this.w = (TextView) findViewById;
        View findViewById2 = itemView.findViewById(2131363594);
        p.b(findViewById2, "itemView.findViewById<Im…(R.id.promotionCardImage)");
        this.x = (ImageView) findViewById2;
        View findViewById3 = itemView.findViewById(2131363593);
        p.b(findViewById3, "itemView.findViewById<Te…w>(R.id.promotionCardCTA)");
        this.y = (TextView) findViewById3;
        View findViewById4 = itemView.findViewById(2131363592);
        p.b(findViewById4, "itemView.findViewById<Im….promotionCardBackground)");
        this.z = (ImageView) findViewById4;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, android.animation.ObjectAnimator] */
    public static void a(final View view) {
        p.d(view, "view");
        final ab.e eVar = new ab.e();
        eVar.f36780a = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, BitmapDescriptorFactory.HUE_RED);
        ObjectAnimator oa1 = (ObjectAnimator) eVar.f36780a;
        p.b(oa1, "oa1");
        oa1.setInterpolator(new DecelerateInterpolator());
        ((ObjectAnimator) eVar.f36780a).addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.favorites.FavoritesPromotionViewHolder$flip$1
            /* JADX WARN: Type inference failed for: r1v3, types: [T, android.animation.ObjectAnimator] */
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ab.e.this.f36780a = ObjectAnimator.ofFloat(view, "scaleX", BitmapDescriptorFactory.HUE_RED, 1.0f);
                ObjectAnimator oa12 = (ObjectAnimator) ab.e.this.f36780a;
                p.b(oa12, "oa1");
                oa12.setInterpolator(new AccelerateDecelerateInterpolator());
                ObjectAnimator oa13 = (ObjectAnimator) ab.e.this.f36780a;
                p.b(oa13, "oa1");
                oa13.setDuration(250L);
                ((ObjectAnimator) ab.e.this.f36780a).start();
            }
        });
        ((ObjectAnimator) eVar.f36780a).start();
        ObjectAnimator oa12 = (ObjectAnimator) eVar.f36780a;
        p.b(oa12, "oa1");
        oa12.setDuration(250L);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final EnumSet<ContactField> getLoaderLoadFields() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final ProfilePictureView getProfilePicture() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return null;
    }
}
