package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.profile.data.dto.businessV2.Branding;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.List;
import java.util.Objects;
import n3.b0.a.v;
import p1727n3.p1744b0.p1745a.AbstractC25625x;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p296a.p297a.C7520d;
import p193e.p194a.p294b.p295a.p296a.p297a.p300k0.C7564a;
import p193e.p194a.p294b.p295a.p296a.p297a.p300k0.C7565b;
import p193e.p194a.p294b.p295a.p296a.p304c.C7620b;
import p193e.p194a.p294b.p295a.p308b.p310j.C7659c;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p355m.C8091n0;
import s1.a.l;
/* renamed from: e.a.b.a.a.a.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/h.class */
public final class C7548h<T> implements AbstractC27012l0<T> {

    /* renamed from: a */
    public final /* synthetic */ C7520d f23857a;

    public C7548h(C7520d c7520d) {
        this.f23857a = c7520d;
    }

    /* JADX WARN: Type inference failed for: r0v249, types: [n3.b0.a.y, e.a.b.a.a.c.c] */
    @Override // p1727n3.p1868v.AbstractC27012l0
    public final void onChanged(T t) {
        C7659c c7659c;
        Branding branding;
        AbstractC8042q abstractC8042q = (AbstractC8042q) t;
        String str = null;
        if (!(abstractC8042q instanceof AbstractC8042q.C8045c)) {
            if (!(abstractC8042q instanceof AbstractC8042q.C8043a)) {
                if (!(abstractC8042q instanceof AbstractC8042q.C8044b)) {
                    return;
                }
                C7520d c7520d = this.f23857a;
                l[] lVarArr = C7520d.f23813m;
                ProgressBar progressBar = c7520d.m29539OA().f25044f;
                s1.z.c.l.d(progressBar, "binding.pbLoading");
                C19286f.m13684T(progressBar);
                return;
            }
            C7520d c7520d2 = this.f23857a;
            l[] lVarArr2 = C7520d.f23813m;
            ProgressBar progressBar2 = c7520d2.m29539OA().f25044f;
            s1.z.c.l.d(progressBar2, "binding.pbLoading");
            C19286f.m13689O(progressBar2);
            n3.r.a.l requireActivity = this.f23857a.requireActivity();
            StringBuilder m8728C = C22128a.m8728C("Error: ");
            String str2 = abstractC8042q.f24774b;
            if (str2 != null) {
                str = str2;
            } else {
                Integer num = ((AbstractC8042q.C8043a) abstractC8042q).f24775c;
                if (num != null) {
                    str = this.f23857a.getString(num.intValue());
                }
            }
            m8728C.append(str);
            Toast.makeText((Context) requireActivity, (CharSequence) m8728C.toString(), 0).show();
            return;
        }
        C7520d c7520d3 = this.f23857a;
        l[] lVarArr3 = C7520d.f23813m;
        ProgressBar progressBar3 = c7520d3.m29539OA().f25044f;
        s1.z.c.l.d(progressBar3, "binding.pbLoading");
        C19286f.m13689O(progressBar3);
        BusinessProfile businessProfile = (BusinessProfile) abstractC8042q.f24773a;
        List<String> imageUrls = (businessProfile == null || (branding = businessProfile.getBranding()) == null) ? null : branding.getImageUrls();
        if (imageUrls != null && imageUrls.size() == 0) {
            C7520d.AbstractC7523c abstractC7523c = this.f23857a.f23818d;
            if (abstractC7523c == null) {
                return;
            }
            abstractC7523c.mo29532U0();
            return;
        }
        List<String> list = this.f23857a.f23821g;
        int size = list != null ? list.size() : 0;
        int size2 = imageUrls != null ? imageUrls.size() : 0;
        if (!s1.z.c.l.a(imageUrls, this.f23857a.f23821g)) {
            boolean z = size > size2;
            C7520d c7520d4 = this.f23857a;
            c7520d4.f23821g = imageUrls;
            C8091n0 m29539OA = c7520d4.m29539OA();
            if (imageUrls == null) {
                RecyclerView recyclerView = m29539OA.f25042d;
                s1.z.c.l.d(recyclerView, "footerList");
                C19286f.m13689O(recyclerView);
            } else {
                RecyclerView recyclerView2 = m29539OA.f25042d;
                s1.z.c.l.d(recyclerView2, "footerList");
                C19286f.m13684T(recyclerView2);
                C7659c c7659c2 = c7520d4.f23819e;
                if (c7659c2 == null) {
                    Object[] array = imageUrls.toArray(new String[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    c7520d4.f23819e = new C7659c((String[]) array, (ComponentCallbacks2C22236i) c7520d4.f23823i.getValue(), new C7533e(c7520d4), C7539f.f23844b);
                    RecyclerView recyclerView3 = m29539OA.f25042d;
                    s1.z.c.l.d(recyclerView3, "footerList");
                    RecyclerView.AbstractC0323l itemAnimator = recyclerView3.getItemAnimator();
                    RecyclerView.AbstractC0323l abstractC0323l = itemAnimator;
                    if (!(itemAnimator instanceof AbstractC25625x)) {
                        abstractC0323l = null;
                    }
                    AbstractC25625x abstractC25625x = (AbstractC25625x) abstractC0323l;
                    if (abstractC25625x != null) {
                        abstractC25625x.setSupportsChangeAnimations(false);
                    }
                    RecyclerView recyclerView4 = m29539OA.f25042d;
                    s1.z.c.l.d(recyclerView4, "footerList");
                    recyclerView4.setLayoutManager(new LinearLayoutManager(c7520d4.requireContext(), 0, false));
                    RecyclerView recyclerView5 = m29539OA.f25042d;
                    s1.z.c.l.d(recyclerView5, "footerList");
                    recyclerView5.setAdapter(c7520d4.f23819e);
                    c7520d4.m29537QA().m3118a(m29539OA.f25042d);
                } else {
                    Object[] array2 = imageUrls.toArray(new String[0]);
                    Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                    c7659c2.m29456g((String[]) array2);
                }
            }
            C7520d c7520d5 = this.f23857a;
            if (imageUrls == null) {
                RecyclerView recyclerView6 = c7520d5.m29539OA().f25043e;
                s1.z.c.l.d(recyclerView6, "binding.imageList");
                C19286f.m13689O(recyclerView6);
            } else {
                RecyclerView recyclerView7 = c7520d5.m29539OA().f25043e;
                s1.z.c.l.d(recyclerView7, "binding.imageList");
                C19286f.m13684T(recyclerView7);
                C7564a c7564a = c7520d5.f23820f;
                if (c7564a == null) {
                    c7520d5.f23820f = new C7564a(imageUrls, (ComponentCallbacks2C22236i) c7520d5.f23823i.getValue());
                    C8091n0 m29539OA2 = c7520d5.m29539OA();
                    RecyclerView recyclerView8 = m29539OA2.f25043e;
                    s1.z.c.l.d(recyclerView8, "imageList");
                    recyclerView8.setLayoutManager(new LinearLayoutManager(c7520d5.requireContext(), 0, false));
                    RecyclerView recyclerView9 = m29539OA2.f25043e;
                    s1.z.c.l.d(recyclerView9, "imageList");
                    recyclerView9.setAdapter(c7520d5.f23820f);
                    c7520d5.m29535SA().m3118a(m29539OA2.f25043e);
                    RecyclerView recyclerView10 = m29539OA2.f25043e;
                    s1.z.c.l.d(recyclerView10, "imageList");
                    v m29535SA = c7520d5.m29535SA();
                    C7541g c7541g = new C7541g(m29539OA2, c7520d5);
                    s1.z.c.l.e(recyclerView10, "$this$setOnSnapPositionChange");
                    s1.z.c.l.e(m29535SA, "snapHelper");
                    s1.z.c.l.e(c7541g, "onSnapPositionChange");
                    recyclerView10.addOnScrollListener(new C7620b(recyclerView10, m29535SA, c7541g));
                } else {
                    s1.z.c.l.e(imageUrls, "newImageUrls");
                    C25586h.C25590d m3181a = C25586h.m3181a(new C7565b(c7564a.f23883a, imageUrls), true);
                    s1.z.c.l.d(m3181a, "DiffUtil.calculateDiff(B…imageUrls, newImageUrls))");
                    c7564a.f23883a = imageUrls;
                    m3181a.m3179b(new C25570b(c7564a));
                }
            }
            Bundle arguments = this.f23857a.getArguments();
            Integer valueOf = arguments != null ? Integer.valueOf(arguments.getInt("key_selected_index")) : null;
            if (valueOf == null || valueOf.intValue() == -1) {
                int i = 0;
                if (imageUrls != null) {
                    i = imageUrls.size() - 1;
                }
                int i2 = i;
                if (z) {
                    C7659c c7659c3 = this.f23857a.f23819e;
                    i2 = i;
                    if (c7659c3 != null) {
                        Integer num2 = c7659c3.f24035a;
                        i2 = i;
                        if (num2 != null) {
                            int intValue = num2.intValue();
                            i2 = i;
                            if (intValue < size2) {
                                i2 = intValue;
                            }
                        }
                    }
                }
                C7520d c7520d6 = this.f23857a;
                C7659c c7659c4 = c7520d6.f23819e;
                Integer num3 = null;
                if (c7659c4 != null) {
                    num3 = c7659c4.f24035a;
                }
                c7520d6.m29534TA(i2);
                if (num3 != null && num3.intValue() == i2 && (c7659c = this.f23857a.f23819e) != null) {
                    c7659c.notifyItemChanged(i2);
                }
            } else {
                this.f23857a.m29534TA(valueOf.intValue());
                Bundle arguments2 = this.f23857a.getArguments();
                if (arguments2 != null) {
                    arguments2.putInt("key_selected_index", -1);
                }
            }
        }
        C7520d c7520d7 = this.f23857a;
        C8091n0 m29539OA3 = c7520d7.m29539OA();
        List<String> list2 = c7520d7.f23821g;
        if (list2 == null || list2.size() != ((Number) c7520d7.f23817c.getValue()).intValue()) {
            ImageView imageView = m29539OA3.f25040b;
            s1.z.c.l.d(imageView, "addImage");
            C19286f.m13684T(imageView);
            View view = m29539OA3.f25039a;
            s1.z.c.l.d(view, "addBkg");
            C19286f.m13684T(view);
            TextView textView = m29539OA3.f25041c;
            s1.z.c.l.d(textView, "addMoreInfo");
            C19286f.m13684T(textView);
            return;
        }
        ImageView imageView2 = m29539OA3.f25040b;
        s1.z.c.l.d(imageView2, "addImage");
        C19286f.m13689O(imageView2);
        View view2 = m29539OA3.f25039a;
        s1.z.c.l.d(view2, "addBkg");
        C19286f.m13689O(view2);
        TextView textView2 = m29539OA3.f25041c;
        s1.z.c.l.d(textView2, "addMoreInfo");
        C19286f.m13687Q(textView2);
    }
}
