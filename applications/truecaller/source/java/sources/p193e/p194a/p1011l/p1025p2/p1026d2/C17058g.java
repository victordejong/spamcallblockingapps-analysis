package p193e.p194a.p1011l.p1025p2.p1026d2;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.data.feature.PremiumFeature;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1128p4.AbstractC19215b;
import s1.f0.v;
import s1.u.i;
import s1.u.s;
import s1.z.b.l;
/* renamed from: e.a.l.p2.d2.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/g.class */
public final class C17058g {

    /* renamed from: a */
    public final AbstractC19215b f47830a;

    /* renamed from: e.a.l.p2.d2.g$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/g$a.class */
    public static final class DialogInterface$OnClickListenerC17059a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String[] f47832b;

        /* renamed from: c */
        public final /* synthetic */ boolean[] f47833c;

        public DialogInterface$OnClickListenerC17059a(String[] strArr, boolean[] zArr) {
            C17058g.this = r4;
            this.f47832b = strArr;
            this.f47833c = zArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            String[] strArr = this.f47832b;
            ArrayList arrayList = new ArrayList();
            int length = strArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                String str = strArr[i2];
                if (this.f47833c[i3]) {
                    arrayList.add(str);
                }
                i2++;
                i3++;
            }
            C17058g.this.f47830a.mo13835v2(i.O(arrayList, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62));
        }
    }

    /* renamed from: e.a.l.p2.d2.g$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/g$b.class */
    public static final class DialogInterface$OnMultiChoiceClickListenerC17060b implements DialogInterface.OnMultiChoiceClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean[] f47834a;

        public DialogInterface$OnMultiChoiceClickListenerC17060b(boolean[] zArr) {
            this.f47834a = zArr;
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
            this.f47834a[i] = z;
        }
    }

    @Inject
    public C17058g(AbstractC19215b abstractC19215b) {
        s1.z.c.l.e(abstractC19215b, "qaSettings");
        this.f47830a = abstractC19215b;
    }

    /* renamed from: a */
    public final void m16592a(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        PremiumFeature[] values = PremiumFeature.values();
        ArrayList<PremiumFeature> arrayList = new ArrayList();
        for (int i = 0; i < 14; i++) {
            PremiumFeature premiumFeature = values[i];
            if (premiumFeature != PremiumFeature.UNKNOWN) {
                arrayList.add(premiumFeature);
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (PremiumFeature premiumFeature2 : arrayList) {
            arrayList2.add(premiumFeature2.name());
        }
        Object[] array = arrayList2.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        String mo13842n0 = this.f47830a.mo13842n0();
        List U = mo13842n0 != null ? v.U(mo13842n0, new String[]{","}, false, 0, 6) : s.a;
        ArrayList arrayList3 = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList3.add(Boolean.valueOf(U.contains(str)));
        }
        boolean[] O0 = i.O0(arrayList3);
        new AlertDialog.Builder(context).setTitle("Disabled premium features").setPositiveButton("Save", new DialogInterface$OnClickListenerC17059a(strArr, O0)).setMultiChoiceItems(strArr, O0, new DialogInterface$OnMultiChoiceClickListenerC17060b(O0)).show();
    }
}
