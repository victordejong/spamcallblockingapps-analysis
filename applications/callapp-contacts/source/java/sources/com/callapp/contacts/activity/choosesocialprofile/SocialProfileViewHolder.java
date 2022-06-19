package com.callapp.contacts.activity.choosesocialprofile;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.SocialMatchesData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.CallAppRadioButton;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder.class */
public class SocialProfileViewHolder extends BaseCallAppViewHolder {

    /* renamed from: A */
    final int f20932A;

    /* renamed from: B */
    final int f20933B;

    /* renamed from: C */
    final int f20934C;

    /* renamed from: D */
    CallAppRow f20935D;

    /* renamed from: E */
    private View f20936E;

    /* renamed from: F */
    private final ContactData f20937F;

    /* renamed from: s */
    ProfilePictureView f20938s;

    /* renamed from: t */
    TextView f20939t;

    /* renamed from: u */
    TextView f20940u;

    /* renamed from: v */
    View f20941v;

    /* renamed from: w */
    View f20942w;

    /* renamed from: x */
    CallAppRadioButton f20943x;

    /* renamed from: y */
    final int f20944y;

    /* renamed from: z */
    final int f20945z;

    /* renamed from: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder$6 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$6.class */
    static /* synthetic */ class C59746 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20956a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[SocialMatchesData.SocialMatchState.values().length];
            f20956a = iArr;
            try {
                iArr[SocialMatchesData.SocialMatchState.SURE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.UNSURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.PLACES_SURE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.MULTI_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.AUTO_SELECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.SEARCHING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.NOT_CONNECTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f20956a[SocialMatchesData.SocialMatchState.HIDE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public SocialProfileViewHolder(CallAppRow callAppRow, ContactData contactData) {
        super(callAppRow);
        this.f20935D = callAppRow;
        this.f20937F = contactData;
        int color = ThemeUtils.getColor(2131099784);
        this.f20945z = color;
        this.f20944y = ThemeUtils.m27386a(callAppRow.getContext(), 2131100140);
        this.f20932A = ThemeUtils.m27386a(callAppRow.getContext(), 2131099891);
        this.f20933B = ThemeUtils.m27386a(callAppRow.getContext(), 2131099786);
        this.f20934C = ThemeUtils.m27386a(callAppRow.getContext(), 2131100228);
        callAppRow.getContext().getResources().getDimension(2131166070);
        this.f20938s = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f20939t = (TextView) callAppRow.findViewById(2131363911);
        this.f20940u = (TextView) callAppRow.findViewById(2131363918);
        this.f20936E = callAppRow.findViewById(2131364038);
        this.f20941v = callAppRow.findViewById(2131363915);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131363916);
        TextView textView = (TextView) callAppRow.findViewById(2131363917);
        this.f20942w = callAppRow.findViewById(2131363912);
        ImageView imageView2 = (ImageView) callAppRow.findViewById(2131363913);
        TextView textView2 = (TextView) callAppRow.findViewById(2131363914);
        this.f20943x = (CallAppRadioButton) callAppRow.findViewById(2131363607);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        textView.setText(Activities.getString(2131886627));
        textView.setTextColor(color);
        imageView2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        textView2.setText(Activities.getString(2131886778));
        textView2.setTextColor(color);
        callAppRow.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }

    /* renamed from: a */
    public static String m31252a(SocialMatchesData socialMatchesData, String str) {
        return StringUtils.m26045b((CharSequence) socialMatchesData.getName()) ? socialMatchesData.getName() : str;
    }

    /* renamed from: a */
    public static void m31253a(TextView textView, String str, int i) {
        textView.setText(str);
        textView.setTextColor(i);
        textView.setVisibility(StringUtils.m26045b((CharSequence) str) ? 0 : 8);
    }

    /* renamed from: a */
    public final void m31251a(boolean z, boolean z2) {
        this.f20936E.setVisibility(0);
        this.f20941v.setVisibility(z ? 0 : 8);
        this.f20942w.setVisibility(z2 ? 0 : 8);
    }

    public void setPhotoWithBadge(int i, int i2) {
        this.f20938s.m26683a(true);
        this.f20938s.m26685a(ViewUtils.getDrawable(i));
        this.f20938s.m26687a(i2);
    }

    public void setTitleVisibleOnly(String str) {
        this.f20939t.setText(str);
        this.f20939t.setVisibility(0);
        this.f20940u.setVisibility(8);
        this.f20936E.setVisibility(8);
        this.f20941v.setVisibility(8);
        this.f20942w.setVisibility(8);
    }
}
