package p242t5;

import android.support.p012v4.media.C0082b;
import com.google.firebase.encoders.EncodingException;
import p221r5.AbstractC4211d;
import p221r5.AbstractC4212e;
import p242t5.C4404e;
/* renamed from: t5.a */
/* loaded from: classes2-dex2jar.jar:t5/a.class */
public final /* synthetic */ class C4400a implements AbstractC4211d {

    /* renamed from: a */
    public static final /* synthetic */ C4400a f13718a = new C4400a();

    @Override // p221r5.AbstractC4209b
    /* renamed from: a */
    public final void mo965a(Object obj, AbstractC4212e abstractC4212e) {
        C4404e.C4405a c4405a = C4404e.f13722e;
        StringBuilder m8752j = C0082b.m8752j("Couldn't find encoder for type ");
        m8752j.append(obj.getClass().getCanonicalName());
        throw new EncodingException(m8752j.toString());
    }
}
