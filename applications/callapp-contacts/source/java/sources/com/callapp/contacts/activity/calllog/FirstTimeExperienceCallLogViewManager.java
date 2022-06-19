package com.callapp.contacts.activity.calllog;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager.class */
public class FirstTimeExperienceCallLogViewManager {

    /* renamed from: a */
    View f20748a;

    /* renamed from: b */
    View f20749b;

    /* renamed from: c */
    View f20750c;

    /* renamed from: d */
    View f20751d;

    /* renamed from: e */
    View f20752e;

    /* renamed from: f */
    View f20753f;

    /* renamed from: g */
    View f20754g;

    /* renamed from: h */
    View f20755h;

    /* renamed from: i */
    View f20756i;

    /* renamed from: j */
    View f20757j;

    /* renamed from: k */
    View f20758k;

    /* renamed from: l */
    TextView f20759l;

    /* renamed from: m */
    TextView f20760m;

    /* renamed from: n */
    TextView f20761n;

    /* renamed from: a */
    private static void m31322a(View view, String str, int i, int i2) {
        m31321a(view, str, i, i2, false);
    }

    /* renamed from: a */
    private static void m31321a(View view, String str, int i, int i2, boolean z) {
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            if (!StringUtils.m26045b((CharSequence) str)) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(StringUtils.m26049a(str, new char[0]));
            textView.setTextColor(i2);
            textView.setVisibility(0);
            if (!z) {
                return;
            }
            textView.setTypeface(null, 1);
        }
    }

    /* renamed from: a */
    private static void m31320a(TextView textView, float f, float f2, float f3, int i, int i2, boolean z) {
        textView.setBackgroundColor(i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.height = (int) f;
        layoutParams.width = (int) f2;
        layoutParams.bottomMargin = (int) Activities.m27699a(8.0f);
        textView.setPadding(0, 0, 0, 0);
        textView.setLayoutParams(layoutParams);
        textView.setSingleLine(true);
        textView.setTextColor(0);
        textView.setVisibility(0);
        textView.setGravity(3);
        textView.setEllipsize(null);
        String m27313a = ViewUtils.m27313a(textView, f2, f3);
        SpannableString spannableString = new SpannableString(m27313a);
        spannableString.setSpan(new BackgroundColorSpan(i), 0, m27313a.length(), 33);
        textView.setText(spannableString);
    }

    /* renamed from: a */
    private static void m31319a(TextView textView, int i, int i2, float f, int i3, int i4) {
        m31320a(textView, (int) Activities.m27699a(i2), (int) Activities.m27699a(i), f, i3, i4, true);
    }

    private View getRealContactView(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f20756i;
            }
            if (i == 2) {
                return this.f20757j;
            }
            return null;
        }
        return this.f20755h;
    }

    /* renamed from: a */
    public final void m31324a() {
        ObjectAnimator m27183a;
        View view = this.f20748a;
        if (view == null || view.getVisibility() == 8 || (m27183a = CallappAnimationUtils.m27183a(this.f20748a, 200, 0, 8)) == null) {
            return;
        }
        m27183a.start();
    }

    /* renamed from: a */
    public final void m31323a(View view, float f) {
        int m27386a = ThemeUtils.m27386a(view.getContext(), 2131099890);
        int m27386a2 = ThemeUtils.m27386a(view.getContext(), 2131099891);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363565);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131232143);
        glideRequestBuilder.f28246l = true;
        GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(m27386a);
        profilePictureView.m26684a(m27025a);
        profilePictureView.setClickable(false);
        TextView textView = (TextView) view.findViewById(2131363348);
        TextView textView2 = (TextView) view.findViewById(2131363500);
        if (textView != null) {
            m31319a(textView, 116, 12, f, m27386a, m27386a2);
        }
        if (textView2 != null) {
            m31319a(textView2, 88, 8, f, m27386a, m27386a2);
        }
    }

    public View.OnClickListener getFinishedFirstTimeExperienceListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FirstTimeExperienceCallLog.get().m31326e();
            }
        };
    }

    public View getFirstTimeExperienceContainerView() {
        return this.f20748a;
    }

    public void setCallTypeIcon(int i, int i2) {
        ImageView imageView;
        View view = i != 0 ? i != 1 ? i != 2 ? null : this.f20757j : this.f20756i : this.f20755h;
        if (view == null || (imageView = (ImageView) view.findViewById(2131362216)) == null) {
            return;
        }
        ImageUtils.m27530a(imageView, CallLogUtils.getCallHistoryIcon(i2));
    }

    public void setContactProfilePicture(final int i) {
        final ProfilePictureView profilePictureView;
        final View realContactView = getRealContactView(i);
        if (realContactView == null || (profilePictureView = (ProfilePictureView) realContactView.findViewById(2131363565)) == null) {
            return;
        }
        profilePictureView.setText(StringUtils.m26010r(Prefs.f26482eu[i].get()));
        final String str = Prefs.f26487ez[i].get();
        if (str != null) {
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.2
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ProfilePictureView profilePictureView2 = profilePictureView;
                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                            glideRequestBuilder.f28246l = true;
                            glideRequestBuilder.f28244j = true;
                            profilePictureView2.m26684a(glideRequestBuilder);
                        }
                    });
                }
            });
        } else {
            profilePictureView.m26688a();
            profilePictureView.setText(StringUtils.m26010r(Prefs.f26482eu[i].get()));
        }
        realContactView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent createIntent = ContactDetailsActivity.createIntent(realContactView.getContext(), Prefs.f26484ew[i].get().longValue(), Prefs.f26483ev[i].get(), null, false, DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1), "FirstTimeExperienceCallLog", ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, Prefs.f26482eu[i].get());
                Activities.m27685a(realContactView.getContext(), createIntent);
            }
        });
    }

    public void setContactRowData(int i) {
        CharSequence m27120b;
        View realContactView = getRealContactView(i);
        m31322a(realContactView, Prefs.f26482eu[i].get(), 2131363348, ThemeUtils.getColor(2131100140));
        m31322a(realContactView, Prefs.f26483ev[i].get(), 2131363500, ThemeUtils.getColor(2131100108));
        long longValue = Prefs.f26485ex[i].get().longValue();
        m31321a(realContactView, (longValue == -1 || (m27120b = DateUtils.m27120b(new Date(longValue))) == null) ? org.apache.commons.lang3.StringUtils.SPACE : m27120b.toString(), 2131364122, ThemeUtils.getColor(2131100108), true);
    }
}
