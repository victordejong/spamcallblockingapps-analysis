package scala.reflect;

import scala.None$;
import scala.Option;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassManifestDeprecatedApis;
import scala.reflect.ClassTag;
import scala.reflect.Manifest;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
@ScalaSignature(bytes = "\u0006\u0001\rex!B\u0001\u0003\u0011\u00039\u0011aD'b]&4Wm\u001d;GC\u000e$xN]=\u000b\u0005\r!\u0011a\u0002:fM2,7\r\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0005\n\u001b\u0005\u0011a!\u0002\u0006\u0003\u0011\u0003Y!aD'b]&4Wm\u001d;GC\u000e$xN]=\u0014\u0005%a\u0001CA\u0007\u000f\u001b\u0005!\u0011BA\b\u0005\u0005\u0019\te.\u001f*fM\")\u0011#\u0003C\u0001%\u00051A(\u001b8jiz\"\u0012a\u0002\u0005\u0006)%!\t!F\u0001\u000fm\u0006dW/Z'b]&4Wm\u001d;t+\u00051\u0002cA\f\u001b;9\u0011Q\u0002G\u0005\u00033\u0011\tq\u0001]1dW\u0006<W-\u0003\u0002\u001c9\t!A*[:u\u0015\tIB\u0001\r\u0002\u001fGA\u0019\u0001bH\u0011\n\u0005\u0001\u0012!AD!osZ\u000bG.T1oS\u001a,7\u000f\u001e\t\u0003E\rb\u0001\u0001B\u0005%'\u0005\u0005\t\u0011!B\u0001K\t\u0019q\fJ\u001a\u0012\u0005\u0019J\u0003CA\u0007(\u0013\tACAA\u0004O_RD\u0017N\\4\u0011\u00055Q\u0013BA\u0016\u0005\u0005\r\te.\u001f\u0005\b[%\u0011\r\u0011\"\u0001/\u0003\u0011\u0011\u0015\u0010^3\u0016\u0003=\u00022\u0001C\u00101!\ti\u0011'\u0003\u00023\t\t!!)\u001f;f\u0011\u0019!\u0014\u0002)A\u0005_\u0005)!)\u001f;fA!9a'\u0003b\u0001\n\u00039\u0014!B*i_J$X#\u0001\u001d\u0011\u0007!y\u0012\b\u0005\u0002\u000eu%\u00111\b\u0002\u0002\u0006'\"|'\u000f\u001e\u0005\u0007{%\u0001\u000b\u0011\u0002\u001d\u0002\rMCwN\u001d;!\u0011\u001dy\u0014B1A\u0005\u0002\u0001\u000bAa\u00115beV\t\u0011\tE\u0002\t?\t\u0003\"!D\"\n\u0005\u0011#!\u0001B\"iCJDaAR\u0005!\u0002\u0013\t\u0015!B\"iCJ\u0004\u0003b\u0002%\n\u0005\u0004%\t!S\u0001\u0004\u0013:$X#\u0001&\u0011\u0007!y2\n\u0005\u0002\u000e\u0019&\u0011Q\n\u0002\u0002\u0004\u0013:$\bBB(\nA\u0003%!*\u0001\u0003J]R\u0004\u0003bB)\n\u0005\u0004%\tAU\u0001\u0005\u0019>tw-F\u0001T!\rAq\u0004\u0016\t\u0003\u001bUK!A\u0016\u0003\u0003\t1{gn\u001a\u0005\u00071&\u0001\u000b\u0011B*\u0002\u000b1{gn\u001a\u0011\t\u000fiK!\u0019!C\u00017\u0006)a\t\\8biV\tA\fE\u0002\t?u\u0003\"!\u00040\n\u0005}#!!\u0002$m_\u0006$\bBB1\nA\u0003%A,\u0001\u0004GY>\fG\u000f\t\u0005\bG&\u0011\r\u0011\"\u0001e\u0003\u0019!u.\u001e2mKV\tQ\rE\u0002\t?\u0019\u0004\"!D4\n\u0005!$!A\u0002#pk\ndW\r\u0003\u0004k\u0013\u0001\u0006I!Z\u0001\b\t>,(\r\\3!\u0011\u001da\u0017B1A\u0005\u00025\fqAQ8pY\u0016\fg.F\u0001o!\rAqd\u001c\t\u0003\u001bAL!!\u001d\u0003\u0003\u000f\t{w\u000e\\3b]\"11/\u0003Q\u0001\n9\f\u0001BQ8pY\u0016\fg\u000e\t\u0005\bk&\u0011\r\u0011\"\u0001w\u0003\u0011)f.\u001b;\u0016\u0003]\u00042\u0001C\u0010y!\ti\u00110\u0003\u0002{\t\t!QK\\5u\u0011\u0019a\u0018\u0002)A\u0005o\u0006)QK\\5uA!9a0\u0003b\u0001\n\u0013y\u0018AC(cU\u0016\u001cG\u000fV-Q\u000bV\u0011\u0011\u0011\u0001\t\u0007\u0003\u0007\ti!!\u0005\u000e\u0005\u0005\u0015!\u0002BA\u0004\u0003\u0013\tA\u0001\\1oO*\u0011\u00111B\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002\u0010\u0005\u0015!!B\"mCN\u001c\b\u0003BA\u0002\u0003'IA!!\u0006\u0002\u0006\t1qJ\u00196fGRD\u0001\"!\u0007\nA\u0003%\u0011\u0011A\u0001\f\u001f\nTWm\u0019;U3B+\u0005\u0005C\u0005\u0002\u001e%\u0011\r\u0011\"\u0003\u0002 \u0005Yaj\u001c;iS:<G+\u0017)F+\t\t\t\u0003\u0005\u0004\u0002\u0004\u00055\u00111\u0005\t\u0005\u0003K\tY#\u0004\u0002\u0002()\u0019\u0011\u0011\u0006\u0003\u0002\u000fI,h\u000e^5nK&!\u0011QFA\u0014\u0005!qu\u000e\u001e5j]\u001e$\u0003\u0002CA\u0019\u0013\u0001\u0006I!!\t\u0002\u00199{G\u000f[5oORK\u0006+\u0012\u0011\t\u0013\u0005U\u0012B1A\u0005\n\u0005]\u0012\u0001\u0003(vY2$\u0016\fU#\u0016\u0005\u0005e\u0002CBA\u0002\u0003\u001b\tY\u0004\u0005\u0003\u0002&\u0005u\u0012\u0002BA \u0003O\u0011QAT;mY\u0012B\u0001\"a\u0011\nA\u0003%\u0011\u0011H\u0001\n\u001dVdG\u000eV-Q\u000b\u0002B\u0011\"a\u0012\n\u0005\u0004%\t!!\u0013\u0002\u0007\u0005s\u00170\u0006\u0002\u0002LA!\u0001\"!\u0014*\u0013\r\tyE\u0001\u0002\t\u001b\u0006t\u0017NZ3ti\"A\u00111K\u0005!\u0002\u0013\tY%\u0001\u0003B]f\u0004\u0003\"CA,\u0013\t\u0007I\u0011AA-\u0003\u0019y%M[3diV\u0011\u00111\f\t\u0006\u0011\u00055\u0013\u0011\u0003\u0005\t\u0003?J\u0001\u0015!\u0003\u0002\\\u00059qJ\u00196fGR\u0004\u0003\"CA2\u0013\t\u0007I\u0011AA3\u0003\u0019\te.\u001f*fMV\u0011\u0011q\r\t\u0005\u0011\u00055C\u0002\u0003\u0005\u0002l%\u0001\u000b\u0011BA4\u0003\u001d\te.\u001f*fM\u0002B\u0011\"a\u001c\n\u0005\u0004%\t!!\u001d\u0002\r\u0005s\u0017PV1m+\t\t\u0019\bE\u0003\t\u0003\u001b\n)\bE\u0002\u000e\u0003oJ1!!\u001f\u0005\u0005\u0019\te.\u001f,bY\"A\u0011QP\u0005!\u0002\u0013\t\u0019(A\u0004B]f4\u0016\r\u001c\u0011\t\u0013\u0005\u0005\u0015B1A\u0005\u0002\u0005\r\u0015\u0001\u0002(vY2,\"!!\"\u0011\u000b!\ti%a\"\u0011\u00075\tI)C\u0002\u0002\f\u0012\u0011AAT;mY\"A\u0011qR\u0005!\u0002\u0013\t))A\u0003Ok2d\u0007\u0005C\u0005\u0002\u0014&\u0011\r\u0011\"\u0001\u0002\u0016\u00069aj\u001c;iS:<WCAAL!\u0011A\u0011Q\n\u0014\t\u0011\u0005m\u0015\u0002)A\u0005\u0003/\u000b\u0001BT8uQ&tw\r\t\u0004\u0007\u0003?KA!!)\u0003+MKgn\u001a7fi>tG+\u001f9f\u001b\u0006t\u0017NZ3tiV!\u00111UAU'\u0015\ti\nDAS!\u0015A\u0011QJAT!\r\u0011\u0013\u0011\u0016\u0003\t\u0003W\u000biJ1\u0001\u0002.\n\tA+\u0005\u0002'\u0019!Q\u0011\u0011WAO\u0005\u0003\u0005\u000b\u0011\u0002\u0007\u0002\u000bY\fG.^3\t\u000fE\ti\n\"\u0001\u00026R!\u0011qWA^!\u0019\tI,!(\u0002(6\t\u0011\u0002C\u0004\u00022\u0006M\u0006\u0019\u0001\u0007\t\u0017\u0005}\u0016Q\u0014EC\u0002\u0013\u0005\u0011\u0011Y\u0001\reVtG/[7f\u00072\f7o]\u000b\u0003\u0003\u0007\u0004D!!2\u0002JB1\u00111AA\u0007\u0003\u000f\u00042AIAe\t1\tY-!4\u0002\u0002\u0003\u0005)\u0011AAW\u0005\ty\u0004\u0007C\u0006\u0002P\u0006u\u0005\u0012!Q!\n\u0005\r\u0017!\u0004:v]RLW.Z\"mCN\u001c\b\u0005C\u0006\u0002T\u0006u\u0005R1A\u0005B\u0005U\u0017\u0001\u0003;p'R\u0014\u0018N\\4\u0016\u0005\u0005]\u0007\u0003BA\u0002\u00033LA!a7\u0002\u0006\t11\u000b\u001e:j]\u001eD1\"a8\u0002\u001e\"\u0005\t\u0015)\u0003\u0002X\u0006IAo\\*ue&tw\r\t\u0005\b\u0003GLA\u0011AAs\u0003)\u0019\u0018N\\4mKRK\b/Z\u000b\u0005\u0003O\fi\u000f\u0006\u0003\u0002j\u0006=\b#\u0002\u0005\u0002N\u0005-\bc\u0001\u0012\u0002n\u0012A\u00111VAq\u0005\u0004\ti\u000bC\u0004\u00022\u0006\u0005\b\u0019\u0001\u0007\t\u000f\u0005M\u0018\u0002\"\u0001\u0002v\u0006I1\r\\1tgRK\b/Z\u000b\u0005\u0003o\fi\u0010\u0006\u0003\u0002z\u0006}\b#\u0002\u0005\u0002N\u0005m\bc\u0001\u0012\u0002~\u00129\u00111VAy\u0005\u0004)\u0003\u0002\u0003B\u0001\u0003c\u0004\rAa\u0001\u0002\u000b\rd\u0017M\u001f>1\t\t\u0015!1\u0003\t\u0007\u0005\u000f\u0011iA!\u0005\u000f\u00075\u0011I!C\u0002\u0003\f\u0011\ta\u0001\u0015:fI\u00164\u0017\u0002BA\b\u0005\u001fQ1Aa\u0003\u0005!\r\u0011#1\u0003\u0003\f\u0005+\ty0!A\u0001\u0002\u000b\u0005QEA\u0002`IeBq!a=\n\t\u0003\u0011I\"\u0006\u0003\u0003\u001c\t\u0005B\u0003\u0003B\u000f\u0005G\u00119C!\u000e\u0011\u000b!\tiEa\b\u0011\u0007\t\u0012\t\u0003B\u0004\u0002,\n]!\u0019A\u0013\t\u0011\t\u0005!q\u0003a\u0001\u0005K\u0001bAa\u0002\u0003\u000e\t}\u0001\u0002\u0003B\u0015\u0005/\u0001\rAa\u000b\u0002\t\u0005\u0014x-\r\u0019\u0005\u0005[\u0011\t\u0004E\u0003\t\u0003\u001b\u0012y\u0003E\u0002#\u0005c!1Ba\r\u0003(\u0005\u0005\t\u0011!B\u0001K\t!q\fJ\u00191\u0011!\u00119Da\u0006A\u0002\te\u0012\u0001B1sON\u0004R!\u0004B\u001e\u0005\u007fI1A!\u0010\u0005\u0005)a$/\u001a9fCR,GM\u0010\u0019\u0005\u0005\u0003\u0012)\u0005E\u0003\t\u0003\u001b\u0012\u0019\u0005E\u0002#\u0005\u000b\"1Ba\u0012\u0003J\u0005\u0005\t\u0011!B\u0001K\t!q\fJ\u00192\u0011!\u00119Da\u0006A\u0002\te\u0002bBAz\u0013\u0011\u0005!QJ\u000b\u0005\u0005\u001f\u0012)\u0006\u0006\u0005\u0003R\t]#Q\rB9!\u0015A\u0011Q\nB*!\r\u0011#Q\u000b\u0003\b\u0003W\u0013YE1\u0001&\u0011!\u0011IFa\u0013A\u0002\tm\u0013A\u00029sK\u001aL\u0007\u0010\r\u0003\u0003^\t\u0005\u0004#\u0002\u0005\u0002N\t}\u0003c\u0001\u0012\u0003b\u0011Y!1\rB,\u0003\u0003\u0005\tQ!\u0001&\u0005\u0011yF%\r\u001a\t\u0011\t\u0005!1\na\u0001\u0005O\u0002DA!\u001b\u0003nA1!q\u0001B\u0007\u0005W\u00022A\tB7\t-\u0011yG!\u001a\u0002\u0002\u0003\u0005)\u0011A\u0013\u0003\t}#\u0013g\r\u0005\t\u0005o\u0011Y\u00051\u0001\u0003tA)QBa\u000f\u0003vA\"!q\u000fB>!\u0015A\u0011Q\nB=!\r\u0011#1\u0010\u0003\f\u0005{\u0012\t(!A\u0001\u0002\u000b\u0005QE\u0001\u0003`IE\"da\u0002BA\u0013\u0005%!1\u0011\u0002\u0010!\"\fg\u000e^8n\u001b\u0006t\u0017NZ3tiV!!QQB\b'\u0011\u0011yHa\"\u0011\r\u0005e&\u0011RB\u0007\r\u0019\u0011Y)\u0003\u0003\u0003\u000e\n\t2\t\\1tgRK\b/Z'b]&4Wm\u001d;\u0016\t\t=%QS\n\u0006\u0005\u0013c!\u0011\u0013\t\u0006\u0011\u00055#1\u0013\t\u0004E\tUEaBAV\u0005\u0013\u0013\r!\n\u0005\f\u00053\u0012II!A!\u0002\u0013\u0011I\nE\u0003\u000e\u00057\u0013y*C\u0002\u0003\u001e\u0012\u0011aa\u00149uS>t\u0007\u0007\u0002BQ\u0005K\u0003R\u0001CA'\u0005G\u00032A\tBS\t-\u00119Ka&\u0002\u0002\u0003\u0005)\u0011A\u0013\u0003\t}#\u0013G\u000e\u0005\f\u0003\u007f\u0013II!b\u0001\n\u0003\u0011Y+\u0006\u0002\u0003.B\"!q\u0016BZ!\u0019\u00119A!\u0004\u00032B\u0019!Ea-\u0005\u0017\tU&qWA\u0001\u0002\u0003\u0015\t!\n\u0002\u0005?\u0012\nt\u0007C\u0006\u0002P\n%%\u0011!Q\u0001\n\te\u0006\u0007\u0002B^\u0005\u007f\u0003bAa\u0002\u0003\u000e\tu\u0006c\u0001\u0012\u0003@\u0012Y!Q\u0017B\\\u0003\u0003\u0005\tQ!\u0001&\u0011-\u0011\u0019M!#\u0003\u0006\u0004%\tE!2\u0002\u001bQL\b/Z!sOVlWM\u001c;t+\t\u00119\r\u0005\u0003\u00185\t%\u0007\u0007\u0002Bf\u0005\u001f\u0004R\u0001CA'\u0005\u001b\u00042A\tBh\t-\u0011\tNa5\u0002\u0002\u0003\u0005)\u0011A\u0013\u0003\t}#\u0013\u0007\u000f\u0005\f\u0005+\u0014II!A!\u0002\u0013\u00119.\u0001\busB,\u0017I]4v[\u0016tGo\u001d\u0011\u0011\t]Q\"\u0011\u001c\u0019\u0005\u00057\u0014y\u000eE\u0003\t\u0003\u001b\u0012i\u000eE\u0002#\u0005?$1B!5\u0003T\u0006\u0005\t\u0011!B\u0001K!9\u0011C!#\u0005\u0002\t\rH\u0003\u0003Bs\u0005O\u0014\u0019P!@\u0011\r\u0005e&\u0011\u0012BJ\u0011!\u0011IF!9A\u0002\t%\b#B\u0007\u0003\u001c\n-\b\u0007\u0002Bw\u0005c\u0004R\u0001CA'\u0005_\u00042A\tBy\t-\u00119Ka:\u0002\u0002\u0003\u0005)\u0011A\u0013\t\u0011\u0005}&\u0011\u001da\u0001\u0005k\u0004DAa>\u0003|B1!q\u0001B\u0007\u0005s\u00042A\tB~\t-\u0011)La=\u0002\u0002\u0003\u0005)\u0011A\u0013\t\u0011\t\r'\u0011\u001da\u0001\u0005\u007f\u0004Ba\u0006\u000e\u0004\u0002A\"11AB\u0004!\u0015A\u0011QJB\u0003!\r\u00113q\u0001\u0003\f\u0005#\u0014i0!A\u0001\u0002\u000b\u0005Q\u0005\u0003\u0005\u0002T\n%E\u0011IB\u0006)\t\t9\u000eE\u0002#\u0007\u001f!q!a+\u0003��\t\u0007Q\u0005C\u0007\u0004\u0014\t}$\u0011!Q\u0001\n\rU!\u0011V\u0001\u000e?J,h\u000e^5nK\u000ec\u0017m]:1\t\r]11\u0004\t\u0007\u0005\u000f\u0011ia!\u0007\u0011\u0007\t\u001aY\u0002B\u0006\u0004\u001e\rE\u0011\u0011!A\u0001\u0006\u0003)#\u0001B0%cUB1\"a5\u0003��\t\u0015\r\u0011\"\u0011\u0004\"U\u001111\u0005\t\u0005\u0005\u000f\u0019)#\u0003\u0003\u0002\\\n=\u0001bCAp\u0005\u007f\u0012\t\u0011)A\u0005\u0007GAq!\u0005B@\t\u0003\u0019Y\u0003\u0006\u0004\u0004.\r=2\u0011\b\t\u0007\u0003s\u0013yh!\u0004\t\u0011\rM1\u0011\u0006a\u0001\u0007c\u0001Daa\r\u00048A1!q\u0001B\u0007\u0007k\u00012AIB\u001c\t-\u0019iba\f\u0002\u0002\u0003\u0005)\u0011A\u0013\t\u0011\u0005M7\u0011\u0006a\u0001\u0007GA\u0001b!\u0010\u0003��\u0011\u00053qH\u0001\u0007KF,\u0018\r\\:\u0015\u0007=\u001c\t\u0005C\u0004\u0004D\rm\u0002\u0019A\u0015\u0002\tQD\u0017\r\u001e\u0005\u000b\u0007\u000f\u0012yH1A\u0005B\r%\u0013\u0001\u00035bg\"\u001cu\u000eZ3\u0016\u0003-C\u0001b!\u0014\u0003��\u0001\u0006IaS\u0001\nQ\u0006\u001c\bnQ8eK\u0002BCaa\u0013\u0004RA\u0019Qba\u0015\n\u0007\rUCAA\u0005ue\u0006t7/[3oi\"91\u0011L\u0005\u0005\u0002\rm\u0013!C1se\u0006LH+\u001f9f+\u0011\u0019if!\u001b\u0015\t\r}31\u000e\t\u0006\u0011\u000553\u0011\r\t\u0006\u001b\r\r4qM\u0005\u0004\u0007K\"!!B!se\u0006L\bc\u0001\u0012\u0004j\u00119\u00111VB,\u0005\u0004)\u0003\u0002CB7\u0007/\u0002\raa\u001c\u0002\u0007\u0005\u0014x\r\r\u0003\u0004r\rU\u0004#\u0002\u0005\u0002N\rM\u0004c\u0001\u0012\u0004v\u0011Y1qOB6\u0003\u0003\u0005\tQ!\u0001&\u0005\u0011yF%M\u001d\t\u000f\rm\u0014\u0002\"\u0001\u0004~\u0005a\u0011MY:ue\u0006\u001cG\u000fV=qKV!1qPBC))\u0019\tia\"\u0004\u0014\u000e]5Q\u0015\t\u0006\u0011\u0005531\u0011\t\u0004E\r\u0015EaBAV\u0007s\u0012\r!\n\u0005\t\u00053\u001aI\b1\u0001\u0004\nB\"11RBH!\u0015A\u0011QJBG!\r\u00113q\u0012\u0003\f\u0007#\u001b9)!A\u0001\u0002\u000b\u0005QE\u0001\u0003`II\u0002\u0004\u0002CBK\u0007s\u0002\raa\t\u0002\t9\fW.\u001a\u0005\t\u00073\u001bI\b1\u0001\u0004\u001c\u0006QQ\u000f\u001d9fe\n{WO\u001c31\t\ru5\u0011\u0015\t\u0007\u0005\u000f\u0011iaa(\u0011\u0007\t\u001a\t\u000bB\u0006\u0004$\u000e]\u0015\u0011!A\u0001\u0006\u0003)#\u0001B0%eEB\u0001Ba\u000e\u0004z\u0001\u00071q\u0015\t\u0006\u001b\tm2\u0011\u0016\u0019\u0005\u0007W\u001by\u000bE\u0003\t\u0003\u001b\u001ai\u000bE\u0002#\u0007_#1b!-\u0004&\u0006\u0005\t\u0011!B\u0001K\t!q\f\n\u001a3\u0011\u001d\u0019),\u0003C\u0001\u0007o\u000bAb^5mI\u000e\f'\u000f\u001a+za\u0016,Ba!/\u0004@R111XBa\u0007\u001f\u0004R\u0001CA'\u0007{\u00032AIB`\t\u001d\tYka-C\u0002\u0015B\u0001ba1\u00044\u0002\u00071QY\u0001\u000bY><XM\u001d\"pk:$\u0007\u0007BBd\u0007\u0017\u0004R\u0001CA'\u0007\u0013\u00042AIBf\t-\u0019im!1\u0002\u0002\u0003\u0005)\u0011A\u0013\u0003\t}##g\r\u0005\t\u00073\u001b\u0019\f1\u0001\u0004RB\"11[Bl!\u0015A\u0011QJBk!\r\u00113q\u001b\u0003\f\u00073\u001cy-!A\u0001\u0002\u000b\u0005QE\u0001\u0003`II\"\u0004bBBo\u0013\u0011\u00051q\\\u0001\u0011S:$XM]:fGRLwN\u001c+za\u0016,Ba!9\u0004hR!11]Bu!\u0015A\u0011QJBs!\r\u00113q\u001d\u0003\b\u0003W\u001bYN1\u0001&\u0011!\u0019Yoa7A\u0002\r5\u0018a\u00029be\u0016tGo\u001d\t\u0006\u001b\tm2q\u001e\u0019\u0005\u0007c\u001c)\u0010E\u0003\t\u0003\u001b\u001a\u0019\u0010E\u0002#\u0007k$1ba>\u0004j\u0006\u0005\t\u0011!B\u0001K\t!q\f\n\u001a6\u0001")
/* loaded from: classes3-dex2jar.jar:scala/reflect/ManifestFactory.class */
public final class ManifestFactory {

