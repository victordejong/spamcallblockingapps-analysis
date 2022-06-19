package com.truecaller.tagger;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.tagger.TagPickActivity;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p798g5.AbstractC14514g;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l;
import p193e.p194a.p798g5.View$OnClickListenerC14541t;
/* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/TagPickActivity.class */
public class TagPickActivity extends AbstractC14514g implements View$OnClickListenerC14541t.AbstractC14547f {

    /* renamed from: q */
    public static final /* synthetic */ int f15265q = 0;

    /* renamed from: h */
    public Contact f15266h;

    /* renamed from: i */
    public int f15267i;

    /* renamed from: j */
    public int f15268j;

    /* renamed from: k */
    public AbstractC19844a f15269k;
    @Inject

    /* renamed from: l */
    public AbstractC19854f<AbstractC14535n> f15270l;
    @Inject

    /* renamed from: m */
    public AbstractC19462a f15271m;
    @Inject

    /* renamed from: n */
    public AbstractC14537p f15272n;

    /* renamed from: o */
    public AbstractC19868j f15273o;
    @Inject

    /* renamed from: p */
    public AbstractC19870l f15274p;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.truecaller.tagger.TagPickActivity, android.content.Context] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r4v0 */
    @Override // p193e.p194a.p798g5.View$OnClickListenerC14541t.AbstractC14547f
    /* renamed from: F5 */
    public void mo20018F5(final C8551c c8551c) {
        String str = "Tag changed to " + c8551c;
        if (this.f15266h == null) {
            m34624ra(c8551c, null);
            return;
        }
        AbstractC19844a abstractC19844a = this.f15269k;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        ?? r13 = true;
        ?? r15 = c8551c != null ? c8551c.f26352c : true;
        if (c8551c != null) {
            r13 = c8551c.f26350a;
        }
        this.f15269k = this.f15270l.mo11854a().mo20027b(this.f15266h, r15 == true ? 1L : 0L, r13 == true ? 1L : 0L, this.f15268j, this.f15267i).mo11830e(this.f15273o, new AbstractC19851d0() { // from class: e.a.g5.b
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                TagPickActivity tagPickActivity = TagPickActivity.this;
                Void r0 = (Void) obj;
                tagPickActivity.m34624ra(c8551c, tagPickActivity.f15266h);
            }
        });
        if (c8551c == null) {
            return;
        }
        Toast.makeText((Context) this, C4604R.string.TagsChooserThanks, 1).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p798g5.View$OnClickListenerC14541t.AbstractC14547f
    /* renamed from: f8 */
    public void mo20017f8() {
        setResult(0);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        this.f15273o = this.f15274p.mo11845d();
    }

    public void onDestroy() {
        TagPickActivity.super.onDestroy();
        AbstractC19844a abstractC19844a = this.f15269k;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
            this.f15269k = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.tagger.TagPickActivity, e.a.g5.l, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l
    /* renamed from: qa */
    public AbstractView$OnClickListenerC14526l.AbstractC14530d mo20029qa() {
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return null;
        }
        this.f15267i = intent.getIntExtra("search_type", 999);
        this.f15268j = intent.getIntExtra("tag_context", 0);
        ?? r8 = true;
        Long valueOf = Long.valueOf(intent.getLongExtra("initial_tag", Long.MIN_VALUE));
        Contact contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT);
        this.f15266h = contact;
        if (contact != null) {
            C8551c mo20025b = this.f15272n.mo20025b(contact);
            valueOf = mo20025b == null ? null : Long.valueOf(mo20025b.f26350a);
        }
        int i = this.f15268j;
        int i2 = View$OnClickListenerC14541t.f41820w;
        Bundle bundle = new Bundle();
        if (valueOf != null) {
            r8 = valueOf.longValue();
        }
        bundle.putLong("initial_tag", r8 == true ? 1L : 0L);
        bundle.putInt("tag_context", i);
        View$OnClickListenerC14541t view$OnClickListenerC14541t = new View$OnClickListenerC14541t();
        view$OnClickListenerC14541t.setArguments(bundle);
        return view$OnClickListenerC14541t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ra */
    public final void m34624ra(C8551c c8551c, Contact contact) {
        this.f15269k = null;
        this.f15271m.mo13271e(new AbstractC19502g.C19504b.C19505a("TAGVIEW_Tagged", null, C22128a.m8667T("Tag_Id", c8551c != null ? String.valueOf(c8551c.f26350a) : "NONE"), null));
        Intent intent = new Intent();
        if (c8551c != null) {
            intent.putExtra("tag_id", c8551c.f26350a);
        }
        intent.putExtra(AnalyticsConstants.CONTACT, contact);
        setResult(-1, intent);
        finish();
    }
}
