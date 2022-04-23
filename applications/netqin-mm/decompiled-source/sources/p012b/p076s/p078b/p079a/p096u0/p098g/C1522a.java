package p012b.p076s.p078b.p079a.p096u0.p098g;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.icy.IcyInfo;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1515a;
import p012b.p076s.p078b.p079a.p096u0.C1518c;
/* renamed from: b.s.b.a.u0.g.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/g/a.class */
public final class C1522a implements AbstractC1515a {

    /* renamed from: a */
    public static final Pattern f6230a = Pattern.compile("(.+?)='(.*?)';", 32);

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1515a
    /* renamed from: a */
    public Metadata mo32135a(C1518c cVar) {
        ByteBuffer byteBuffer = cVar.f5245c;
        return m32993a(C1167d0.m34468a(byteBuffer.array(), 0, byteBuffer.limit()));
    }

    /* renamed from: a */
    public Metadata m32993a(String str) {
        Matcher matcher = f6230a.matcher(str);
        Metadata metadata = null;
        String str2 = null;
        String str3 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String j = C1167d0.m34432j(matcher.group(1));
            String group = matcher.group(2);
            char c = 65535;
            int hashCode = j.hashCode();
            if (hashCode != -315603473) {
                if (hashCode == 1646559960 && j.equals("streamtitle")) {
                    c = 0;
                }
            } else if (j.equals("streamurl")) {
                c = 1;
            }
            if (c == 0) {
                str2 = group;
            } else if (c != 1) {
                String valueOf = String.valueOf(str2);
                C1175j.m34414d("IcyDecoder", valueOf.length() != 0 ? "Unrecognized ICY tag: ".concat(valueOf) : new String("Unrecognized ICY tag: "));
            } else {
                str3 = group;
            }
        }
        if (!(str2 == null && str3 == null)) {
            metadata = new Metadata(new IcyInfo(str2, str3));
        }
        return metadata;
    }
}
