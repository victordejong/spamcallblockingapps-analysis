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
public class IdentifyContactsViewHolder extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    CardView f23085r;

    /* renamed from: s */
    ProfilePictureView f23086s;

    /* renamed from: t */
    TextView f23087t;

    /* renamed from: u */
    View f23088u;

    /* renamed from: v */
    TextView f23089v;

    /* renamed from: w */
    TextView f23090w;

    /* renamed from: x */
    IdentifyContactsData f23091x;

    /* renamed from: y */
    int f23092y = (int) CallAppApplication.get().getResources().getDimension(2131165571);

    /* renamed from: z */
    private TextView f23093z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask.class */
    public class IdentifyContactsTask extends Task {

        /* renamed from: b */
        private IdentifyContactsData f23105b;

        public IdentifyContactsTask(IdentifyContactsData identifyContactsData) {
            IdentifyContactsViewHolder.this = r4;
            this.f23105b = identifyContactsData;
        }

        /* renamed from: a */
        public boolean m30231a(long j, Phone phone) {
            return IdentifyContactsViewHolder.this.f23091x.getSuggestedContactId() == j && IdentifyContactsViewHolder.this.f23091x.getSuggestedPhone().equals(phone);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final ContactData load = new ContactLoader().addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setDisableContactEvents().setLoadOnlyFromCache().addFields(ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS).load(this.f23105b.getSuggestedPhone(), this.f23105b.getSuggestedContactId());
            load.updateFullName();
            if (m30231a(load.getDeviceId(), load.getPhone())) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.IdentifyContactsTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (IdentifyContactsTask.this.m30231a(load.getDeviceId(), load.getPhone())) {
                            String m26020j = StringUtils.m26020j(load.getFullName());
                            IdentifyContactsViewHolder.this.f23091x.setLoadedName(m26020j);
                            IdentifyContactsViewHolder.this.f23093z.setText(m26020j);
                            IdentifyContactsViewHolder.this.f23086s.setText(StringUtils.m26010r(load.getFullName()));
                            String thumbnailUrl = load.getThumbnailUrl();
                            if (!StringUtils.m26045b((CharSequence) thumbnailUrl)) {
                                IdentifyContactsViewHolder.this.f23086s.m26688a();
                                IdentifyContactsViewHolder.this.f23086s.setBorder(ThemeUtils.getColor(2131099784), CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696));
                                return;
                            }
                            ProfilePictureView profilePictureView = IdentifyContactsViewHolder.this.f23086s;
                            GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(thumbnailUrl).m27023a(load.getPhotoDataSource());
                            m27023a.f28244j = true;
                            GlideUtils.GlideRequestBuilder m27018b = m27023a.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696), ThemeUtils.getColor(2131099784));
                            m27018b.f28246l = true;
                            profilePictureView.m26684a(m27018b);
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
        this.f23085r = (CardView) view.findViewById(2131362261);
        view.findViewById(2131363710).setBackgroundColor(color);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363182);
        TypedArray initialsColors = ImageUtils.getInitialsColors();
        int color3 = initialsColors.getColor(new Random().nextInt(initialsColors.length()), -7829368);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231611);
        glideRequestBuilder.f28246l = true;
        glideRequestBuilder.f28243i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165386);
        GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(-1, PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(color3);
        profilePictureView.m26684a(m27025a);
        ProfilePictureView profilePictureView2 = (ProfilePictureView) view.findViewById(2131363680);
        this.f23086s = profilePictureView2;
        profilePictureView2.m26682a(true, false);
        this.f23086s.m26685a(ViewUtils.getDrawable(2131231569));
        TextView textView = (TextView) view.findViewById(2131364032);
        this.f23093z = textView;
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView2 = (TextView) view.findViewById(2131363500);
        this.f23087t = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        view.findViewById(2131362611).setBackgroundColor(color2);
        this.f23088u = view.findViewById(2131362185);
        TextView textView3 = (TextView) view.findViewById(2131362607);
        this.f23089v = textView3;
        textView3.setText(Activities.getString(2131886778));
        this.f23089v.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView4 = (TextView) view.findViewById(2131363734);
        this.f23090w = textView4;
        textView4.setText(Activities.getString(2131887588));
        this.f23090w.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView5 = this.f23090w;
        textView5.setTypeface(textView5.getTypeface(), 1);
    }

    /* renamed from: a */
    static /* synthetic */ void m30235a(IdentifyContactsViewHolder identifyContactsViewHolder, final IdentifyContactsAdapter.OnIdentifyContactClickListener onIdentifyContactClickListener) {
        final FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) identifyContactsViewHolder.f23086s.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(layoutParams.leftMargin, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.leftMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                IdentifyContactsViewHolder.this.f23086s.requestLayout();
            }
        });
        ofInt.setDuration(300L);
        CallappAnimationUtils.m27181a((View) identifyContactsViewHolder.f23086s, 0, 360, 300L);
        ofInt.start();
        identifyContactsViewHolder.f23088u.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                IdentifyContactsViewHolder.this.f23088u.setVisibility(8);
                int adapterPosition = IdentifyContactsViewHolder.this.getAdapterPosition();
                if (adapterPosition >= 0) {
                    onIdentifyContactClickListener.mo30241a(adapterPosition);
                }
            }
        });
    }
}
