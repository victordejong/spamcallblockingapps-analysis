package com.allinone.callerid.p144d.p145a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.main.C3067a;
import com.allinone.callerid.p144d.p145a.p146e.AbstractC2472a;
import com.allinone.callerid.util.C3871w0;
import com.bumptech.glide.request.C4401e;
import java.util.ArrayList;
import java.util.List;
import org.xutils.common.util.DensityUtil;
/* renamed from: com.allinone.callerid.d.a.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/c.class */
public class C2464c extends AbstractC2472a<PersonaliseContact> {

    /* renamed from: f */
    private final C4401e f8768f;

    /* renamed from: g */
    private Context f8769g;

    /* renamed from: h */
    private Activity f8770h;

    /* renamed from: i */
    private boolean f8771i;

    /* renamed from: j */
    private List<PersonaliseContact> f8772j = new ArrayList();

    /* renamed from: k */
    private AbstractC2466b f8773k;

    /* renamed from: com.allinone.callerid.d.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/c$a.class */
    class View$OnClickListenerC2465a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ PersonaliseContact f8774d;

        /* renamed from: e */
        final /* synthetic */ C2467c f8775e;

        /* renamed from: f */
        final /* synthetic */ int f8776f;

        View$OnClickListenerC2465a(PersonaliseContact personaliseContact, C2467c c2467c, int i) {
            C2464c.this = r4;
            this.f8774d = personaliseContact;
            this.f8775e = c2467c;
            this.f8776f = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (!C2464c.this.f8771i) {
                    Intent intent = new Intent(C2464c.this.f8769g, CallScreenDiyPdtActivity.class);
                    HomeInfo homeInfo = new HomeInfo();
                    homeInfo.setPath(this.f8774d.getPath());
                    homeInfo.setName(this.f8774d.getThemtname());
                    homeInfo.setIsdefault(this.f8774d.isIs_default());
                    homeInfo.setContacts_diy_counts(this.f8774d.getContacts_counts());
                    homeInfo.setIsdiy(this.f8774d.isIsdiy());
                    intent.putExtra("homeinfo", homeInfo);
                    C2464c.this.f8769g.startActivity(intent);
                    C2464c.this.f8770h.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                }
                PersonaliseContact personaliseContact = this.f8774d;
                if (!personaliseContact.isselect) {
                    personaliseContact.isselect = true;
                    C2464c.this.f8772j.add(this.f8774d);
                    this.f8775e.f8781x.setChecked(true);
                } else {
                    C2464c.this.f8772j.remove(this.f8774d);
                    this.f8774d.isselect = false;
                    this.f8775e.f8781x.setChecked(false);
                }
                if (C2464c.this.f8773k == null) {
                    return;
                }
                C2464c.this.f8773k.mo27291a(view, this.f8776f, C2464c.this.f8772j);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/c$b.class */
    public interface AbstractC2466b {
        /* renamed from: a */
        void mo27291a(View view, int i, List<PersonaliseContact> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.a.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/a/c$c.class */
    public static class C2467c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f8778u;

        /* renamed from: v */
        private ImageView f8779v;

        /* renamed from: w */
        private ImageView f8780w;

        /* renamed from: x */
        private CheckBox f8781x;

        C2467c(View view) {
            super(view);
            this.f8778u = (FrameLayout) view.findViewById(R$id.item_home_click);
            this.f8779v = (ImageView) view.findViewById(R$id.item_home_image);
            this.f8780w = (ImageView) view.findViewById(R$id.iv_selected);
            this.f8781x = (CheckBox) view.findViewById(2131296467);
        }
    }

    public C2464c(Context context) {
        super(context);
        this.f8769g = context;
        this.f8770h = (Activity) context;
        C3871w0 c3871w0 = new C3871w0(this.f8769g, DensityUtil.dip2px(4.0f));
        c3871w0.m23903c(true, true, true, true);
        this.f8768f = new C4401e().mo22615j0(c3871w0);
    }

    /* renamed from: H */
    public void m27293H(boolean z) {
        this.f8771i = z;
    }

    /* renamed from: I */
    public void m27292I(AbstractC2466b abstractC2466b) {
        this.f8773k = abstractC2466b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2467c c2467c = (C2467c) abstractC0905b0;
        PersonaliseContact personaliseContact = (PersonaliseContact) this.f8790d.get(i);
        if (this.f8771i) {
            c2467c.f8781x.setVisibility(0);
            c2467c.f8780w.setVisibility(8);
            if (personaliseContact.isselect) {
                c2467c.f8781x.setChecked(true);
            } else {
                c2467c.f8781x.setChecked(false);
            }
            this.f8772j.clear();
        } else {
            personaliseContact.isselect = false;
            c2467c.f8780w.setVisibility(0);
            c2467c.f8781x.setVisibility(8);
            if (personaliseContact.isIs_default()) {
                c2467c.f8780w.setImageResource(R$drawable.ic_callscreen_select);
            } else {
                c2467c.f8780w.setImageResource(R$drawable.ic_person_set);
            }
        }
        C3067a.m26102b(this.f8769g).mo23637k().mo23655F0(personaliseContact.getPath()).mo22617i0(false).mo23651p0(this.f8768f).mo22631a0(c2467c.f8779v.getDrawable()).m23660A0(c2467c.f8779v);
        c2467c.f8778u.setOnClickListener(new View$OnClickListenerC2465a(personaliseContact, c2467c, i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2467c(this.f8791e.inflate(R$layout.item_mange_diy, viewGroup, false));
    }
}
