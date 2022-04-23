package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorItemView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorItemView.class */
public class SimSelectorItemView extends LinearLayout {

    /* renamed from: a */
    public C11634p.C11635a f11765a;

    /* renamed from: b */
    public TextView f11766b;

    /* renamed from: c */
    public TextView f11767c;

    /* renamed from: d */
    public SimIconView f11768d;

    /* renamed from: e */
    public AbstractC4771b f11769e;

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorItemView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorItemView$a.class */
    public class View$OnClickListenerC4770a implements View.OnClickListener {
        public View$OnClickListenerC4770a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimSelectorItemView.this.f11769e.mo27073a(SimSelectorItemView.this.f11765a);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorItemView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorItemView$b.class */
    public interface AbstractC4771b {
        /* renamed from: a */
        void mo27073a(C11634p.C11635a aVar);
    }

    public SimSelectorItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27082a() {
        C12151d.m7000b(this.f11765a);
        String str = this.f11765a.f26120d;
        if (TextUtils.isEmpty(str)) {
            this.f11766b.setVisibility(8);
        } else {
            this.f11766b.setVisibility(0);
            this.f11766b.setText(str);
        }
        String str2 = this.f11765a.f26122f;
        if (TextUtils.isEmpty(str2)) {
            this.f11767c.setVisibility(8);
        } else {
            this.f11767c.setVisibility(0);
            this.f11767c.setText(str2);
        }
        this.f11768d.m27373a(this.f11765a.f26118b);
    }

    /* renamed from: a */
    public void m27081a(AbstractC4771b bVar) {
        this.f11769e = bVar;
    }

    /* renamed from: a */
    public void m27079a(C11634p.C11635a aVar) {
        C12151d.m7000b(aVar);
        this.f11765a = aVar;
        m27082a();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        this.f11766b = (TextView) findViewById(R$id.name);
        this.f11767c = (TextView) findViewById(R$id.details);
        this.f11768d = (SimIconView) findViewById(R$id.sim_icon);
        setOnClickListener(new View$OnClickListenerC4770a());
    }
}
