package androidx.media2.exoplayer.external.metadata.icy;

import androidx.media2.exoplayer.external.metadata.AbstractC1668a;
import androidx.media2.exoplayer.external.metadata.C1671c;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.metadata.icy.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/a.class */
public final class C1681a implements AbstractC1668a {

    /* renamed from: a */
    private static final Pattern f6680a = Pattern.compile("(.+?)='(.*?)';", 32);

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1668a
    /* renamed from: a */
    public final Metadata mo41191a(C1671c c1671c) {
        ByteBuffer byteBuffer = (ByteBuffer) C1993a.m41690a(c1671c.f5494c);
        Matcher matcher = f6680a.matcher(C1996ac.m41648a(byteBuffer.array(), 0, byteBuffer.limit()));
        String str = null;
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String m41620d = C1996ac.m41620d(matcher.group(1));
            String group = matcher.group(2);
            m41620d.hashCode();
            if (m41620d.equals("streamurl")) {
                str2 = group;
            } else if (!m41620d.equals("streamtitle")) {
                String valueOf = String.valueOf(str);
                C2009j.m41584a("IcyDecoder", valueOf.length() != 0 ? "Unrecognized ICY tag: ".concat(valueOf) : new String("Unrecognized ICY tag: "));
            } else {
                str = group;
            }
        }
        if (str == null && str2 == null) {
            return null;
        }
        return new Metadata(new IcyInfo(str, str2));
    }
}
