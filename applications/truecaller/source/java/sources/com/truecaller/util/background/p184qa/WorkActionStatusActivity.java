package com.truecaller.util.background.p184qa;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.C21755a;
import p193e.p194a.p1392y2.C21761g;
import s1.k;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001:\u0003\u000b\u001c\u0015B\u0007¢\u0006\u0004\b#\u0010$J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R4\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\fR$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\fR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/truecaller/util/background/qa/WorkActionStatusActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "", "Ljavax/inject/Provider;", "Le/a/y2/k;", "a", "Ljava/util/Map;", "getActionSpecs", "()Ljava/util/Map;", "setActionSpecs", "(Ljava/util/Map;)V", "actionSpecs", "Le/a/y2/g;", "", "", AbstractC2405c.f7629a, "groupedActions", "", "Ln3/m0/x;", "d", "bucketStatus", "Ln3/m0/y;", C22021b.f61237c, "Ln3/m0/y;", "getWorkManager", "()Ln3/m0/y;", "setWorkManager", "(Ln3/m0/y;)V", "workManager", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.util.background.qa.WorkActionStatusActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/util/background/qa/WorkActionStatusActivity.class */
public final class WorkActionStatusActivity extends h {
    @Inject

    /* renamed from: a */
    public Map<C21755a, Provider<AbstractC21765k>> f15947a;
    @Inject

    /* renamed from: b */
    public AbstractC26857y f15948b;

    /* renamed from: c */
    public Map<C21761g, ? extends List<String>> f15949c;

    /* renamed from: d */
    public final Map<C21761g, C26855x> f15950d = new LinkedHashMap();

    /* renamed from: com.truecaller.util.background.qa.WorkActionStatusActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/background/qa/WorkActionStatusActivity$a.class */
    public final class C4699a extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

        /* renamed from: a */
        public final List<Object> f15951a;

        public C4699a() {
            WorkActionStatusActivity.this = r5;
            Map<C21761g, ? extends List<String>> map = r5.f15949c;
            if (map == null) {
                l.l("groupedActions");
                throw null;
            }
            Set<Map.Entry<C21761g, ? extends List<String>>> entrySet = map.entrySet();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                C21761g c21761g = (C21761g) entry.getKey();
                List a1 = i.a1((List) entry.getValue());
                ((ArrayList) a1).add(0, c21761g);
                i.b(arrayList, a1);
            }
            this.f15951a = arrayList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f15951a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemViewType(int i) {
            return !(this.f15951a.get(i) instanceof C21761g) ? 1 : 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x00cc, code lost:
            if (r7 != null) goto L14;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r7, int r8) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.util.background.p184qa.WorkActionStatusActivity.C4699a.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
            l.e(viewGroup, "parent");
            return i != 0 ? new C4701c((TextView) C19286f.m13667l(viewGroup, 17367043, false, 2)) : new C4700b(C19286f.m13667l(viewGroup, 17367044, false, 2));
        }
    }

    /* renamed from: com.truecaller.util.background.qa.WorkActionStatusActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/background/qa/WorkActionStatusActivity$b.class */
    public static final class C4700b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final TextView f15953a;

        /* renamed from: b */
        public final TextView f15954b;

        /* renamed from: c */
        public final Drawable f15955c;

        /* renamed from: d */
        public final Drawable f15956d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4700b(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(16908308);
            TextView textView = (TextView) findViewById;
            Context context = textView.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            textView.setCompoundDrawablePadding(C19291g.m13645A(context, 8));
            textView.setTypeface(textView.getTypeface(), 1);
            l.d(findViewById, "itemView.findViewById<Te… Typeface.BOLD)\n        }");
            this.f15953a = (TextView) findViewById;
            View findViewById2 = view.findViewById(16908309);
            l.d(findViewById2, "itemView.findViewById(android.R.id.text2)");
            this.f15954b = (TextView) findViewById2;
            Context context2 = view.getContext();
            Object obj = C26467a.f74235a;
            this.f15955c = C26467a.C26470c.m1789b(context2, 17301611);
            this.f15956d = C26467a.C26470c.m1789b(view.getContext(), 17301568);
        }
    }

    /* renamed from: com.truecaller.util.background.qa.WorkActionStatusActivity$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/background/qa/WorkActionStatusActivity$c.class */
    public static final class C4701c extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final TextView f15957a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4701c(TextView textView) {
            super(textView);
            l.e(textView, "textView");
            this.f15957a = textView;
            Context context = textView.getContext();
            textView.setPadding(0, 0, 0, 0);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            ((RecyclerView.C0334p) layoutParams).setMargins(C19291g.m13645A(context, 24), C19291g.m13645A(context, 0), C19291g.m13645A(context, 0), C19291g.m13645A(context, 0));
            textView.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: com.truecaller.util.background.qa.WorkActionStatusActivity$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/background/qa/WorkActionStatusActivity$d.class */
    public static final class C4702d<T> implements AbstractC27012l0<List<C26855x>> {

        /* renamed from: a */
        public final /* synthetic */ C21761g f15958a;

        /* renamed from: b */
        public final /* synthetic */ WorkActionStatusActivity f15959b;

        /* renamed from: c */
        public final /* synthetic */ C4699a f15960c;

        public C4702d(C21761g c21761g, WorkActionStatusActivity workActionStatusActivity, C4699a c4699a) {
            this.f15958a = c21761g;
            this.f15959b = workActionStatusActivity;
            this.f15960c = c4699a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(List<C26855x> list) {
            List<C26855x> list2 = list;
            Map<C21761g, C26855x> map = this.f15959b.f15950d;
            C21761g c21761g = this.f15958a;
            l.d(list2, "infoList");
            map.put(c21761g, i.G(list2, 0));
            this.f15960c.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        WorkActionStatusActivity.super.onCreate(bundle);
        AbstractC16444k2.f46188a.m17389a().mo11385h(this);
        Map<C21755a, Provider<AbstractC21765k>> map = this.f15947a;
        if (map == null) {
            l.l("actionSpecs");
            throw null;
        }
        Set<C21755a> keySet = map.keySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C21755a c21755a : keySet) {
            C21761g c21761g = new C21761g(c21755a.f60583d, c21755a.f60584e);
            Object obj = linkedHashMap.get(c21761g);
            if (obj == null) {
                linkedHashMap.containsKey(c21761g);
            }
            ArrayList arrayList = (List) obj;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(c21755a.f60582c);
            linkedHashMap.put(c21761g, arrayList);
        }
        this.f15949c = linkedHashMap;
        C4699a c4699a = new C4699a();
        Map<C21761g, ? extends List<String>> map2 = this.f15949c;
        if (map2 == null) {
            l.l("groupedActions");
            throw null;
        }
        Set<C21761g> keySet2 = map2.keySet();
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(keySet2, 10));
        for (C21761g c21761g2 : keySet2) {
            AbstractC26857y abstractC26857y = this.f15948b;
            if (abstractC26857y == null) {
                l.l("workManager");
                throw null;
            }
            arrayList2.add(new k(c21761g2, abstractC26857y.mo1275m(c21761g2.f60597a)));
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            ((LiveData) kVar.b).m42867f(this, new C4702d((C21761g) kVar.a, this, c4699a));
        }
        TextView textView = new TextView(this);
        textView.setText("Clicking on the work action will trigger it");
        textView.setGravity(17);
        RecyclerView recyclerView = new RecyclerView(this);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        recyclerView.setAdapter(c4699a);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(textView, new ViewGroup.LayoutParams(-1, -2));
        linearLayout.addView(recyclerView, new ViewGroup.LayoutParams(-1, -1));
        setContentView(linearLayout);
    }
}
