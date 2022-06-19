package p303z2;

import android.content.Context;
import com.google.gson.JsonIOException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Objects;
import p124i4.C3102d;
import p148k7.AbstractC3362o;
import p159l7.AbstractC3510a;
import p161l9.AbstractC3541a;
import p181n7.C3759h;
import p192o7.AbstractC3938a;
import p233s6.AbstractC4314i;
import p233s6.C4312g;
import p276w6.C4741b;
/* renamed from: z2.x */
/* loaded from: classes-dex2jar.jar:z2/x.class */
public class C5067x implements AbstractC3541a, AbstractC3938a {

    /* renamed from: a */
    public Object f15374a;

    /* renamed from: b */
    public Object f15375b;

    /* renamed from: c */
    public Object f15376c;

    public /* synthetic */ C5067x(AbstractC3541a abstractC3541a, AbstractC3541a abstractC3541a2, AbstractC3541a abstractC3541a3) {
        this.f15374a = abstractC3541a;
        this.f15375b = abstractC3541a2;
        this.f15376c = abstractC3541a3;
    }

    public /* synthetic */ C5067x(C4312g c4312g, AbstractC4314i abstractC4314i) {
        this.f15375b = abstractC4314i;
        this.f15376c = c4312g;
    }

    @Override // p192o7.AbstractC3938a
    /* renamed from: a */
    public void mo78a(C3759h c3759h, AbstractC3362o abstractC3362o, AbstractC3510a abstractC3510a) {
        if (((byte[]) this.f15374a) == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
            C4312g c4312g = (C4312g) this.f15376c;
            AbstractC4314i abstractC4314i = (AbstractC4314i) this.f15375b;
            Objects.requireNonNull(c4312g);
            try {
                C4741b c4741b = new C4741b(outputStreamWriter);
                c4741b.f14628i = false;
                c4312g.m1113a(abstractC4314i, c4741b);
                this.f15374a = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new JsonIOException(e);
            }
        }
        C3102d.m2643I(abstractC3362o, (byte[]) this.f15374a, abstractC3510a);
    }

    @Override // p192o7.AbstractC3938a
    /* renamed from: b */
    public String mo77b() {
        return "application/json";
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        return new C5065w((Context) ((AbstractC3541a) this.f15374a).get(), (String) ((AbstractC3541a) this.f15375b).get(), ((Integer) ((AbstractC3541a) this.f15376c).get()).intValue());
    }

    @Override // p192o7.AbstractC3938a
    public int length() {
        if (((byte[]) this.f15374a) == null) {
            this.f15374a = ((AbstractC4314i) this.f15375b).toString().getBytes();
        }
        return ((byte[]) this.f15374a).length;
    }
}
