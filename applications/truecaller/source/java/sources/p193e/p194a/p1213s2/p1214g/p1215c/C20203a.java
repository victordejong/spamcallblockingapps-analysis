package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.TextToSpeechInitError;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17538g;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.a */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/a.class */
public final class C20203a extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56921a = LogLevel.DEBUG;

    /* renamed from: b */
    public final TextToSpeechInitError f56922b;

    /* renamed from: c */
    public final String f56923c;

    public C20203a(TextToSpeechInitError textToSpeechInitError, String str) {
        l.e(textToSpeechInitError, "reason");
        l.e(str, "language");
        this.f56922b = textToSpeechInitError;
        this.f56923c = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("AC_TTSInitializeError", i.W(new k[]{new k("reason", this.f56922b.name()), new k("Language", this.f56923c)}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("reason", this.f56922b.name());
        return C22128a.m8588o1(bundle, "Language", this.f56923c, "AC_TTSInitializeError", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17538g> mo9875d() {
        Schema schema = C17538g.f49261e;
        C17538g.C17540b c17540b = new C17538g.C17540b(null);
        String name = this.f56922b.name();
        c17540b.validate(c17540b.fields()[2], name);
        c17540b.f49269a = name;
        c17540b.fieldSetFlags()[2] = true;
        String str = this.f56923c;
        c17540b.validate(c17540b.fields()[3], str);
        c17540b.f49270b = str;
        c17540b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d<>(c17540b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56921a;
    }
}
