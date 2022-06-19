package scala.p029io;

import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import scala.p029io.LowPriorityCodecImplicits;
import scala.runtime.BoxedUnit;
import scala.util.Properties$;
/* renamed from: scala.io.Codec$ */
/* loaded from: classes3-dex2jar.jar:scala/io/Codec$.class */
public final class Codec$ implements LowPriorityCodecImplicits {
    public static final Codec$ MODULE$ = null;
    private final Codec ISO8859 = new Codec(Charset.forName("ISO-8859-1"));
    private final Codec UTF8 = new Codec(Charset.forName(POBCommonConstants.URL_ENCODING));
    private volatile boolean bitmap$0;
    private final Codec fallbackSystemCodec;

    static {
        new Codec$();
    }

    private Codec$() {
        MODULE$ = this;
        LowPriorityCodecImplicits.Cclass.$init$(this);
    }

    private Codec fallbackSystemCodec$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.fallbackSystemCodec = LowPriorityCodecImplicits.Cclass.fallbackSystemCodec(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.fallbackSystemCodec;
    }

    public final Codec ISO8859() {
        return this.ISO8859;
    }

    public final Codec UTF8() {
        return this.UTF8;
    }

    public Codec apply(String str) {
        return new Codec(Charset.forName(str));
    }

    public Codec apply(Charset charset) {
        return new Codec(charset);
    }

    public Codec apply(CharsetDecoder charsetDecoder) {
        return new Codec(charsetDecoder, charsetDecoder) { // from class: scala.io.Codec$$anon$1
            private final CharsetDecoder _decoder$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(charsetDecoder.charset());
                this._decoder$1 = charsetDecoder;
            }

            @Override // scala.p029io.Codec
            public CharsetDecoder decoder() {
                return this._decoder$1;
            }
        };
    }

    public Codec charset2codec(Charset charset) {
        return apply(charset);
    }

    public Codec decoder2codec(CharsetDecoder charsetDecoder) {
        return apply(charsetDecoder);
    }

    /* renamed from: default */
    public Codec m6341default() {
        return defaultCharsetCodec();
    }

    public Codec defaultCharsetCodec() {
        return apply(Charset.defaultCharset());
    }

    @Override // scala.p029io.LowPriorityCodecImplicits
    public Codec fallbackSystemCodec() {
        return this.bitmap$0 ? this.fallbackSystemCodec : fallbackSystemCodec$lzycompute();
    }

    public Codec fileEncodingCodec() {
        return apply(Properties$.MODULE$.encodingString());
    }

    public char[] fromUTF8(byte[] bArr) {
        return fromUTF8(bArr, 0, bArr.length);
    }

    public char[] fromUTF8(byte[] bArr, int i, int i2) {
        CharBuffer decode = UTF8().charSet().decode(ByteBuffer.wrap(bArr, i, i2));
        char[] cArr = new char[decode.remaining()];
        decode.get(cArr);
        return cArr;
    }

    public Codec string2codec(String str) {
        return apply(str);
    }

    public byte[] toUTF8(CharSequence charSequence) {
        ByteBuffer encode = UTF8().charSet().encode(CharBuffer.wrap(charSequence, 0, charSequence.length()));
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    public byte[] toUTF8(char[] cArr, int i, int i2) {
        ByteBuffer encode = UTF8().charSet().encode(CharBuffer.wrap(cArr, i, i2));
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }
}
