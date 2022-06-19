package com.google.android.exoplayer2.metadata.icy;

import com.google.android.exoplayer2.metadata.AbstractC11205f;
import com.google.android.exoplayer2.metadata.C11197c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.base.C15374d;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.metadata.icy.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/a.class */
public final class C11210a extends AbstractC11205f {

    /* renamed from: a */
    private static final Pattern f36768a = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: b */
    private final CharsetDecoder f36769b = C15374d.f55620c.newDecoder();

    /* renamed from: c */
    private final CharsetDecoder f36770c = C15374d.f55619b.newDecoder();

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private String m21205a(ByteBuffer byteBuffer) {
        try {
            return this.f36769b.decode(byteBuffer).toString();
        } catch (CharacterCodingException e) {
            try {
                String charBuffer = this.f36770c.decode(byteBuffer).toString();
                this.f36770c.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException e2) {
                this.f36770c.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f36770c.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f36769b.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.google.android.exoplayer2.metadata.AbstractC11205f
    /* renamed from: a */
    public final Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer) {
        String m21205a = m21205a(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (m21205a == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f36768a.matcher(m21205a);
        String str2 = null;
        int i = 0;
        while (matcher.find(i)) {
            String m19927d = C11599af.m19927d(matcher.group(1));
            String group = matcher.group(2);
            String str3 = str;
            String str4 = str2;
            if (m19927d != null) {
                m19927d.hashCode();
                if (m19927d.equals("streamurl")) {
                    str4 = group;
                    str3 = str;
                } else if (!m19927d.equals("streamtitle")) {
                    str3 = str;
                    str4 = str2;
                } else {
                    str3 = group;
                    str4 = str2;
                }
            }
            i = matcher.end();
            str = str3;
            str2 = str4;
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
