package com.google.firebase.iid;

import com.google.firebase.C4865b;
import com.google.firebase.components.AbstractC4884e;
import com.google.firebase.components.AbstractC4889g;
import com.google.firebase.installations.AbstractC5033h;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
/* renamed from: com.google.firebase.iid.q */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/q.class */
final /* synthetic */ class C4990q implements AbstractC4889g {

    /* renamed from: a */
    static final AbstractC4889g f21173a = new C4990q();

    private C4990q() {
    }

    @Override // com.google.firebase.components.AbstractC4889g
    /* renamed from: a */
    public final Object mo1779a(AbstractC4884e abstractC4884e) {
        return new FirebaseInstanceId((C4865b) abstractC4884e.mo2054a(C4865b.class), (AbstractC4857d) abstractC4884e.mo2054a(AbstractC4857d.class), (AbstractC4935h) abstractC4884e.mo2054a(AbstractC4935h.class), (AbstractC4873c) abstractC4884e.mo2054a(AbstractC4873c.class), (AbstractC5033h) abstractC4884e.mo2054a(AbstractC5033h.class));
    }
}
