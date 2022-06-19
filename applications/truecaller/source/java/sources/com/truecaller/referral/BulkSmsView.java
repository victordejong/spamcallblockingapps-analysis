package com.truecaller.referral;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.referral.ReferralManager;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1159q4.AbstractC19671t0;
/* loaded from: classes12-dex2jar.jar:com/truecaller/referral/BulkSmsView.class */
public interface BulkSmsView extends AbstractC19671t0 {

    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/BulkSmsView$PromoLayout.class */
    public static class PromoLayout implements Parcelable {
        public static final Parcelable.Creator<PromoLayout> CREATOR = new C4388a();

        /* renamed from: a */
        public final int f14420a;

        /* renamed from: b */
        public final int[] f14421b;

        /* renamed from: c */
        public final String[] f14422c;

        /* renamed from: d */
        public final int[] f14423d;

        /* renamed from: e */
        public final int[] f14424e;

        /* renamed from: f */
        public final int[] f14425f;

        /* renamed from: com.truecaller.referral.BulkSmsView$PromoLayout$a */
        /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/BulkSmsView$PromoLayout$a.class */
        public class C4388a implements Parcelable.Creator<PromoLayout> {
            @Override // android.os.Parcelable.Creator
            public PromoLayout createFromParcel(Parcel parcel) {
                return new PromoLayout(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public PromoLayout[] newArray(int i) {
                return new PromoLayout[i];
            }
        }

        public PromoLayout(int i, int[] iArr, String[] strArr, int[] iArr2, int[] iArr3, int[] iArr4) {
            this.f14420a = i;
            this.f14421b = iArr;
            this.f14422c = strArr;
            this.f14423d = iArr2;
            this.f14424e = iArr3;
            this.f14425f = iArr4;
        }

        public PromoLayout(Parcel parcel) {
            this.f14420a = parcel.readInt();
            this.f14421b = parcel.createIntArray();
            this.f14422c = parcel.createStringArray();
            this.f14423d = parcel.createIntArray();
            this.f14424e = parcel.createIntArray();
            this.f14425f = parcel.createIntArray();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f14420a);
            parcel.writeIntArray(this.f14421b);
            parcel.writeStringArray(this.f14422c);
            parcel.writeIntArray(this.f14423d);
            parcel.writeIntArray(this.f14424e);
            parcel.writeIntArray(this.f14425f);
        }
    }

    /* renamed from: com.truecaller.referral.BulkSmsView$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/BulkSmsView$a.class */
    public static class C4389a {

        /* renamed from: a */
        public final List<Participant> f14426a;

        /* renamed from: b */
        public final PromoLayout f14427b;

        /* renamed from: c */
        public final ReferralManager.ReferralLaunchContext f14428c;

        /* renamed from: d */
        public final String f14429d;

        /* renamed from: e */
        public final boolean f14430e;

        public C4389a(List<Participant> list, PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str, boolean z) {
            this.f14426a = list;
            this.f14427b = promoLayout;
            this.f14428c = referralLaunchContext;
            this.f14429d = str;
            this.f14430e = z;
        }
    }

    /* renamed from: Cu */
    void mo13031Cu(int i);

    /* renamed from: Ek */
    void mo13030Ek(ArrayList<Participant> arrayList);

    /* renamed from: Ja */
    void mo13028Ja(String str, boolean z);

    /* renamed from: Nf */
    void mo13025Nf(String str);

    /* renamed from: P6 */
    void mo13023P6(boolean z, int i);

    /* renamed from: f */
    void mo13016f(boolean z);

    void finish();

    /* renamed from: ih */
    void mo13015ih();

    /* renamed from: mh */
    void mo13014mh(Participant participant, SourceType sourceType, boolean z, boolean z2, boolean z3);

    /* renamed from: p8 */
    List<Participant> mo13013p8(Intent intent);

    /* renamed from: q0 */
    void mo13012q0(int i);

    /* renamed from: xt */
    void mo13010xt(boolean z);
}
