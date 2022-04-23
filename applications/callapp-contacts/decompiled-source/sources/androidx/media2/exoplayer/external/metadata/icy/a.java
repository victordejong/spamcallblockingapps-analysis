package androidx.media2.exoplayer.external.metadata.icy;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.c;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/a.class */
public final class a implements androidx.media2.exoplayer.external.metadata.a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3452a = Pattern.compile("(.+?)='(.*?)';", 32);

    @Override // androidx.media2.exoplayer.external.metadata.a
    public final Metadata a(c cVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media2.exoplayer.external.util.a.a(cVar.f2949c);
        Matcher matcher = f3452a.matcher(ac.a(byteBuffer.array(), 0, byteBuffer.limit()));
        String str = null;
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String d2 = ac.d(matcher.group(1));
            String group = matcher.group(2);
            d2.hashCode();
            if (d2.equals("streamurl")) {
                str2 = group;
            } else if (!d2.equals("streamtitle")) {
                String valueOf = String.valueOf(str);
                j.a("IcyDecoder", valueOf.length() != 0 ? "Unrecognized ICY tag: ".concat(valueOf) : new String("Unrecognized ICY tag: "));
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