    /* loaded from: classes3-dex2jar.jar:scala/reflect/ManifestFactory$ClassTypeManifest.class */
    public static class ClassTypeManifest<T> implements Manifest<T> {
        private final Option<Manifest<?>> prefix;
        private final Class<?> runtimeClass;
        private final List<Manifest<?>> typeArguments;

        public ClassTypeManifest(Option<Manifest<?>> option, Class<?> cls, List<Manifest<?>> list) {
            this.prefix = option;
            this.runtimeClass = cls;
            this.typeArguments = list;
            ClassManifestDeprecatedApis.Cclass.$init$(this);
            ClassTag.Cclass.$init$(this);
            Manifest.Cclass.$init$(this);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public boolean $greater$colon$greater(ClassTag<?> classTag) {
            boolean $less$colon$less;
            $less$colon$less = classTag.$less$colon$less(this);
            return $less$colon$less;
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public String argString() {
            return ClassManifestDeprecatedApis.Cclass.argString(this);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public <T> Class<Object> arrayClass(Class<?> cls) {
            return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
        public Manifest<Object> arrayManifest() {
            return Manifest.Cclass.arrayManifest(this);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
        public boolean canEqual(Object obj) {
            return Manifest.Cclass.canEqual(this, obj);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
        public boolean equals(Object obj) {
            return Manifest.Cclass.equals(this, obj);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Class<?> erasure() {
            return ClassManifestDeprecatedApis.Cclass.erasure(this);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag
        public int hashCode() {
            return Manifest.Cclass.hashCode(this);
        }

        @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object newArray(int i) {
            return ClassTag.Cclass.newArray(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray2(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray2(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][] newArray3(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray3(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][][] newArray4(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray4(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][][][] newArray5(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray5(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<T> newArrayBuilder() {
            return ClassManifestDeprecatedApis.Cclass.newArrayBuilder(this);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<T> newWrappedArray(int i) {
            return ClassManifestDeprecatedApis.Cclass.newWrappedArray(this, i);
        }

        @Override // scala.reflect.ClassTag
        public Class<?> runtimeClass() {
            return this.runtimeClass;
        }

        @Override // scala.reflect.ClassTag
        public String toString() {
            return new StringBuilder().append((Object) (this.prefix.isEmpty() ? "" : new StringBuilder().append((Object) this.prefix.get().toString()).append((Object) "#").toString())).append((Object) (runtimeClass().isArray() ? "Array" : runtimeClass().getName())).append((Object) argString()).toString();
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
        public List<Manifest<?>> typeArguments() {
            return this.typeArguments;
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(byte b) {
            return ClassTag.Cclass.unapply((ClassTag) this, b);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(char c) {
            return ClassTag.Cclass.unapply((ClassTag) this, c);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(double d) {
            return ClassTag.Cclass.unapply(this, d);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(float f) {
            return ClassTag.Cclass.unapply((ClassTag) this, f);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(int i) {
            return ClassTag.Cclass.unapply((ClassTag) this, i);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(long j) {
            return ClassTag.Cclass.unapply((ClassTag) this, j);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(Object obj) {
            return ClassTag.Cclass.unapply(this, obj);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(BoxedUnit boxedUnit) {
            return ClassTag.Cclass.unapply((ClassTag) this, boxedUnit);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(short s) {
            return ClassTag.Cclass.unapply((ClassTag) this, s);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(boolean z) {
            return ClassTag.Cclass.unapply(this, z);
        }

        @Override // scala.reflect.ClassTag
        public ClassTag<Object> wrap() {
            return ClassTag.Cclass.wrap(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/reflect/ManifestFactory$PhantomManifest.class */
    public static abstract class PhantomManifest<T> extends ClassTypeManifest<T> {
        private final transient int hashCode = System.identityHashCode(this);
        private final String toString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PhantomManifest(Class<?> cls, String str) {
            super(None$.MODULE$, cls, Nil$.MODULE$);
            this.toString = str;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
        public boolean equals(Object obj) {
            return this == obj;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.Manifest, scala.reflect.ClassTag
        public int hashCode() {
            return this.hashCode;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag
        public String toString() {
            return this.toString;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/reflect/ManifestFactory$SingletonTypeManifest.class */
    public static class SingletonTypeManifest<T> implements Manifest<T> {
        private volatile byte bitmap$0;
        private Class<?> runtimeClass;
        private String toString;
        private final Object value;

        public SingletonTypeManifest(Object obj) {
            this.value = obj;
            ClassManifestDeprecatedApis.Cclass.$init$(this);
            ClassTag.Cclass.$init$(this);
            Manifest.Cclass.$init$(this);
        }

        private Class runtimeClass$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 1)) == 0) {
                    this.runtimeClass = this.value.getClass();
                    this.bitmap$0 = (byte) (this.bitmap$0 | 1);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.runtimeClass;
        }

        private String toString$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 2)) == 0) {
                    this.toString = new StringBuilder().append((Object) this.value.toString()).append((Object) ".type").toString();
                    this.bitmap$0 = (byte) (this.bitmap$0 | 2);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.toString;
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public boolean $greater$colon$greater(ClassTag<?> classTag) {
            boolean $less$colon$less;
            $less$colon$less = classTag.$less$colon$less(this);
            return $less$colon$less;
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public String argString() {
            return ClassManifestDeprecatedApis.Cclass.argString(this);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public <T> Class<Object> arrayClass(Class<?> cls) {
            return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
        public Manifest<T[]> arrayManifest() {
            return Manifest.Cclass.arrayManifest(this);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
        public boolean canEqual(Object obj) {
            return Manifest.Cclass.canEqual(this, obj);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
        public boolean equals(Object obj) {
            return Manifest.Cclass.equals(this, obj);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Class<?> erasure() {
            return ClassManifestDeprecatedApis.Cclass.erasure(this);
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassTag
        public int hashCode() {
            return Manifest.Cclass.hashCode(this);
        }

        @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object newArray(int i) {
            return ClassTag.Cclass.newArray(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray2(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray2(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][] newArray3(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray3(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][][] newArray4(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray4(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public Object[][][][] newArray5(int i) {
            return ClassManifestDeprecatedApis.Cclass.newArray5(this, i);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<T> newArrayBuilder() {
            return ClassManifestDeprecatedApis.Cclass.newArrayBuilder(this);
        }

        @Override // scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<T> newWrappedArray(int i) {
            return ClassManifestDeprecatedApis.Cclass.newWrappedArray(this, i);
        }

        @Override // scala.reflect.ClassTag
        public Class<?> runtimeClass() {
            return ((byte) (this.bitmap$0 & 1)) == 0 ? runtimeClass$lzycompute() : this.runtimeClass;
        }

        @Override // scala.reflect.ClassTag
        public String toString() {
            return ((byte) (this.bitmap$0 & 2)) == 0 ? toString$lzycompute() : this.toString;
        }

        @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
        public List<Manifest<?>> typeArguments() {
            return Manifest.Cclass.typeArguments(this);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(byte b) {
            return ClassTag.Cclass.unapply((ClassTag) this, b);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(char c) {
            return ClassTag.Cclass.unapply((ClassTag) this, c);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(double d) {
            return ClassTag.Cclass.unapply(this, d);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(float f) {
            return ClassTag.Cclass.unapply((ClassTag) this, f);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(int i) {
            return ClassTag.Cclass.unapply((ClassTag) this, i);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(long j) {
            return ClassTag.Cclass.unapply((ClassTag) this, j);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(Object obj) {
            return ClassTag.Cclass.unapply(this, obj);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(BoxedUnit boxedUnit) {
            return ClassTag.Cclass.unapply((ClassTag) this, boxedUnit);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(short s) {
            return ClassTag.Cclass.unapply((ClassTag) this, s);
        }

        @Override // scala.reflect.ClassTag
        public Option<T> unapply(boolean z) {
            return ClassTag.Cclass.unapply(this, z);
        }

        @Override // scala.reflect.ClassTag
        public ClassTag<T[]> wrap() {
            return ClassTag.Cclass.wrap(this);
        }
    }

    public static Manifest<Object> Any() {
        return ManifestFactory$.MODULE$.Any();
    }

    public static Manifest<Object> AnyRef() {
        return ManifestFactory$.MODULE$.AnyRef();
    }

    public static Manifest<Object> AnyVal() {
        return ManifestFactory$.MODULE$.AnyVal();
    }

    public static AnyValManifest<Object> Boolean() {
        return ManifestFactory$.MODULE$.Boolean();
    }

    public static AnyValManifest<Object> Byte() {
        return ManifestFactory$.MODULE$.Byte();
    }

    public static AnyValManifest<Object> Char() {
        return ManifestFactory$.MODULE$.Char();
    }

    public static AnyValManifest<Object> Double() {
        return ManifestFactory$.MODULE$.Double();
    }

    public static AnyValManifest<Object> Float() {
        return ManifestFactory$.MODULE$.Float();
    }

    public static AnyValManifest<Object> Int() {
        return ManifestFactory$.MODULE$.Int();
    }

    public static AnyValManifest<Object> Long() {
        return ManifestFactory$.MODULE$.Long();
    }

    public static Manifest<Nothing$> Nothing() {
        return ManifestFactory$.MODULE$.Nothing();
    }

    public static Manifest<Null$> Null() {
        return ManifestFactory$.MODULE$.Null();
    }

    public static Manifest<Object> Object() {
        return ManifestFactory$.MODULE$.Object();
    }

    public static AnyValManifest<Object> Short() {
        return ManifestFactory$.MODULE$.Short();
    }

    public static AnyValManifest<BoxedUnit> Unit() {
        return ManifestFactory$.MODULE$.Unit();
    }

    public static <T> Manifest<T> abstractType(Manifest<?> manifest, String str, Class<?> cls, Seq<Manifest<?>> seq) {
        return ManifestFactory$.MODULE$.abstractType(manifest, str, cls, seq);
    }

    public static <T> Manifest<Object> arrayType(Manifest<?> manifest) {
        return ManifestFactory$.MODULE$.arrayType(manifest);
    }

    public static <T> Manifest<T> classType(Class<?> cls) {
        return ManifestFactory$.MODULE$.classType(cls);
    }

    public static <T> Manifest<T> classType(Class<T> cls, Manifest<?> manifest, Seq<Manifest<?>> seq) {
        return ManifestFactory$.MODULE$.classType(cls, manifest, seq);
    }

    public static <T> Manifest<T> classType(Manifest<?> manifest, Class<?> cls, Seq<Manifest<?>> seq) {
        return ManifestFactory$.MODULE$.classType(manifest, cls, seq);
    }

    public static <T> Manifest<T> intersectionType(Seq<Manifest<?>> seq) {
        return ManifestFactory$.MODULE$.intersectionType(seq);
    }

    public static <T> Manifest<T> singleType(Object obj) {
        return ManifestFactory$.MODULE$.singleType(obj);
    }

    public static List<AnyValManifest<?>> valueManifests() {
        return ManifestFactory$.MODULE$.valueManifests();
    }

    public static <T> Manifest<T> wildcardType(Manifest<?> manifest, Manifest<?> manifest2) {
        return ManifestFactory$.MODULE$.wildcardType(manifest, manifest2);
    }
}
