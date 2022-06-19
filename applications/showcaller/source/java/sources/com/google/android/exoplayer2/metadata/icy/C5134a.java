package com.google.android.exoplayer2.metadata.icy;

import com.google.android.exoplayer2.metadata.AbstractC5121b;
import com.google.android.exoplayer2.metadata.C5124d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.metadata.icy.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/a.class */
public final class C5134a implements AbstractC5121b {

    /* renamed from: a */
    private static final Pattern f16128a = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: b */
    private final CharsetDecoder f16129b = Charset.forName("UTF-8").newDecoder();

    /* renamed from: c */
    private final CharsetDecoder f16130c = Charset.forName("ISO-8859-1").newDecoder();

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private String m20366b(ByteBuffer byteBuffer) {
        try {
            return this.f16129b.decode(byteBuffer).toString();
        } catch (CharacterCodingException e) {
            try {
                String charBuffer = this.f16130c.decode(byteBuffer).toString();
                this.f16130c.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException e2) {
                this.f16130c.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f16130c.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f16129b.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.google.android.exoplayer2.metadata.AbstractC5121b
    /* renamed from: a */
    public Metadata mo20287a(C5124d c5124d) {
        ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c5124d.f14775e);
        String m20366b = m20366b(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (m20366b == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f16128a.matcher(m20366b);
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String m18804u0 = C5515h0.m18804u0(matcher.group(1));
            String group = matcher.group(2);
            m18804u0.hashCode();
            if (m18804u0.equals("streamurl")) {
                str2 = group;
            } else if (m18804u0.equals("streamtitle")) {
                str = group;
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
