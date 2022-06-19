package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import com.clevertap.android.sdk.inbox.CTInboxMessageContent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1485h.p1486a.p1493c.C22741j0;
/* renamed from: e.h.a.c.r0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/c.class */
public class C22813c extends AbstractC26640a {

    /* renamed from: c */
    public final ArrayList<String> f63276c;

    /* renamed from: d */
    public final Context f63277d;

    /* renamed from: e */
    public final CTInboxMessage f63278e;

    /* renamed from: f */
    public LayoutInflater f63279f;

    /* renamed from: g */
    public final LinearLayout.LayoutParams f63280g;

    /* renamed from: h */
    public final WeakReference<i> f63281h;

    /* renamed from: i */
    public final int f63282i;

    /* renamed from: j */
    public View f63283j;

    /* renamed from: e.h.a.c.r0.c$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/c$a.class */
    public class View$OnClickListenerC22814a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f63284a;

        public View$OnClickListenerC22814a(int i) {
            C22813c.this = r4;
            this.f63284a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i iVar = C22813c.this.f63281h.get();
            if (iVar != null) {
                iVar.SA(C22813c.this.f63282i, this.f63284a);
            }
        }
    }

    public C22813c(Context context, i iVar, CTInboxMessage cTInboxMessage, LinearLayout.LayoutParams layoutParams, int i) {
        this.f63277d = context;
        this.f63281h = new WeakReference<>(iVar);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<CTInboxMessageContent> it = cTInboxMessage.f2380j.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f2394g);
        }
        this.f63276c = arrayList;
        this.f63280g = layoutParams;
        this.f63278e = cTInboxMessage;
        this.f63282i = i;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: a */
    public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: c */
    public int mo1537c() {
        return this.f63276c.size();
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: f */
    public Object mo1534f(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflater = (LayoutInflater) this.f63277d.getSystemService("layout_inflater");
        this.f63279f = layoutInflater;
        this.f63283j = layoutInflater.inflate(C0868R.layout.inbox_carousel_image_layout, viewGroup, false);
        try {
            if (this.f63278e.f2383m.equalsIgnoreCase("l")) {
                m7747m((ImageView) this.f63283j.findViewById(C0868R.C0870id.imageView), this.f63283j, i, viewGroup);
            } else if (this.f63278e.f2383m.equalsIgnoreCase("p")) {
                m7747m((ImageView) this.f63283j.findViewById(C0868R.C0870id.squareImageView), this.f63283j, i, viewGroup);
            }
        } catch (NoClassDefFoundError e) {
        }
        return this.f63283j;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: g */
    public boolean mo1148g(View view, Object obj) {
        return view == obj;
    }

    /* renamed from: m */
    public void m7747m(ImageView imageView, View view, int i, ViewGroup viewGroup) {
        imageView.setVisibility(0);
        try {
            ComponentCallbacks2C22222c.m8446e(imageView.getContext()).mo8407r(this.f63276c.get(i)).mo8106a(new C22591h().mo8087u(C22741j0.m7841i(this.f63277d, "ct_image")).mo8097k(C22741j0.m7841i(this.f63277d, "ct_image"))).m8427O(imageView);
        } catch (NoSuchMethodError e) {
            ComponentCallbacks2C22222c.m8446e(imageView.getContext()).mo8407r(this.f63276c.get(i)).m8427O(imageView);
        }
        viewGroup.addView(view, this.f63280g);
        view.setOnClickListener(new View$OnClickListenerC22814a(i));
    }
}
