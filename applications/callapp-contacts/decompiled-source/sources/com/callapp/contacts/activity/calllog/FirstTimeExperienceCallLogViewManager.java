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

    /* renamed from: a  reason: collision with root package name */
    View f11398a;

    /* renamed from: b  reason: collision with root package name */
    View f11399b;

    /* renamed from: c  reason: collision with root package name */
    View f11400c;

    /* renamed from: d  reason: collision with root package name */
    View f11401d;
    View e;
    View f;
    View g;
    View h;
    View i;
    View j;
    View k;
    TextView l;
    TextView m;
    TextView n;

    private static void a(View view, String str, int i, int i2) {
        a(view, str, i, i2, false);
    }

    private static void a(View view, String str, int i, int i2, boolean z) {
        TextView textView = (TextView) view.findViewById(i);
        if (textView == null) {
            return;
        }
        if (StringUtils.b((CharSequence) str)) {
            textView.setText(StringUtils.a(str, new char[0]));
            textView.setTextColor(i2);
            textView.setVisibility(0);
            if (z) {
                textView.setTypeface(null, 1);
                return;
            }
            return;
        }
        textView.setVisibility(8);
    }

    private static void a(TextView textView, float f, float f2, float f3, int i, int i2, boolean z) {
        textView.setBackgroundColor(i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.height = (int) f;
        layoutParams.width = (int) f2;
        layoutParams.bottomMargin = (int) Activities.a(8.0f);
        textView.setPadding(0, 0, 0, 0);
        textView.setLayoutParams(layoutParams);
        textView.setSingleLine(true);
        textView.setTextColor(0);
        textView.setVisibility(0);
        textView.setGravity(3);
        textView.setEllipsize(null);
        String a2 = ViewUtils.a(textView, f2, f3);
        SpannableString spannableString = new SpannableString(a2);
        spannableString.setSpan(new BackgroundColorSpan(i), 0, a2.length(), 33);
        textView.setText(spannableString);
    }

    private static void a(TextView textView, int i, int i2, float f, int i3, int i4) {
        a(textView, (int) Activities.a(i2), (int) Activities.a(i), f, i3, i4, true);
    }

    private View getRealContactView(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        if (i != 2) {
            return null;
        }
        return this.j;
    }

    public final void a() {
        ObjectAnimator a2;
        View view = this.f11398a;
        if (view != null && view.getVisibility() != 8 && (a2 = CallappAnimationUtils.a(this.f11398a, 200, 0, 8)) != null) {
            a2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, float f) {
        int a2 = ThemeUtils.a(view.getContext(), 2131099890);
        int a3 = ThemeUtils.a(view.getContext(), 2131099891);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363565);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131232143);
        glideRequestBuilder.l = true;
        GlideUtils.GlideRequestBuilder a4 = glideRequestBuilder.a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        a4.g = Integer.valueOf(a2);
        profilePictureView.a(a4);
        profilePictureView.setClickable(false);
        TextView textView = (TextView) view.findViewById(2131363348);
        TextView textView2 = (TextView) view.findViewById(2131363500);
        if (textView != null) {
            a(textView, 116, 12, f, a2, a3);
        }
        if (textView2 != null) {
            a(textView2, 88, 8, f, a2, a3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnClickListener getFinishedFirstTimeExperienceListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FirstTimeExperienceCallLog.get().e();
            }
        };
    }

    public View getFirstTimeExperienceContainerView() {
        return this.f11398a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCallTypeIcon(int i, int i2) {
        ImageView imageView;
        View view = i != 0 ? i != 1 ? i != 2 ? null : this.j : this.i : this.h;
        if (view != null && (imageView = (ImageView) view.findViewById(2131362216)) != null) {
            ImageUtils.a(imageView, CallLogUtils.getCallHistoryIcon(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContactProfilePicture(final int i) {
        final ProfilePictureView profilePictureView;
        final View realContactView = getRealContactView(i);
        if (realContactView != null && (profilePictureView = (ProfilePictureView) realContactView.findViewById(2131363565)) != null) {
            profilePictureView.setText(StringUtils.r(Prefs.eu[i].get()));
            final String str = Prefs.ez[i].get();
            if (str != null) {
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ProfilePictureView profilePictureView2 = profilePictureView;
                                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                                glideRequestBuilder.l = true;
                                glideRequestBuilder.j = true;
                                profilePictureView2.a(glideRequestBuilder);
                            }
                        });
                    }
                });
            } else {
                profilePictureView.a();
                profilePictureView.setText(StringUtils.r(Prefs.eu[i].get()));
            }
            realContactView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent createIntent = ContactDetailsActivity.createIntent(realContactView.getContext(), Prefs.ew[i].get().longValue(), Prefs.ev[i].get(), null, false, DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1), "FirstTimeExperienceCallLog", ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                    createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, Prefs.eu[i].get());
                    Activities.a(realContactView.getContext(), createIntent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContactRowData(int i) {
        CharSequence b2;
        View realContactView = getRealContactView(i);
        a(realContactView, Prefs.eu[i].get(), 2131363348, ThemeUtils.getColor(2131100140));
        a(realContactView, Prefs.ev[i].get(), 2131363500, ThemeUtils.getColor(2131100108));
        long longValue = Prefs.ex[i].get().longValue();
        a(realContactView, (longValue == -1 || (b2 = DateUtils.b(new Date(longValue))) == null) ? org.apache.commons.lang3.StringUtils.SPACE : b2.toString(), 2131364122, ThemeUtils.getColor(2131100108), true);
    }
}
