package p193e.p1577m.p1578a.p1596c.p1612h1;

import java.util.regex.Pattern;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24451h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.h1.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/a.class */
public final /* synthetic */ class C24442a implements C24451h.AbstractC24458g {

    /* renamed from: a */
    public static final /* synthetic */ C24442a f68205a = new C24442a();

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.C24451h.AbstractC24458g
    /* renamed from: a */
    public final int mo5076a(Object obj) {
        Pattern pattern = C24451h.f68283a;
        String str = ((C24446e) obj).f68209a;
        return (str.startsWith("OMX.google") || str.startsWith("c2.android")) ? 1 : (C24773d0.f69427a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }
}
