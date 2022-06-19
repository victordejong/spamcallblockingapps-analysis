package com.truecaller.ads.campaigns;

import android.os.Parcel;
import android.os.Parcelable;
import w3.c.a.a.a.a;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign.class */
public final class AdCampaign implements Parcelable {
    public static final Parcelable.Creator<AdCampaign> CREATOR = new C2817a();

    /* renamed from: a */
    public final String f9820a;

    /* renamed from: b */
    public final Style f9821b;

    /* renamed from: c */
    public final CtaStyle f9822c;

    /* renamed from: d */
    public final String[] f9823d;

    /* renamed from: e */
    public final CtaAttributes f9824e;

    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$CtaAttributes.class */
    public static class CtaAttributes implements Parcelable {
        public static final Parcelable.Creator<CtaAttributes> CREATOR = new C2814a();

        /* renamed from: a */
        public final String f9825a;

        /* renamed from: b */
        public final String f9826b;

        /* renamed from: com.truecaller.ads.campaigns.AdCampaign$CtaAttributes$a */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$CtaAttributes$a.class */
        public class C2814a implements Parcelable.Creator<CtaAttributes> {
            @Override // android.os.Parcelable.Creator
            public CtaAttributes createFromParcel(Parcel parcel) {
                return new CtaAttributes(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public CtaAttributes[] newArray(int i) {
                return new CtaAttributes[i];
            }
        }

        public CtaAttributes(Parcel parcel, C2817a c2817a) {
            this.f9825a = parcel.readString();
            this.f9826b = parcel.readString();
        }

        public CtaAttributes(String str, String str2, C2817a c2817a) {
            this.f9825a = str;
            this.f9826b = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f9825a);
            parcel.writeString(this.f9826b);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$CtaStyle.class */
    public static class CtaStyle implements Parcelable {
        public static final Parcelable.Creator<CtaStyle> CREATOR = new C2815a();

        /* renamed from: a */
        public final int f9827a;

        /* renamed from: b */
        public final int f9828b;

        /* renamed from: com.truecaller.ads.campaigns.AdCampaign$CtaStyle$a */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$CtaStyle$a.class */
        public class C2815a implements Parcelable.Creator<CtaStyle> {
            @Override // android.os.Parcelable.Creator
            public CtaStyle createFromParcel(Parcel parcel) {
                return new CtaStyle(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public CtaStyle[] newArray(int i) {
                return new CtaStyle[i];
            }
        }

        public CtaStyle(int i, int i2, C2817a c2817a) {
            this.f9827a = i;
            this.f9828b = i2;
        }

        public CtaStyle(Parcel parcel, C2817a c2817a) {
            this.f9827a = parcel.readInt();
            this.f9828b = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f9827a);
            parcel.writeInt(this.f9828b);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$Style.class */
    public static class Style implements Parcelable {
        public static final Parcelable.Creator<Style> CREATOR = new C2816a();

        /* renamed from: a */
        public final int f9829a;

        /* renamed from: b */
        public final int f9830b;

        /* renamed from: c */
        public final int f9831c;

        /* renamed from: d */
        public final int f9832d;

        /* renamed from: e */
        public final String f9833e;

        /* renamed from: f */
        public final String f9834f;

        /* renamed from: com.truecaller.ads.campaigns.AdCampaign$Style$a */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$Style$a.class */
        public class C2816a implements Parcelable.Creator<Style> {
            @Override // android.os.Parcelable.Creator
            public Style createFromParcel(Parcel parcel) {
                return new Style(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Style[] newArray(int i) {
                return new Style[i];
            }
        }

        public Style(int i, int i2, int i3, int i4, String str, String str2, C2817a c2817a) {
            this.f9829a = i;
            this.f9830b = i2;
            this.f9831c = i3;
            this.f9832d = i4;
            this.f9833e = str;
            this.f9834f = str2;
        }

        public Style(Parcel parcel, C2817a c2817a) {
            this.f9829a = parcel.readInt();
            this.f9830b = parcel.readInt();
            this.f9831c = parcel.readInt();
            this.f9832d = parcel.readInt();
            this.f9833e = parcel.readString();
            this.f9834f = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f9829a);
            parcel.writeInt(this.f9830b);
            parcel.writeInt(this.f9831c);
            parcel.writeInt(this.f9832d);
            parcel.writeString(this.f9833e);
            parcel.writeString(this.f9834f);
        }
    }

    /* renamed from: com.truecaller.ads.campaigns.AdCampaign$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$a.class */
    public class C2817a implements Parcelable.Creator<AdCampaign> {
        @Override // android.os.Parcelable.Creator
        public AdCampaign createFromParcel(Parcel parcel) {
            return new AdCampaign(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public AdCampaign[] newArray(int i) {
            return new AdCampaign[i];
        }
    }

    /* renamed from: com.truecaller.ads.campaigns.AdCampaign$b */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/campaigns/AdCampaign$b.class */
    public static class C2818b {

        /* renamed from: a */
        public final String f9835a;

        /* renamed from: b */
        public String[] f9836b = a.b;

        /* renamed from: c */
        public String f9837c;

        /* renamed from: d */
        public String f9838d;

        /* renamed from: e */
        public String f9839e;

        /* renamed from: f */
        public String f9840f;

        /* renamed from: g */
        public String f9841g;

        /* renamed from: h */
        public String f9842h;

        /* renamed from: i */
        public String f9843i;

        /* renamed from: j */
        public String f9844j;

        /* renamed from: k */
        public String f9845k;

        /* renamed from: l */
        public String f9846l;

        public C2818b(String str) {
            this.f9835a = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.truecaller.ads.campaigns.AdCampaign m35994a() {
            /*
                r9 = this;
                r0 = r9
                java.lang.String r0 = r0.f9837c
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L5d
                r0 = r9
                java.lang.String r0 = r0.f9838d
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L5d
                r0 = r9
                java.lang.String r0 = r0.f9839e
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L5d
                r0 = r9
                java.lang.String r0 = r0.f9840f
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L5d
                com.truecaller.ads.campaigns.AdCampaign$Style r0 = new com.truecaller.ads.campaigns.AdCampaign$Style     // Catch: java.lang.IllegalArgumentException -> L58
                r10 = r0
                r0 = r10
                r1 = r9
                java.lang.String r1 = r1.f9837c     // Catch: java.lang.IllegalArgumentException -> L58
                int r1 = android.graphics.Color.parseColor(r1)     // Catch: java.lang.IllegalArgumentException -> L58
                r2 = r9
                java.lang.String r2 = r2.f9838d     // Catch: java.lang.IllegalArgumentException -> L58
                int r2 = android.graphics.Color.parseColor(r2)     // Catch: java.lang.IllegalArgumentException -> L58
                r3 = r9
                java.lang.String r3 = r3.f9839e     // Catch: java.lang.IllegalArgumentException -> L58
                int r3 = android.graphics.Color.parseColor(r3)     // Catch: java.lang.IllegalArgumentException -> L58
                r4 = r9
                java.lang.String r4 = r4.f9840f     // Catch: java.lang.IllegalArgumentException -> L58
                int r4 = android.graphics.Color.parseColor(r4)     // Catch: java.lang.IllegalArgumentException -> L58
                r5 = r9
                java.lang.String r5 = r5.f9841g     // Catch: java.lang.IllegalArgumentException -> L58
                r6 = r9
                java.lang.String r6 = r6.f9842h     // Catch: java.lang.IllegalArgumentException -> L58
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.IllegalArgumentException -> L58
                goto L5f
            L58:
                r10 = move-exception
                r0 = r10
                com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            L5d:
                r0 = 0
                r10 = r0
            L5f:
                r0 = r9
                java.lang.String r0 = r0.f9843i
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L92
                r0 = r9
                java.lang.String r0 = r0.f9844j
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L92
                com.truecaller.ads.campaigns.AdCampaign$CtaStyle r0 = new com.truecaller.ads.campaigns.AdCampaign$CtaStyle     // Catch: java.lang.IllegalArgumentException -> L8d
                r11 = r0
                r0 = r11
                r1 = r9
                java.lang.String r1 = r1.f9843i     // Catch: java.lang.IllegalArgumentException -> L8d
                int r1 = android.graphics.Color.parseColor(r1)     // Catch: java.lang.IllegalArgumentException -> L8d
                r2 = r9
                java.lang.String r2 = r2.f9844j     // Catch: java.lang.IllegalArgumentException -> L8d
                int r2 = android.graphics.Color.parseColor(r2)     // Catch: java.lang.IllegalArgumentException -> L8d
                r3 = 0
                r0.<init>(r1, r2, r3)     // Catch: java.lang.IllegalArgumentException -> L8d
                goto L94
            L8d:
                r11 = move-exception
                r0 = r11
                com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            L92:
                r0 = 0
                r11 = r0
            L94:
                r0 = r9
                java.lang.String r0 = r0.f9845k
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto Lbc
                r0 = r9
                java.lang.String r0 = r0.f9846l
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto Lbc
                com.truecaller.ads.campaigns.AdCampaign$CtaAttributes r0 = new com.truecaller.ads.campaigns.AdCampaign$CtaAttributes
                r1 = r0
                r2 = r9
                java.lang.String r2 = r2.f9845k
                r3 = r9
                java.lang.String r3 = r3.f9846l
                r4 = 0
                r1.<init>(r2, r3, r4)
                r12 = r0
                goto Lbe
            Lbc:
                r0 = 0
                r12 = r0
            Lbe:
                com.truecaller.ads.campaigns.AdCampaign r0 = new com.truecaller.ads.campaigns.AdCampaign
                r1 = r0
                r2 = r9
                java.lang.String r2 = r2.f9835a
                r3 = r10
                r4 = r11
                r5 = r9
                java.lang.String[] r5 = r5.f9836b
                r6 = r12
                r7 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.ads.campaigns.AdCampaign.C2818b.m35994a():com.truecaller.ads.campaigns.AdCampaign");
        }
    }

    public AdCampaign(Parcel parcel, C2817a c2817a) {
        this.f9820a = parcel.readString();
        this.f9823d = parcel.createStringArray();
        ClassLoader classLoader = AdCampaign.class.getClassLoader();
        this.f9821b = (Style) parcel.readParcelable(classLoader);
        this.f9822c = (CtaStyle) parcel.readParcelable(classLoader);
        this.f9824e = (CtaAttributes) parcel.readParcelable(classLoader);
    }

    public AdCampaign(String str, Style style, CtaStyle ctaStyle, String[] strArr, CtaAttributes ctaAttributes, C2817a c2817a) {
        this.f9820a = str;
        this.f9821b = style;
        this.f9822c = ctaStyle;
        this.f9823d = strArr;
        this.f9824e = ctaAttributes;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f9820a);
        parcel.writeStringArray(this.f9823d);
        parcel.writeParcelable(this.f9821b, i);
        parcel.writeParcelable(this.f9822c, i);
        parcel.writeParcelable(this.f9824e, i);
    }
}
