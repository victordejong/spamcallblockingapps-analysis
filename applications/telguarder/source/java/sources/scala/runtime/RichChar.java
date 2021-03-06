package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.NumericRange;
import scala.math.Numeric$CharIsIntegral$;
import scala.math.Ordered;
import scala.math.Ordering$Char$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.IntegralProxy;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
import scala.runtime.ScalaWholeNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\tUf\u0001B\u0001\u0003\u0005\u001d\u0011\u0001BU5dQ\u000eC\u0017M\u001d\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u00192\u0001\u0001\u0005\r!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f4\u0016\r\u001c\t\u0004\u001b9\u0001R\"\u0001\u0002\n\u0005=\u0011!!D%oi\u0016<'/\u00197Qe>D\u0018\u0010\u0005\u0002\n#%\u0011!\u0003\u0002\u0002\u0005\u0007\"\f'\u000f\u0003\u0005\u0015\u0001\t\u0015\r\u0011\"\u0001\u0016\u0003\u0011\u0019X\r\u001c4\u0016\u0003AA\u0001b\u0006\u0001\u0003\u0002\u0003\u0006I\u0001E\u0001\u0006g\u0016dg\r\t\u0005\u00063\u0001!\tAG\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005ma\u0002CA\u0007\u0001\u0011\u0015!\u0002\u00041\u0001\u0011\u0011\u0015q\u0002\u0001\"\u0005 \u0003\rqW/\\\u000b\u0002A9\u0011\u0011%\f\b\u0003E)r!a\t\u0015\u000f\u0005\u0011:S\"A\u0013\u000b\u0005\u00192\u0011A\u0002\u001fs_>$h(C\u0001\u0006\u0013\tIC!\u0001\u0003nCRD\u0017BA\u0016-\u0003\u001dqU/\\3sS\u000eT!!\u000b\u0003\n\u00059z\u0013AD\"iCJL5/\u00138uK\u001e\u0014\u0018\r\u001c\u0006\u0003W1BQ!\r\u0001\u0005\u0012I\n1a\u001c:e+\u0005\u0019dB\u0001\u001b8\u001d\t\u0011S'\u0003\u00027Y\u0005AqJ\u001d3fe&tw-\u0003\u00029s\u0005!1\t[1s\u0015\t1D\u0006C\u0003<\u0001\u0011\u0005C(A\u0006e_V\u0014G.\u001a,bYV,G#A\u001f\u0011\u0005%q\u0014BA \u0005\u0005\u0019!u.\u001e2mK\")\u0011\t\u0001C!\u0005\u0006Qa\r\\8biZ\u000bG.^3\u0015\u0003\r\u0003\"!\u0003#\n\u0005\u0015#!!\u0002$m_\u0006$\b\"B$\u0001\t\u0003B\u0015!\u00037p]\u001e4\u0016\r\\;f)\u0005I\u0005CA\u0005K\u0013\tYEA\u0001\u0003M_:<\u0007\"B'\u0001\t\u0003r\u0015\u0001C5oiZ\u000bG.^3\u0015\u0003=\u0003\"!\u0003)\n\u0005E#!aA%oi\")1\u000b\u0001C!)\u0006I!-\u001f;f-\u0006dW/\u001a\u000b\u0002+B\u0011\u0011BV\u0005\u0003/\u0012\u0011AAQ=uK\")\u0011\f\u0001C!5\u0006Q1\u000f[8siZ\u000bG.^3\u0015\u0003m\u0003\"!\u0003/\n\u0005u#!!B*i_J$\b\"B0\u0001\t\u0003\u0002\u0017aC5t-\u0006d\u0017\u000eZ\"iCJ,\u0012!\u0019\t\u0003\u0013\tL!a\u0019\u0003\u0003\u000f\t{w\u000e\\3b]\")Q\r\u0001C!+\u0005\u0019\u0011MY:\t\u000b\u001d\u0004A\u0011\t5\u0002\u00075\f\u0007\u0010\u0006\u0002\u0011S\")!N\u001aa\u0001!\u0005!A\u000f[1u\u0011\u0015a\u0007\u0001\"\u0011n\u0003\ri\u0017N\u001c\u000b\u0003!9DQA[6A\u0002AAQ\u0001\u001d\u0001\u0005BE\faa]5h]VlW#A(\t\u000bM\u0004A\u0011A9\u0002\u000f\u0005\u001cH)[4ji\")Q\u000f\u0001C\u0001A\u0006I\u0011n]\"p]R\u0014x\u000e\u001c\u0005\u0006o\u0002!\t\u0001Y\u0001\bSN$\u0015nZ5u\u0011\u0015I\b\u0001\"\u0001a\u0003!I7\u000fT3ui\u0016\u0014\b\"B>\u0001\t\u0003\u0001\u0017aD5t\u0019\u0016$H/\u001a:Pe\u0012Kw-\u001b;\t\u000bu\u0004A\u0011\u00011\u0002\u0019%\u001cx\u000b[5uKN\u0004\u0018mY3\t\u000b}\u0004A\u0011\u00011\u0002\u0017%\u001c8\u000b]1dK\u000eC\u0017M\u001d\u0005\u0007\u0003\u0007\u0001A\u0011\u00011\u0002\u001f%\u001c\b*[4i'V\u0014(o\\4bi\u0016Da!a\u0002\u0001\t\u0003\u0001\u0017AD5t\u0019><8+\u001e:s_\u001e\fG/\u001a\u0005\u0007\u0003\u0017\u0001A\u0011\u00011\u0002\u0017%\u001c8+\u001e:s_\u001e\fG/\u001a\u0005\u0007\u0003\u001f\u0001A\u0011\u00011\u00021%\u001cXK\\5d_\u0012,\u0017\nZ3oi&4\u0017.\u001a:Ti\u0006\u0014H\u000f\u0003\u0004\u0002\u0014\u0001!\t\u0001Y\u0001\u0018SN,f.[2pI\u0016LE-\u001a8uS\u001aLWM\u001d)beRDa!a\u0006\u0001\t\u0003\u0001\u0017!F5t\u0013\u0012,g\u000e^5gS\u0016\u0014\u0018j\u001a8pe\u0006\u0014G.\u001a\u0005\u0007\u00037\u0001A\u0011\u00011\u0002\u0015%\u001cX*\u001b:s_J,G\r\u0003\u0004\u0002 \u0001!\t\u0001Y\u0001\bSNdun^3s\u0011\u0019\t\u0019\u0003\u0001C\u0001A\u00069\u0011n]+qa\u0016\u0014\bBBA\u0014\u0001\u0011\u0005\u0001-A\u0006jgRKG\u000f\\3DCN,\u0007BBA\u0016\u0001\u0011\u0005Q#A\u0004u_2{w/\u001a:\t\r\u0005=\u0002\u0001\"\u0001\u0016\u0003\u001d!x.\u00169qKJDa!a\r\u0001\t\u0003)\u0012a\u0003;p)&$H.Z\"bg\u0016Da!a\u000e\u0001\t\u0003\t\u0018aB4fiRK\b/\u001a\u0005\u0007\u0003w\u0001A\u0011A9\u0002\u001f\u001d,GOT;nKJL7MV1mk\u0016Dq!a\u0010\u0001\t\u0003\t\t%A\thKR$\u0015N]3di&|g.\u00197jif,\u0012!\u0016\u0005\u0007\u0003\u000b\u0002A\u0011A\u000b\u0002\u0019I,g/\u001a:tK\nKH/Z:\t\u0011\u0005%\u0003!!A\u0005B9\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u0005\n\u0003\u001b\u0002\u0011\u0011!C!\u0003\u001f\na!Z9vC2\u001cHcA1\u0002R!Q\u00111KA&\u0003\u0003\u0005\r!!\u0016\u0002\u0007a$\u0013\u0007E\u0002\n\u0003/J1!!\u0017\u0005\u0005\r\te._\u0004\n\u0003;\u0012\u0011\u0011!E\u0001\u0003?\n\u0001BU5dQ\u000eC\u0017M\u001d\t\u0004\u001b\u0005\u0005d\u0001C\u0001\u0003\u0003\u0003E\t!a\u0019\u0014\t\u0005\u0005\u0014Q\r\t\u0004\u0013\u0005\u001d\u0014bAA5\t\t1\u0011I\\=SK\u001aDq!GA1\t\u0003\ti\u0007\u0006\u0002\u0002`!A\u0011\u0011OA1\t\u000b\t\u0019(A\u0007ok6$S\r\u001f;f]NLwN\u001c\u000b\u0004A\u0005U\u0004bBA<\u0003_\u0002\raG\u0001\u0006IQD\u0017n\u001d\u0005\t\u0003w\n\t\u0007\"\u0002\u0002~\u0005iqN\u001d3%Kb$XM\\:j_:$2aMA@\u0011\u001d\t9(!\u001fA\u0002mA\u0001\"a!\u0002b\u0011\u0015\u0011QQ\u0001\u0016I>,(\r\\3WC2,X\rJ3yi\u0016t7/[8o)\ra\u0014q\u0011\u0005\b\u0003o\n\t\t1\u0001\u001c\u0011!\tY)!\u0019\u0005\u0006\u00055\u0015\u0001\u00064m_\u0006$h+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002C\u0003\u001fCq!a\u001e\u0002\n\u0002\u00071\u0004\u0003\u0005\u0002\u0014\u0006\u0005DQAAK\u0003MawN\\4WC2,X\rJ3yi\u0016t7/[8o)\rA\u0015q\u0013\u0005\b\u0003o\n\t\n1\u0001\u001c\u0011!\tY*!\u0019\u0005\u0006\u0005u\u0015AE5oiZ\u000bG.^3%Kb$XM\\:j_:$2ATAP\u0011\u001d\t9(!'A\u0002mA\u0001\"a)\u0002b\u0011\u0015\u0011QU\u0001\u0014Ef$XMV1mk\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004)\u0006\u001d\u0006bBA<\u0003C\u0003\ra\u0007\u0005\t\u0003W\u000b\t\u0007\"\u0002\u0002.\u0006!2\u000f[8siZ\u000bG.^3%Kb$XM\\:j_:$2AWAX\u0011\u001d\t9(!+A\u0002mA\u0001\"a-\u0002b\u0011\u0015\u0011QW\u0001\u0016SN4\u0016\r\\5e\u0007\"\f'\u000fJ3yi\u0016t7/[8o)\r\t\u0017q\u0017\u0005\b\u0003o\n\t\f1\u0001\u001c\u0011!\tY,!\u0019\u0005\u0006\u0005u\u0016!D1cg\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0003\u007fCq!a\u001e\u0002:\u0002\u00071\u0004\u0003\u0005\u0002D\u0006\u0005DQAAc\u00035i\u0017\r\u001f\u0013fqR,gn]5p]R!\u0011qYAf)\r\u0001\u0012\u0011\u001a\u0005\u0007U\u0006\u0005\u0007\u0019\u0001\t\t\u000f\u0005]\u0014\u0011\u0019a\u00017!A\u0011qZA1\t\u000b\t\t.A\u0007nS:$S\r\u001f;f]NLwN\u001c\u000b\u0005\u0003'\f9\u000eF\u0002\u0011\u0003+DaA[Ag\u0001\u0004\u0001\u0002bBA<\u0003\u001b\u0004\ra\u0007\u0005\t\u00037\f\t\u0007\"\u0002\u0002^\u0006\u00012/[4ok6$S\r\u001f;f]NLwN\u001c\u000b\u0004\u001f\u0006}\u0007bBA<\u00033\u0004\ra\u0007\u0005\t\u0003G\f\t\u0007\"\u0002\u0002f\u0006\t\u0012m\u001d#jO&$H%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007=\u000b9\u000fC\u0004\u0002x\u0005\u0005\b\u0019A\u000e\t\u0011\u0005-\u0018\u0011\rC\u0003\u0003[\f1#[:D_:$(o\u001c7%Kb$XM\\:j_:$2!YAx\u0011\u001d\t9(!;A\u0002mA\u0001\"a=\u0002b\u0011\u0015\u0011Q_\u0001\u0012SN$\u0015nZ5uI\u0015DH/\u001a8tS>tGcA1\u0002x\"9\u0011qOAy\u0001\u0004Y\u0002\u0002CA~\u0003C\")!!@\u0002%%\u001cH*\u001a;uKJ$S\r\u001f;f]NLwN\u001c\u000b\u0004C\u0006}\bbBA<\u0003s\u0004\ra\u0007\u0005\t\u0005\u0007\t\t\u0007\"\u0002\u0003\u0006\u0005I\u0012n\u001d'fiR,'o\u0014:ES\u001eLG\u000fJ3yi\u0016t7/[8o)\r\t'q\u0001\u0005\b\u0003o\u0012\t\u00011\u0001\u001c\u0011!\u0011Y!!\u0019\u0005\u0006\t5\u0011AF5t/\"LG/Z:qC\u000e,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0005\u0014y\u0001C\u0004\u0002x\t%\u0001\u0019A\u000e\t\u0011\tM\u0011\u0011\rC\u0003\u0005+\tQ#[:Ta\u0006\u001cWm\u00115be\u0012*\u0007\u0010^3og&|g\u000eF\u0002b\u0005/Aq!a\u001e\u0003\u0012\u0001\u00071\u0004\u0003\u0005\u0003\u001c\u0005\u0005DQ\u0001B\u000f\u0003eI7\u000fS5hQN+(O]8hCR,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0005\u0014y\u0002C\u0004\u0002x\te\u0001\u0019A\u000e\t\u0011\t\r\u0012\u0011\rC\u0003\u0005K\t\u0001$[:M_^\u001cVO\u001d:pO\u0006$X\rJ3yi\u0016t7/[8o)\r\t'q\u0005\u0005\b\u0003o\u0012\t\u00031\u0001\u001c\u0011!\u0011Y#!\u0019\u0005\u0006\t5\u0012!F5t'V\u0014(o\\4bi\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004C\n=\u0002bBA<\u0005S\u0001\ra\u0007\u0005\t\u0005g\t\t\u0007\"\u0002\u00036\u0005\u0011\u0013n]+oS\u000e|G-Z%eK:$\u0018NZ5feN#\u0018M\u001d;%Kb$XM\\:j_:$2!\u0019B\u001c\u0011\u001d\t9H!\rA\u0002mA\u0001Ba\u000f\u0002b\u0011\u0015!QH\u0001\"SN,f.[2pI\u0016LE-\u001a8uS\u001aLWM\u001d)beR$S\r\u001f;f]NLwN\u001c\u000b\u0004C\n}\u0002bBA<\u0005s\u0001\ra\u0007\u0005\t\u0005\u0007\n\t\u0007\"\u0002\u0003F\u0005y\u0012n]%eK:$\u0018NZ5fe&;gn\u001c:bE2,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0005\u00149\u0005C\u0004\u0002x\t\u0005\u0003\u0019A\u000e\t\u0011\t-\u0013\u0011\rC\u0003\u0005\u001b\nA#[:NSJ\u0014xN]3eI\u0015DH/\u001a8tS>tGcA1\u0003P!9\u0011q\u000fB%\u0001\u0004Y\u0002\u0002\u0003B*\u0003C\")A!\u0016\u0002#%\u001cHj\\<fe\u0012*\u0007\u0010^3og&|g\u000eF\u0002b\u0005/Bq!a\u001e\u0003R\u0001\u00071\u0004\u0003\u0005\u0003\\\u0005\u0005DQ\u0001B/\u0003EI7/\u00169qKJ$S\r\u001f;f]NLwN\u001c\u000b\u0004C\n}\u0003bBA<\u00053\u0002\ra\u0007\u0005\t\u0005G\n\t\u0007\"\u0002\u0003f\u0005)\u0012n\u001d+ji2,7)Y:fI\u0015DH/\u001a8tS>tGcA1\u0003h!9\u0011q\u000fB1\u0001\u0004Y\u0002\u0002\u0003B6\u0003C\")A!\u001c\u0002#Q|Gj\\<fe\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0005_Bq!a\u001e\u0003j\u0001\u00071\u0004\u0003\u0005\u0003t\u0005\u0005DQ\u0001B;\u0003E!x.\u00169qKJ$S\r\u001f;f]NLwN\u001c\u000b\u0004!\t]\u0004bBA<\u0005c\u0002\ra\u0007\u0005\t\u0005w\n\t\u0007\"\u0002\u0003~\u0005)Bo\u001c+ji2,7)Y:fI\u0015DH/\u001a8tS>tGc\u0001\t\u0003??????!9\u0011q\u000fB=\u0001\u0004Y\u0002\u0002\u0003BB\u0003C\")A!\"\u0002#\u001d,G\u000fV=qK\u0012*\u0007\u0010^3og&|g\u000eF\u0002P\u0005\u000fCq!a\u001e\u0003\u0002\u0002\u00071\u0004\u0003\u0005\u0003\f\u0006\u0005DQ\u0001BG\u0003e9W\r\u001e(v[\u0016\u0014\u0018n\u0019,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007=\u0013y\tC\u0004\u0002x\t%\u0005\u0019A\u000e\t\u0011\tM\u0015\u0011\rC\u0003\u0005+\u000b1dZ3u\t&\u0014Xm\u0019;j_:\fG.\u001b;zI\u0015DH/\u001a8tS>tGcA+\u0003\u0018\"9\u0011q\u000fBI\u0001\u0004Y\u0002\u0002\u0003BN\u0003C\")A!(\u0002-I,g/\u001a:tK\nKH/Z:%Kb$XM\\:j_:$2\u0001\u0005BP\u0011\u001d\t9H!'A\u0002mA!Ba)\u0002b\u0005\u0005IQ\u0001BS\u0003IA\u0017m\u001d5D_\u0012,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u00079\u00139\u000bC\u0004\u0002x\t\u0005\u0006\u0019A\u000e\t\u0015\t-\u0016\u0011MA\u0001\n\u000b\u0011i+\u0001\tfcV\fGn\u001d\u0013fqR,gn]5p]R!!q\u0016BZ)\r\t'\u0011\u0017\u0005\u000b\u0003'\u0012I+!AA\u0002\u0005U\u0003bBA<\u0005S\u0003\ra\u0007")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichChar.class */
public final class RichChar implements IntegralProxy<Object> {
    private final char self;

