package com.truecaller.referral;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.referral.ReferralManager;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.c.a.a.a.h;
/* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralUrl.class */
public class ReferralUrl implements Parcelable {
    public static final Parcelable.Creator<ReferralUrl> CREATOR = new C4395a();

    /* renamed from: d */
    public static C26174a<String, EnumC4396b> f14452d;

    /* renamed from: e */
    public static final C26174a<ReferralManager.ReferralLaunchContext, Character> f14453e;

    /* renamed from: f */
    public static final C26174a<EnumC4396b, Character> f14454f;

    /* renamed from: a */
    public EnumC4396b f14455a;

    /* renamed from: b */
    public final String f14456b;

    /* renamed from: c */
    public ReferralManager.ReferralLaunchContext f14457c;

    /* renamed from: com.truecaller.referral.ReferralUrl$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralUrl$a.class */
    public class C4395a implements Parcelable.Creator<ReferralUrl> {
        @Override // android.os.Parcelable.Creator
        public ReferralUrl createFromParcel(Parcel parcel) {
            return new ReferralUrl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ReferralUrl[] newArray(int i) {
            return new ReferralUrl[i];
        }
    }

    /* renamed from: com.truecaller.referral.ReferralUrl$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralUrl$b.class */
    public enum EnumC4396b {
        BULK_SMS,
        CUSTOM_SINGLE_SMS,
        SINGLE_CONTACT_BULK,
        WHATS_APP,
        TWITTER,
        FACEBOOK,
        MESSENGER,
        SNAP_CHAT,
        EMAIL,
        FACEBOOK_INVITE,
        OTHERS,
        WHATS_APP_SINGLE
    }

    static {
        C26174a<String, EnumC4396b> c26174a = new C26174a<>();
        f14452d = c26174a;
        EnumC4396b enumC4396b = EnumC4396b.WHATS_APP;
        c26174a.put(SupportMessenger.WHATSAPP, enumC4396b);
        C26174a<String, EnumC4396b> c26174a2 = f14452d;
        EnumC4396b enumC4396b2 = EnumC4396b.MESSENGER;
        c26174a2.put(SupportMessenger.FB_MESSENGER, enumC4396b2);
        C26174a<String, EnumC4396b> c26174a3 = f14452d;
        EnumC4396b enumC4396b3 = EnumC4396b.FACEBOOK;
        c26174a3.put(SupportMessenger.FACEBOOK, enumC4396b3);
        C26174a<String, EnumC4396b> c26174a4 = f14452d;
        EnumC4396b enumC4396b4 = EnumC4396b.TWITTER;
        c26174a4.put(SupportMessenger.TWITTER, enumC4396b4);
        C26174a<String, EnumC4396b> c26174a5 = f14452d;
        EnumC4396b enumC4396b5 = EnumC4396b.OTHERS;
        c26174a5.put("com.imo.android.imoim", enumC4396b5);
        C26174a<String, EnumC4396b> c26174a6 = f14452d;
        EnumC4396b enumC4396b6 = EnumC4396b.SNAP_CHAT;
        c26174a6.put("com.snapchat.android", enumC4396b6);
        C26174a<ReferralManager.ReferralLaunchContext, Character> c26174a7 = new C26174a<>();
        f14453e = c26174a7;
        c26174a7.put(ReferralManager.ReferralLaunchContext.HOME_SCREEN, 'a');
        c26174a7.put(ReferralManager.ReferralLaunchContext.INBOX_OVERFLOW, 'b');
        c26174a7.put(ReferralManager.ReferralLaunchContext.CONTACT_DETAILS, 'c');
        c26174a7.put(ReferralManager.ReferralLaunchContext.CONTACTS, 'd');
        c26174a7.put(ReferralManager.ReferralLaunchContext.USER_BUSY_PROMPT, 'e');
        c26174a7.put(ReferralManager.ReferralLaunchContext.AFTER_CALL, 'f');
        c26174a7.put(ReferralManager.ReferralLaunchContext.AFTER_CALL_SAVE_CONTACT, 'g');
        c26174a7.put(ReferralManager.ReferralLaunchContext.NAVIGATION_DRAWER, 'h');
        c26174a7.put(ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION, 'i');
        c26174a7.put(ReferralManager.ReferralLaunchContext.DEEP_LINK, 'j');
        c26174a7.put(ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO, 'k');
        c26174a7.put(ReferralManager.ReferralLaunchContext.SEARCH_SCREEN_PROMO, 'l');
        c26174a7.put(ReferralManager.ReferralLaunchContext.BOTTOM_BAR, 'm');
        c26174a7.put(ReferralManager.ReferralLaunchContext.PROMO_POPUP, 'n');
        c26174a7.put(ReferralManager.ReferralLaunchContext.PREMIUM_TAB_V2, 'o');
        C26174a<EnumC4396b, Character> c26174a8 = new C26174a<>();
        f14454f = c26174a8;
        c26174a8.put(enumC4396b, 'a');
        c26174a8.put(enumC4396b2, 'b');
        c26174a8.put(enumC4396b3, 'c');
        c26174a8.put(enumC4396b4, 'd');
        c26174a8.put(enumC4396b6, 'e');
        c26174a8.put(EnumC4396b.EMAIL, 'f');
        c26174a8.put(EnumC4396b.BULK_SMS, 'g');
        c26174a8.put(EnumC4396b.CUSTOM_SINGLE_SMS, 'h');
        c26174a8.put(enumC4396b5, 'i');
        c26174a8.put(EnumC4396b.WHATS_APP_SINGLE, 'j');
        c26174a8.put(EnumC4396b.SINGLE_CONTACT_BULK, 'k');
    }

