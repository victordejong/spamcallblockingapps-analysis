package com.callapp.contacts.activity.identify;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.identify.IdentifyContactsAdapter;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsViewHolder.class */
public class IdentifyContactsViewHolder extends RecyclerView.v {
    CardView r;
    ProfilePictureView s;
    TextView t;
    View u;
    TextView v;
    TextView w;
    IdentifyContactsData x;
    int y = (int) CallAppApplication.get().getResources().getDimension(2131165571);
    private TextView z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask.class */
    class IdentifyContactsTask extends Task {

        /* renamed from: b  reason: collision with root package name */
        private IdentifyContactsData f12932b;

        public IdentifyContactsTask(IdentifyContactsData identifyContactsData) {
            this.f12932b = identifyContactsData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(long j, Phone phone) {
            return IdentifyContactsViewHolder.this.x.getSuggestedContactId() == j && IdentifyContactsViewHolder.this.x.getSuggestedPhone().equals(phone);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final ContactData load = new ContactLoader().addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache().addFields(ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS).load(this.f12932b.getSuggestedPhone(), this.f12932b.getSuggestedContactId());
            load.updateFullName();
            if (a(load.getDeviceId(), load.getPhone())) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.IdentifyContactsTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (IdentifyContactsTask.this.a(load.getDeviceId(), load.getPhone())) {
                            String j = StringUtils.j(load.getFullName());
                            IdentifyContactsViewHolder.this.x.setLoadedName(j);
                            IdentifyContactsViewHolder.this.z.setText(j);
                            IdentifyContactsViewHolder.this.s.setText(StringUtils.r(load.getFullName()));
                            String thumbnailUrl = load.getThumbnailUrl();
                            if (StringUtils.b((CharSequence) thumbnailUrl)) {
                                ProfilePictureView profilePictureView = IdentifyContactsViewHolder.this.s;
                                GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(thumbnailUrl).a(load.getPhotoDataSource());
                                a2.j = true;
                                GlideUtils.GlideRequestBuilder b2 = a2.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696), ThemeUtils.getColor(2131099784));
                                b2.l = true;
                                profilePictureView.a(b2);
                                return;
                            }
                            IdentifyContactsViewHolder.this.s.a();
                            IdentifyContactsViewHolder.this.s.setBorder(ThemeUtils.getColor(2131099784), CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696));
                        }
                    }
                });
            }
        }
    }

    public IdentifyContactsViewHolder(View view) {
        super(view);
        int color = ThemeUtils.getColor(2131099686);
        int color2 = ThemeUtils.getColor(2131099891);
        this.r = (CardView) view.findViewById(2131362261);
        view.findViewById(2131363710).setBackgroundColor(color);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363182);
        TypedArray initialsColors = ImageUtils.getInitialsColors();
        int color3 = initialsColors.getColor(new Random().nextInt(initialsColors.length()), -7829368);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231611);
        glideRequestBuilder.l = true;
        glideRequestBuilder.i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165386);
        GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a(-1, PorterDuff.Mode.SRC_IN);
        a2.g = Integer.valueOf(color3);
        profilePictureView.a(a2);
        ProfilePictureView profilePictureView2 = (ProfilePictureView) view.findViewById(2131363680);
        this.s = profilePictureView2;
        profilePictureView2.a(true, false);
        this.s.a(ViewUtils.getDrawable(2131231569));
        TextView textView = (TextView) view.findViewById(2131364032);
        this.z = textView;
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView2 = (TextView) view.findViewById(2131363500);
        this.t = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        view.findViewById(2131362611).setBackgroundColor(color2);
        this.u = view.findViewById(2131362185);
        TextView textView3 = (TextView) view.findViewById(2131362607);
        this.v = textView3;
        textView3.setText(Activities.getString(2131886778));
        this.v.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView4 = (TextView) view.findViewById(2131363734);
        this.w = textView4;
        textView4.setText(Activities.getString(2131887588));
        this.w.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView5 = this.w;
        textView5.setTypeface(textView5.getTypeface(), 1);
    }

    static /* synthetic */ void a(IdentifyContactsViewHolder identifyContactsViewHolder, final IdentifyContactsAdapter.OnIdentifyContactClickListener onIdentifyContactClickListener) {
        final FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) identifyContactsViewHolder.s.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(layoutParams.leftMargin, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.leftMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                IdentifyContactsViewHolder.this.s.requestLayout();
            }
        });
        ofInt.setDuration(300L);
        CallappAnimationUtils.a((View) identifyContactsViewHolder.s, 0, 360, 300L);
        ofInt.start();
        identifyContactsViewHolder.u.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                IdentifyContactsViewHolder.this.u.setVisibility(8);
                int adapterPosition = IdentifyContactsViewHolder.this.getAdapterPosition();
                if (adapterPosition >= 0) {
                    onIdentifyContactClickListener.a(adapterPosition);
                }
            }
        });
    }
}
