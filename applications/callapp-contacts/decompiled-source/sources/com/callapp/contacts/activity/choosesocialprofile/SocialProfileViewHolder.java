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
    final int A;
    final int B;
    final int C;
    CallAppRow D;
    private View E;
    private final ContactData F;
    ProfilePictureView s;
    TextView t;
    TextView u;
    View v;
    View w;
    CallAppRadioButton x;
    final int y;
    final int z;

    /* renamed from: com.callapp.contacts.activity.choosesocialprofile.SocialProfileViewHolder$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$6.class */
    static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11542a;

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
            f11542a = iArr;
            try {
                iArr[SocialMatchesData.SocialMatchState.SURE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.UNSURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.PLACES_SURE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.MULTI_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.AUTO_SELECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.SEARCHING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.NOT_CONNECTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11542a[SocialMatchesData.SocialMatchState.HIDE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public SocialProfileViewHolder(CallAppRow callAppRow, ContactData contactData) {
        super(callAppRow);
        this.D = callAppRow;
        this.F = contactData;
        int color = ThemeUtils.getColor(2131099784);
        this.z = color;
        this.y = ThemeUtils.a(callAppRow.getContext(), 2131100140);
        this.A = ThemeUtils.a(callAppRow.getContext(), 2131099891);
        this.B = ThemeUtils.a(callAppRow.getContext(), 2131099786);
        this.C = ThemeUtils.a(callAppRow.getContext(), 2131100228);
        callAppRow.getContext().getResources().getDimension(2131166070);
        this.s = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.t = (TextView) callAppRow.findViewById(2131363911);
        this.u = (TextView) callAppRow.findViewById(2131363918);
        this.E = callAppRow.findViewById(2131364038);
        this.v = callAppRow.findViewById(2131363915);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131363916);
        TextView textView = (TextView) callAppRow.findViewById(2131363917);
        this.w = callAppRow.findViewById(2131363912);
        ImageView imageView2 = (ImageView) callAppRow.findViewById(2131363913);
        TextView textView2 = (TextView) callAppRow.findViewById(2131363914);
        this.x = (CallAppRadioButton) callAppRow.findViewById(2131363607);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        textView.setText(Activities.getString(2131886627));
        textView.setTextColor(color);
        imageView2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        textView2.setText(Activities.getString(2131886778));
        textView2.setTextColor(color);
        callAppRow.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(SocialMatchesData socialMatchesData, String str) {
        return StringUtils.b((CharSequence) socialMatchesData.getName()) ? socialMatchesData.getName() : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(TextView textView, String str, int i) {
        textView.setText(str);
        textView.setTextColor(i);
        textView.setVisibility(StringUtils.b((CharSequence) str) ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z, boolean z2) {
        int i = 0;
        this.E.setVisibility(0);
        this.v.setVisibility(z ? 0 : 8);
        View view = this.w;
        if (!z2) {
            i = 8;
        }
        view.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPhotoWithBadge(int i, int i2) {
        this.s.a(true);
        this.s.a(ViewUtils.getDrawable(i));
        this.s.a(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTitleVisibleOnly(String str) {
        this.t.setText(str);
        this.t.setVisibility(0);
        this.u.setVisibility(8);
        this.E.setVisibility(8);
        this.v.setVisibility(8);
        this.w.setVisibility(8);
    }
}
