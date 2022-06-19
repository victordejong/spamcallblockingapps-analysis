package p193e.p1577m.p1578a.p1596c.p1613i1.p1615h;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyInfo;
import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24465d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.i1.h.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/h/a.class */
public final class C24470a implements AbstractC24462b {

    /* renamed from: c */
    public static final Pattern f68316c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a */
    public final CharsetDecoder f68317a = Charset.forName(StringConstant.UTF8).newDecoder();

    /* renamed from: b */
    public final CharsetDecoder f68318b = Charset.forName("ISO-8859-1").newDecoder();

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b
    /* renamed from: a */
    public Metadata mo5044a(C24465d c24465d) {
        String str;
        ByteBuffer byteBuffer = c24465d.f67301b;
        Objects.requireNonNull(byteBuffer);
        String str2 = null;
        try {
            str = this.f68317a.decode(byteBuffer).toString();
        } catch (CharacterCodingException e) {
            try {
                str = this.f68318b.decode(byteBuffer).toString();
                this.f68318b.reset();
                byteBuffer.rewind();
            } catch (CharacterCodingException e2) {
                this.f68318b.reset();
                byteBuffer.rewind();
                str = null;
            } catch (Throwable th) {
                this.f68318b.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f68317a.reset();
            byteBuffer.rewind();
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (str == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f68316c.matcher(str);
        String str3 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String m4626D = C24773d0.m4626D(matcher.group(1));
            String group = matcher.group(2);
            m4626D.hashCode();
            if (m4626D.equals("streamurl")) {
                str3 = group;
            } else if (m4626D.equals("streamtitle")) {
                str2 = group;
            }
        }
        return new Metadata(new IcyInfo(bArr, str2, str3));
    }
}