    public RichChar(char c) {
        this.self = c;
        ScalaNumericAnyConversions.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        Ordered.Cclass.$init$(this);
    }

    @Override // scala.math.Ordered
    public boolean $greater(Object obj) {
        return Ordered.Cclass.$greater(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $greater$eq(Object obj) {
        return Ordered.Cclass.$greater$eq(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less(Object obj) {
        return Ordered.Cclass.$less(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less$eq(Object obj) {
        return Ordered.Cclass.$less$eq(this, obj);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public char abs() {
        return RichChar$.MODULE$.abs$extension(self());
    }

    public int asDigit() {
        return RichChar$.MODULE$.asDigit$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichChar$.MODULE$.byteValue$extension(self());
    }

    @Override // scala.runtime.OrderedProxy, scala.math.Ordered
    public int compare(Object obj) {
        return OrderedProxy.Cclass.compare(this, obj);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public double doubleValue() {
        return RichChar$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichChar$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichChar$.MODULE$.floatValue$extension(self());
    }

    public byte getDirectionality() {
        return RichChar$.MODULE$.getDirectionality$extension(self());
    }

    public int getNumericValue() {
        return RichChar$.MODULE$.getNumericValue$extension(self());
    }

    public int getType() {
        return RichChar$.MODULE$.getType$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichChar$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichChar$.MODULE$.intValue$extension(self());
    }

    public boolean isControl() {
        return RichChar$.MODULE$.isControl$extension(self());
    }

    public boolean isDigit() {
        return RichChar$.MODULE$.isDigit$extension(self());
    }

    public boolean isHighSurrogate() {
        return RichChar$.MODULE$.isHighSurrogate$extension(self());
    }

    public boolean isIdentifierIgnorable() {
        return RichChar$.MODULE$.isIdentifierIgnorable$extension(self());
    }

    public boolean isLetter() {
        return RichChar$.MODULE$.isLetter$extension(self());
    }

    public boolean isLetterOrDigit() {
        return RichChar$.MODULE$.isLetterOrDigit$extension(self());
    }

    public boolean isLowSurrogate() {
        return RichChar$.MODULE$.isLowSurrogate$extension(self());
    }

    public boolean isLower() {
        return RichChar$.MODULE$.isLower$extension(self());
    }

    public boolean isMirrored() {
        return RichChar$.MODULE$.isMirrored$extension(self());
    }

    public boolean isSpaceChar() {
        return RichChar$.MODULE$.isSpaceChar$extension(self());
    }

    public boolean isSurrogate() {
        return RichChar$.MODULE$.isSurrogate$extension(self());
    }

    public boolean isTitleCase() {
        return RichChar$.MODULE$.isTitleCase$extension(self());
    }

    public boolean isUnicodeIdentifierPart() {
        return RichChar$.MODULE$.isUnicodeIdentifierPart$extension(self());
    }

    public boolean isUnicodeIdentifierStart() {
        return RichChar$.MODULE$.isUnicodeIdentifierStart$extension(self());
    }

    public boolean isUpper() {
        return RichChar$.MODULE$.isUpper$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return ScalaNumericAnyConversions.Cclass.isValidByte(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return RichChar$.MODULE$.isValidChar$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return ScalaNumericAnyConversions.Cclass.isValidInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return ScalaNumericAnyConversions.Cclass.isValidShort(this);
    }

    public boolean isWhitespace() {
        return RichChar$.MODULE$.isWhitespace$extension(self());
    }

    @Override // scala.runtime.ScalaWholeNumberProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return ScalaWholeNumberProxy.Cclass.isWhole(this);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichChar$.MODULE$.longValue$extension(self());
    }

    public char max(char c) {
        return RichChar$.MODULE$.max$extension(self(), c);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToCharacter(RichChar$.MODULE$.max$extension(self(), BoxesRunTime.unboxToChar(obj)));
    }

    public char min(char c) {
        return RichChar$.MODULE$.min$extension(self(), c);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToCharacter(RichChar$.MODULE$.min$extension(self(), BoxesRunTime.unboxToChar(obj)));
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.ScalaNumberProxy
    public Numeric$CharIsIntegral$ num() {
        return RichChar$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Char$ ord() {
        return RichChar$.MODULE$.ord$extension(self());
    }

    public char reverseBytes() {
        return RichChar$.MODULE$.reverseBytes$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public char self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichChar$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichChar$.MODULE$.signum$extension(self());
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public NumericRange.Inclusive mo21to(Object obj) {
        return IntegralProxy.Cclass.m25to(this, obj);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public NumericRange.Inclusive mo20to(Object obj, Object obj2) {
        return IntegralProxy.Cclass.m24to(this, obj, obj2);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public byte toByte() {
        return ScalaNumericAnyConversions.Cclass.toByte(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public char toChar() {
        return ScalaNumericAnyConversions.Cclass.toChar(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public double toDouble() {
        return ScalaNumericAnyConversions.Cclass.toDouble(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public float toFloat() {
        return ScalaNumericAnyConversions.Cclass.toFloat(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int toInt() {
        return ScalaNumericAnyConversions.Cclass.toInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
    }

    public char toLower() {
        return RichChar$.MODULE$.toLower$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public short toShort() {
        return ScalaNumericAnyConversions.Cclass.toShort(this);
    }

    @Override // scala.Proxy
    public String toString() {
        return Proxy.Cclass.toString(this);
    }

    public char toTitleCase() {
        return RichChar$.MODULE$.toTitleCase$extension(self());
    }

    public char toUpper() {
        return RichChar$.MODULE$.toUpper$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public Object underlying() {
        return ScalaNumberProxy.Cclass.underlying(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean unifiedPrimitiveEquals(Object obj) {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveEquals(this, obj);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int unifiedPrimitiveHashcode() {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveHashcode(this);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    public NumericRange.Exclusive until(Object obj) {
        return IntegralProxy.Cclass.until(this, obj);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    public NumericRange.Exclusive until(Object obj, Object obj2) {
        return IntegralProxy.Cclass.until(this, obj, obj2);
    }
}