    public ReferralUrl(Parcel parcel) {
        this.f14455a = EnumC4396b.OTHERS;
        int readInt = parcel.readInt();
        this.f14455a = readInt == -1 ? null : EnumC4396b.values()[readInt];
        this.f14456b = parcel.readString();
        int readInt2 = parcel.readInt();
        this.f14457c = readInt2 == -1 ? null : ReferralManager.ReferralLaunchContext.values()[readInt2];
    }

    public ReferralUrl(String str) {
        this.f14455a = EnumC4396b.OTHERS;
        this.f14456b = str;
    }

    /* renamed from: b */
    public static <K, V> K m34788b(C26174a<K, V> c26174a, V v) {
        for (int i = 0; i < ((AbstractC26181g.C26186e) c26174a.values()).size(); i++) {
            if (c26174a.m2572p(i) == v) {
                return c26174a.m2576l(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    public String m34789a() {
        String str = this.f14456b;
        if (str == null || this.f14457c == null) {
            StringBuilder m8728C = C22128a.m8728C("Referral url and source should not be null. Url : ");
            m8728C.append(this.f14456b);
            m8728C.append(" source: ");
            m8728C.append(this.f14457c);
            throw new NullPointerException(m8728C.toString());
        } else if (!h.f(Uri.parse(str).getHost(), "truecaller.com")) {
            return this.f14456b;
        } else {
            Character ch = f14453e.get(this.f14457c);
            Character ch2 = f14454f.get(this.f14455a);
            if (ch == null || ch2 == null) {
                throw new NullPointerException("Source and medium should not be null. Source: " + ch + " medium: " + ch2);
            } else if (!h.f(Uri.parse(this.f14456b).getHost(), "truecaller.com")) {
                return this.f14456b;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f14456b);
                String str2 = this.f14456b;
                String str3 = StringConstant.SLASH;
                if (h.d(str2, StringConstant.SLASH)) {
                    str3 = "";
                }
                sb.append(str3);
                sb.append(ch);
                sb.append(ch2);
                return sb.toString();
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        EnumC4396b enumC4396b = this.f14455a;
        parcel.writeInt(enumC4396b == null ? -1 : enumC4396b.ordinal());
        parcel.writeString(this.f14456b);
        ReferralManager.ReferralLaunchContext referralLaunchContext = this.f14457c;
        parcel.writeInt(referralLaunchContext == null ? -1 : referralLaunchContext.ordinal());
    }
}
