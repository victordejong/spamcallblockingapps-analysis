package scala.p029io;

import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import scala.Function0;
import scala.Function1;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0015h\u0001B\u0001\u0003\u0001\u001d\u0011QaQ8eK\u000eT!a\u0001\u0003\u0002\u0005%|'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0011\u0001\u0001\u0003\t\u0003\u0013)i\u0011\u0001B\u0005\u0003\u0017\u0011\u0011a!\u00118z%\u00164\u0007\u0002C\u0007\u0001\u0005\u000b\u0007I\u0011\u0001\b\u0002\u000f\rD\u0017M]*fiV\tq\u0002\u0005\u0002\u0011/5\t\u0011C\u0003\u0002\u0013'\u000591\r[1sg\u0016$(B\u0001\u000b\u0016\u0003\rq\u0017n\u001c\u0006\u0002-\u0005!!.\u0019<b\u0013\tA\u0012CA\u0004DQ\u0006\u00148/\u001a;\t\u0011i\u0001!\u0011!Q\u0001\n=\t\u0001b\u00195beN+G\u000f\t\u0005\u00069\u0001!\t!H\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005y\u0001\u0003CA\u0010\u0001\u001b\u0005\u0011\u0001\"B\u0007\u001c\u0001\u0004yQ\u0001\u0002\u0012\u0001\u0001\r\u0012\u0011bQ8oM&<WO]3\u0016\u0005\u0011b\u0003\u0003B\u0005&OUJ!A\n\u0003\u0003\rQ+\b\u000f\\33!\u0011I\u0001F\u000b\u0016\n\u0005%\"!!\u0003$v]\u000e$\u0018n\u001c82!\tYC\u0006\u0004\u0001\u0005\u000b5\n#\u0019\u0001\u0018\u0003\u0003Q\u000b\"a\f\u001a\u0011\u0005%\u0001\u0014BA\u0019\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!C\u001a\n\u0005Q\"!aA!osB\u0011\u0011BN\u0005\u0003o\u0011\u0011qAQ8pY\u0016\fg.\u0002\u0003:\u0001\u0001Q$a\u0002%b]\u0012dWM\u001d\t\u0005\u0013!Zd\b\u0005\u0002\u0011y%\u0011Q(\u0005\u0002\u0019\u0007\"\f'/Y2uKJ\u001cu\u000eZ5oO\u0016C8-\u001a9uS>t\u0007CA\u0005@\u0013\t\u0001EAA\u0002J]RDaA\u0011\u0001!B\u0013\u0019\u0015!E0p]6\u000bGNZ8s[\u0016$\u0017J\u001c9viB\u0011\u0001\u0003R\u0005\u0003\u000bF\u0011\u0011cQ8eS:<WI\u001d:pe\u0006\u001bG/[8o\u0011\u00199\u0005\u0001)Q\u0005\u0007\u00061rl\u001c8V]6\f\u0007\u000f]1cY\u0016\u001c\u0005.\u0019:bGR,'\u000f\u0003\u0004J\u0001\u0001\u0006KAS\u0001\u0015?\u0016t7m\u001c3j]\u001e\u0014V\r\u001d7bG\u0016lWM\u001c;\u0011\u0007%YU*\u0003\u0002M\t\t)\u0011I\u001d:bsB\u0011\u0011BT\u0005\u0003\u001f\u0012\u0011AAQ=uK\"1\u0011\u000b\u0001Q!\nI\u000bAc\u00183fG>$\u0017N\\4SKBd\u0017mY3nK:$\bCA*W\u001d\tIA+\u0003\u0002V\t\u00051\u0001K]3eK\u001aL!a\u0016-\u0003\rM#(/\u001b8h\u0015\t)F\u0001\u0003\u0004[\u0001\u0001\u0006KaW\u0001\u0013?>t7i\u001c3j]\u001e,\u0005pY3qi&|g\u000e\u0005\u0002]q5\t\u0001\u0001C\u0003_\u0001\u0011\u0005s,\u0001\u0005u_N#(/\u001b8h)\u0005\u0001\u0007CA1e\u001b\u0005\u0011'BA2\u0016\u0003\u0011a\u0017M\\4\n\u0005]\u0013\u0007\"\u00024\u0001\t\u00039\u0017\u0001E8o\u001b\u0006dgm\u001c:nK\u0012Le\u000e];u)\ta\u0006\u000eC\u0003jK\u0002\u00071)A\u0005oK^\f5\r^5p]\")1\u000e\u0001C\u0001Y\u0006)rN\\+o[\u0006\u0004\b/\u00192mK\u000eC\u0017M]1di\u0016\u0014HC\u0001/n\u0011\u0015I'\u000e1\u0001D\u0011\u0015y\u0007\u0001\"\u0001q\u0003M!WmY8eS:<'+\u001a9mC\u000e,w+\u001b;i)\ta\u0016\u000fC\u0003s]\u0002\u0007!+\u0001\boK^\u0014V\r\u001d7bG\u0016lWM\u001c;\t\u000bQ\u0004A\u0011A;\u0002'\u0015t7m\u001c3j]\u001e\u0014V\r\u001d7bG\u0016<\u0016\u000e\u001e5\u0015\u0005q3\b\"\u0002:t\u0001\u0004Q\u0005\"\u0002=\u0001\t\u0003I\u0018!E8o\u0007>$\u0017N\\4Fq\u000e,\u0007\u000f^5p]R\u0011AL\u001f\u0005\u0006w^\u0004\raW\u0001\bQ\u0006tG\r\\3s\u0011\u0015i\b\u0001\"\u0001\u007f\u0003\u0011q\u0017-\\3\u0016\u0003\u0001Dq!!\u0001\u0001\t\u0003\t\u0019!A\u0004f]\u000e|G-\u001a:\u0016\u0005\u0005\u0015\u0001c\u0001\t\u0002\b%\u0019\u0011\u0011B\t\u0003\u001d\rC\u0017M]:fi\u0016s7m\u001c3fe\"9\u0011Q\u0002\u0001\u0005\u0002\u0005=\u0011a\u00023fG>$WM]\u000b\u0003\u0003#\u00012\u0001EA\n\u0013\r\t)\"\u0005\u0002\u000f\u0007\"\f'o]3u\t\u0016\u001cw\u000eZ3s\u0011\u001d\tI\u0002\u0001C\u0001\u00037\tAa\u001e:baR\u0019a(!\b\t\u0013\u0005}\u0011q\u0003CA\u0002\u0005\u0005\u0012\u0001\u00022pIf\u0004B!CA\u0012}%\u0019\u0011Q\u0005\u0003\u0003\u0011q\u0012\u0017P\\1nKz:q!!\u000b\u0003\u0011\u0003\tY#A\u0003D_\u0012,7\rE\u0002 \u0003[1a!\u0001\u0002\t\u0002\u0005=2#BA\u0017\u0011\u0005E\u0002cA\u0010\u00024%\u0019\u0011Q\u0007\u0002\u000331{w\u000f\u0015:j_JLG/_\"pI\u0016\u001c\u0017*\u001c9mS\u000eLGo\u001d\u0005\b9\u00055B\u0011AA\u001d)\t\tY\u0003\u0003\u0006\u0002>\u00055\"\u0019!C\u0003\u0003\u007f\tq!S*Pqa*\u0014(F\u0001\u001f\u0011!\t\u0019%!\f!\u0002\u001bq\u0012\u0001C%T\u001fbBT'\u000f\u0011\t\u0015\u0005\u001d\u0013Q\u0006b\u0001\n\u000b\ty$\u0001\u0003V)\u001aC\u0004\u0002CA&\u0003[\u0001\u000bQ\u0002\u0010\u0002\u000bU#f\t\u000f\u0011\t\u0011\u0005=\u0013Q\u0006C\u0001\u0003\u007f\t1\u0003Z3gCVdGo\u00115beN,GoQ8eK\u000eD\u0001\"a\u0015\u0002.\u0011\u0005\u0011qH\u0001\u0012M&dW-\u00128d_\u0012LgnZ\"pI\u0016\u001c\u0007\u0002CA,\u0003[!\t!a\u0010\u0002\u000f\u0011,g-Y;mi\"A\u00111LA\u0017\t\u0003\ti&A\u0003baBd\u0017\u0010F\u0002\u001f\u0003?Bq!!\u0019\u0002Z\u0001\u0007!+\u0001\u0005f]\u000e|G-\u001b8h\u0011!\tY&!\f\u0005\u0002\u0005\u0015Dc\u0001\u0010\u0002h!1Q\"a\u0019A\u0002=A\u0001\"a\u0017\u0002.\u0011\u0005\u00111\u000e\u000b\u0004=\u00055\u0004\u0002CA\u0007\u0003S\u0002\r!!\u0005\t\u0011\u0005E\u0014Q\u0006C\u0001\u0003g\n\u0001B\u001a:p[V#f\t\u000f\u000b\u0005\u0003k\ni\b\u0005\u0003\n\u0017\u0006]\u0004cA\u0005\u0002z%\u0019\u00111\u0010\u0003\u0003\t\rC\u0017M\u001d\u0005\b\u0003\u007f\ny\u00071\u0001K\u0003\u0015\u0011\u0017\u0010^3tQ!\ty'a!\u0002\u0010\u0006M\u0005\u0003BAC\u0003\u0017k!!a\"\u000b\u0007\u0005%E!\u0001\u0006b]:|G/\u0019;j_:LA!!$\u0002\b\nIQ.[4sCRLwN\\\u0011\u0003\u0003#\u000bq\u000b\u00165jg\u0002jW\r\u001e5pI\u0002:\u0018m\u001d\u0011qe\u00164\u0018n\\;tYf\u0004S.[:oC6,G\r\t1u_V#f\t\u000f1/A\r{gN^3siN\u0004cM]8nA\u0005\u0013(/Y=\\\u0005f$X-\u0018\u0011u_\u0002\n%O]1z7\u000eC\u0017M]//C\t\t)*A\u00033]er\u0003\u0007\u0003\u0005\u0002r\u00055B\u0011AAM)!\t)(a'\u0002\u001e\u0006\u0005\u0006bBA@\u0003/\u0003\rA\u0013\u0005\b\u0003?\u000b9\n1\u0001?\u0003\u0019ygMZ:fi\"9\u00111UAL\u0001\u0004q\u0014a\u00017f]\"A\u0011qUA\u0017\t\u0003\tI+\u0001\u0004u_V#f\t\u000f\u000b\u0004\u0015\u0006-\u0006\u0002CAW\u0003K\u0003\r!a,\u0002\u0005\r\u001c\bcA1\u00022&\u0019\u00111\u00172\u0003\u0019\rC\u0017M]*fcV,gnY3)\u0011\u0005\u0015\u00161QA\\\u0003'\u000b#!!/\u0002ARC\u0017n\u001d\u0011nKRDw\u000e\u001a\u0011xCN\u0004\u0003O]3wS>,8\u000f\\=![&\u001ch.Y7fI\u0002\u0002gM]8n+R3\u0005\b\u0019\u0018!\u0007>tg/\u001a:ug\u00022'o\\7!G\"\f'/Y2uKJ\u00043/Z9vK:\u001cW\r\t;pA\u0005\u0013(/Y=\\\u0005f$X-\u0018\u0018\t\u0011\u0005\u001d\u0016Q\u0006C\u0001\u0003{#rASA`\u0003\u0007\f)\r\u0003\u0005\u0002B\u0006m\u0006\u0019AA;\u0003\u0015\u0019\u0007.\u0019:t\u0011\u001d\ty*a/A\u0002yBq!a)\u0002<\u0002\u0007a\b\u0003\u0005\u0002J\u00065B1AAf\u00031\u0019HO]5oOJ\u001aw\u000eZ3d)\rq\u0012Q\u001a\u0005\b\u0003\u001f\f9\r1\u0001S\u0003\u0005\u0019\b\u0002CAj\u0003[!\u0019!!6\u0002\u001b\rD\u0017M]:fiJ\u001aw\u000eZ3d)\rq\u0012q\u001b\u0005\b\u00033\f\t\u000e1\u0001\u0010\u0003\u0005\u0019\u0007\u0002CAo\u0003[!\u0019!a8\u0002\u001b\u0011,7m\u001c3feJ\u001aw\u000eZ3d)\rq\u0012\u0011\u001d\u0005\t\u0003G\fY\u000e1\u0001\u0002\u0012\u0005\u00111\r\u001a")
/* renamed from: scala.io.Codec */
/* loaded from: classes3-dex2jar.jar:scala/io/Codec.class */
public class Codec {
    private final Charset charSet;
    private CodingErrorAction _onMalformedInput = null;
    private CodingErrorAction _onUnmappableCharacter = null;
    private byte[] _encodingReplacement = null;
    private String _decodingReplacement = null;
    private Function1<CharacterCodingException, Object> _onCodingException = new Codec$$anonfun$1(this);

    public Codec(Charset charset) {
        this.charSet = charset;
    }

    public static Codec ISO8859() {
        return Codec$.MODULE$.ISO8859();
    }

    public static Codec UTF8() {
        return Codec$.MODULE$.UTF8();
    }

    public static Codec apply(String str) {
        return Codec$.MODULE$.apply(str);
    }

    public static Codec apply(Charset charset) {
        return Codec$.MODULE$.apply(charset);
    }

    public static Codec apply(CharsetDecoder charsetDecoder) {
        return Codec$.MODULE$.apply(charsetDecoder);
    }

    public static Codec charset2codec(Charset charset) {
        return Codec$.MODULE$.charset2codec(charset);
    }

    public static Codec decoder2codec(CharsetDecoder charsetDecoder) {
        return Codec$.MODULE$.decoder2codec(charsetDecoder);
    }

    /* renamed from: default */
    public static Codec m6339default() {
        return Codec$.MODULE$.m6341default();
    }

    public static Codec defaultCharsetCodec() {
        return Codec$.MODULE$.defaultCharsetCodec();
    }

    public static Codec fallbackSystemCodec() {
        return Codec$.MODULE$.fallbackSystemCodec();
    }

    public static Codec fileEncodingCodec() {
        return Codec$.MODULE$.fileEncodingCodec();
    }

    public static char[] fromUTF8(byte[] bArr) {
        return Codec$.MODULE$.fromUTF8(bArr);
    }

    public static char[] fromUTF8(byte[] bArr, int i, int i2) {
        return Codec$.MODULE$.fromUTF8(bArr, i, i2);
    }

    public static Codec string2codec(String str) {
        return Codec$.MODULE$.string2codec(str);
    }

    public static byte[] toUTF8(CharSequence charSequence) {
        return Codec$.MODULE$.toUTF8(charSequence);
    }

    public static byte[] toUTF8(char[] cArr, int i, int i2) {
        return Codec$.MODULE$.toUTF8(cArr, i, i2);
    }

    public Charset charSet() {
        return this.charSet;
    }

    public CharsetDecoder decoder() {
        CharsetDecoder newDecoder = charSet().newDecoder();
        CodingErrorAction codingErrorAction = this._onMalformedInput;
        if (codingErrorAction != null) {
            newDecoder.onMalformedInput(codingErrorAction);
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        CodingErrorAction codingErrorAction2 = this._onUnmappableCharacter;
        if (codingErrorAction2 != null) {
            newDecoder.onUnmappableCharacter(codingErrorAction2);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        String str = this._decodingReplacement;
        if (str != null) {
            newDecoder.replaceWith(str);
        } else {
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        }
        return newDecoder;
    }

    public Codec decodingReplaceWith(String str) {
        this._decodingReplacement = str;
        return this;
    }

    public CharsetEncoder encoder() {
        CharsetEncoder newEncoder = charSet().newEncoder();
        CodingErrorAction codingErrorAction = this._onMalformedInput;
        if (codingErrorAction != null) {
            newEncoder.onMalformedInput(codingErrorAction);
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        CodingErrorAction codingErrorAction2 = this._onUnmappableCharacter;
        if (codingErrorAction2 != null) {
            newEncoder.onUnmappableCharacter(codingErrorAction2);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        byte[] bArr = this._encodingReplacement;
        if (bArr != null) {
            newEncoder.replaceWith(bArr);
        } else {
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        }
        return newEncoder;
    }

    public Codec encodingReplaceWith(byte[] bArr) {
        this._encodingReplacement = bArr;
        return this;
    }

    public String name() {
        return charSet().name();
    }

    public Codec onCodingException(Function1<CharacterCodingException, Object> function1) {
        this._onCodingException = function1;
        return this;
    }

    public Codec onMalformedInput(CodingErrorAction codingErrorAction) {
        this._onMalformedInput = codingErrorAction;
        return this;
    }

    public Codec onUnmappableCharacter(CodingErrorAction codingErrorAction) {
        this._onUnmappableCharacter = codingErrorAction;
        return this;
    }

    public String toString() {
        return name();
    }

    public int wrap(Function0<Object> function0) {
        int i;
        try {
            i = function0.apply$mcI$sp();
        } catch (CharacterCodingException e) {
            i = BoxesRunTime.unboxToInt(this._onCodingException.apply(e));
        }
        return i;
    }
}
