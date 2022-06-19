package scala.collection.immutable;

import scala.Function1;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.AbstractSeq;
import scala.collection.CustomParallelizable;
import scala.collection.GenSeqLike;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.Iterator;
import scala.collection.TraversableOnce;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Seq;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParRange;
import scala.math.Numeric;
import scala.math.Numeric$IntIsIntegral$;
import scala.math.Ordering;
import scala.math.Ordering$Int$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0011%c\u0001B\u0001\u0003\u0001%\u0011QAU1oO\u0016T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011#\u0002\u0001\u000b%Y\u0001\u0003cA\u0006\r\u001d5\tA!\u0003\u0002\u000e\t\tY\u0011IY:ue\u0006\u001cGoU3r!\ty\u0001#D\u0001\u0007\u0013\t\tbAA\u0002J]R\u00042a\u0005\u000b\u000f\u001b\u0005\u0011\u0011BA\u000b\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0005\u0017]q\u0011$\u0003\u0002\u0019\t\t!2)^:u_6\u0004\u0016M]1mY\u0016d\u0017N_1cY\u0016\u0004\"A\u0007\u0010\u000e\u0003mQ!a\u0001\u000f\u000b\u0005u!\u0011\u0001\u00039be\u0006dG.\u001a7\n\u0005}Y\"\u0001\u0003)beJ\u000bgnZ3\u0011\u0005=\t\u0013B\u0001\u0012\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!!\u0003A!b\u0001\n\u0003)\u0013!B:uCJ$X#\u0001\b\t\u0011\u001d\u0002!\u0011!Q\u0001\n9\taa\u001d;beR\u0004\u0003\u0002C\u0015\u0001\u0005\u000b\u0007I\u0011A\u0013\u0002\u0007\u0015tG\r\u0003\u0005,\u0001\t\u0005\t\u0015!\u0003\u000f\u0003\u0011)g\u000e\u001a\u0011\t\u00115\u0002!Q1A\u0005\u0002\u0015\nAa\u001d;fa\"Aq\u0006\u0001B\u0001B\u0003%a\"A\u0003ti\u0016\u0004\b\u0005C\u00032\u0001\u0011\u0005!'\u0001\u0004=S:LGO\u0010\u000b\u0005gQ*d\u0007\u0005\u0002\u0014\u0001!)A\u0005\ra\u0001\u001d!)\u0011\u0006\ra\u0001\u001d!)Q\u0006\ra\u0001\u001d!)\u0001\b\u0001C!s\u0005\u0019\u0001/\u0019:\u0016\u0003eAQa\u000f\u0001\u0005\nq\n1aZ1q+\u0005i\u0004CA\b?\u0013\tydA\u0001\u0003M_:<\u0007\"B!\u0001\t\u0013\u0011\u0015aB5t\u000bb\f7\r^\u000b\u0002\u0007B\u0011q\u0002R\u0005\u0003\u000b\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0003H\u0001\u0011%!)A\u0004iCN\u001cF/\u001e2\t\u000b%\u0003A\u0011\u0002\u001f\u0002\u00151|gn\u001a'f]\u001e$\b\u000eC\u0004L\u0001\t\u0007IQ\t\"\u0002\u000f%\u001cX)\u001c9us\"1Q\n\u0001Q\u0001\u000e\r\u000b\u0001\"[:F[B$\u0018\u0010\t\u0005\b\u001f\u0002\u0011\r\u0011\"\u0002&\u0003AqW/\u001c*b]\u001e,W\t\\3nK:$8\u000f\u000b\u0003O#R3\u0006CA\bS\u0013\t\u0019fA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0013!V\u00018)\"L7\u000fI7fi\"|G\rI<jY2\u0004#-\u001a\u0011nC\u0012,\u0007\u0005\u001d:jm\u0006$X\r\f\u0011vg\u0016\u0004\u0003\r\\3oORD\u0007\rI5ogR,\u0017\r\u001a\u0018\"\u0003]\u000bAA\r\u00182c!1\u0011\f\u0001Q\u0001\u000e9\t\u0011C\\;n%\u0006tw-Z#mK6,g\u000e^:!\u0011\u001dY\u0006A1A\u0005\u0006\u0015\n1\u0002\\1ti\u0016cW-\\3oi\"\"!,U/WC\u0005q\u0016!\u000e+iSN\u0004S.\u001a;i_\u0012\u0004s/\u001b7mA\t,\u0007%\\1eK\u0002\u0002(/\u001b<bi\u0016d\u0003%^:fA\u0001d\u0017m\u001d;aA%t7\u000f^3bI:Ba\u0001\u0019\u0001!\u0002\u001bq\u0011\u0001\u00047bgR,E.Z7f]R\u0004\u0003b\u00022\u0001\u0005\u0004%)!J\u0001\u0010i\u0016\u0014X.\u001b8bY\u0016cW-\\3oi\"\"\u0011-\u00153WC\u0005)\u0017!\t+iSN\u0004S.\u001a;i_\u0012\u0004s/\u001b7mA\t,\u0007%\\1eK\u0002\u0002(/\u001b<bi\u0016t\u0003BB4\u0001A\u00035a\"\u0001\tuKJl\u0017N\\1m\u000b2,W.\u001a8uA!)\u0011\u000e\u0001C!K\u0005!A.Y:u\u0011\u0015Y\u0007\u0001\"\u0011&\u0003\u0011AW-\u00193\t\u000b5\u0004A\u0011\t8\u0002\u00075Lg.\u0006\u0002pwR\u0011a\u0002\u001d\u0005\u0006c2\u0004\u001dA]\u0001\u0004_J$\u0007cA:ws:\u0011q\u0002^\u0005\u0003k\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002xq\nAqJ\u001d3fe&twM\u0003\u0002v\rA\u0011!p\u001f\u0007\u0001\t\u0015aHN1\u0001~\u0005\t\t\u0015'\u0005\u0002\u000f}B\u0011qb`\u0005\u0004\u0003\u00031!aA!os\"9\u0011Q\u0001\u0001\u0005B\u0005\u001d\u0011aA7bqV!\u0011\u0011BA\t)\rq\u00111\u0002\u0005\bc\u0006\r\u00019AA\u0007!\u0011\u0019h/a\u0004\u0011\u0007i\f\t\u0002\u0002\u0004}\u0003\u0007\u0011\r! \u0005\b\u0003+\u0001A\u0011CA\f\u0003\u0011\u0019w\u000e]=\u0015\u000fM\nI\"a\u0007\u0002\u001e!1A%a\u0005A\u00029Aa!KA\n\u0001\u0004q\u0001BB\u0017\u0002\u0014\u0001\u0007a\u0002C\u0004\u0002\"\u0001!\t!a\t\u0002\u0005\tLHcA\u001a\u0002&!1Q&a\bA\u00029Aa!!\u000b\u0001\t\u0003\u0011\u0015aC5t\u0013:\u001cG.^:jm\u0016Da!!\f\u0001\t\u0003*\u0013\u0001B:ju\u0016Da!!\r\u0001\t\u0003*\u0013A\u00027f]\u001e$\b\u000eC\u0004\u00026\u0001!I!a\u000e\u0002\u0017\u0011,7o\u0019:jaRLwN\\\u000b\u0003\u0003s\u0001B!a\u000f\u0002B9\u0019q\"!\u0010\n\u0007\u0005}b!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\u0007\n)E\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u007f1\u0001bBA%\u0001\u0011%\u00111J\u0001\u0005M\u0006LG\u000e\u0006\u0002\u0002NA\u0019q\"a\u0014\n\u0007\u0005EcAA\u0004O_RD\u0017N\\4\t\u001d\u0005U\u0003\u0001\"A\u0001\u0006\u0003\u0005\t\u0011\"\u0003\u0002X\u0005\u00194oY1mC\u0012\u001aw\u000e\u001c7fGRLwN\u001c\u0013j[6,H/\u00192mK\u0012\u0012\u0016M\\4fI\u00112\u0018\r\\5eCR,W*\u0019=MK:<G\u000f\u001b\u000b\u0003\u00033\u00022aDA.\u0013\r\tiF\u0002\u0002\u0005+:LG\u000fC\u0004\u0002b\u0001!)!a\u0019\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u00079\t)\u0007C\u0004\u0002h\u0005}\u0003\u0019\u0001\b\u0002\u0007%$\u0007\u0010C\u0004\u0002l\u0001!)%!\u001c\u0002\u000f\u0019|'/Z1dQV!\u0011qNA?)\u0011\tI&!\u001d\t\u0011\u0005M\u0014\u0011\u000ea\u0001\u0003k\n\u0011A\u001a\t\u0007\u001f\u0005]d\"a\u001f\n\u0007\u0005edAA\u0005Gk:\u001cG/[8ocA\u0019!0! \u0005\u0019\u0005}\u0014\u0011\u000eQ\u0001\u0002\u0003\u0015\r!!!\u0003\u0003U\u000b2!!\u0014\u007fQ\u0019\ti(!\"\u0002\fB\u0019q\"a\"\n\u0007\u0005%eAA\u0006ta\u0016\u001c\u0017.\u00197ju\u0016$\u0017g\u0002\u0013\u0002\u000e\u0006=\u0015\u0011\u0013\b\u0004\u001f\u0005=\u0015bAAI\r\u0005!QK\\5uQ\u0011\tI'!&\u0011\u0007=\t9*C\u0002\u0002\u001a\u001a\u0011a!\u001b8mS:,\u0007bBAO\u0001\u0011\u0015\u0013qT\u0001\u0005i\u0006\\W\rF\u00024\u0003CCq!a)\u0002\u001c\u0002\u0007a\"A\u0001o\u0011\u001d\t9\u000b\u0001C#\u0003S\u000bA\u0001\u001a:paR\u00191'a+\t\u000f\u0005\r\u0016Q\u0015a\u0001\u001d!9\u0011q\u0016\u0001\u0005F\u0005E\u0016\u0001B5oSR,\u0012a\r\u0005\b\u0003k\u0003AQIAY\u0003\u0011!\u0018-\u001b7\t\u000f\u0005e\u0006\u0001\"\u0003\u0002<\u0006a\u0011M]4UC.,w\u000b[5mKR\u0019Q(!0\t\u0011\u0005}\u0016q\u0017a\u0001\u0003\u0003\f\u0011\u0001\u001d\t\u0006\u001f\u0005]db\u0011\u0005\b\u0003\u000b\u0004A\u0011BAd\u00039awnY1uS>t\u0017I\u001a;fe:#2ADAe\u0011\u001d\t\u0019+a1A\u00029Aq!!4\u0001\t\u0013\ty-A\u0007oK^,U\u000e\u001d;z%\u0006tw-\u001a\u000b\u0004g\u0005E\u0007bBAj\u0003\u0017\u0004\rAD\u0001\u0006m\u0006dW/\u001a\u0005\b\u0003/\u0004AQIAm\u0003%!\u0018m[3XQ&dW\rF\u00024\u00037D\u0001\"a0\u0002V\u0002\u0007\u0011\u0011\u0019\u0005\b\u0003?\u0004AQIAq\u0003%!'o\u001c9XQ&dW\rF\u00024\u0003GD\u0001\"a0\u0002^\u0002\u0007\u0011\u0011\u0019\u0005\b\u0003O\u0004AQIAu\u0003\u0011\u0019\b/\u00198\u0015\t\u0005-\u0018\u0011\u001f\t\u0006\u001f\u000558gM\u0005\u0004\u0003_4!A\u0002+va2,'\u0007\u0003\u0005\u0002@\u0006\u0015\b\u0019AAa\u0011\u001d\t)\u0010\u0001C#\u0003o\fqa\u001d9mSR\fE\u000f\u0006\u0003\u0002l\u0006e\bbBAR\u0003g\u0004\rA\u0004\u0005\b\u0003{\u0004AQIA��\u0003%!\u0018m[3SS\u001eDG\u000fF\u00024\u0005\u0003Aq!a)\u0002|\u0002\u0007a\u0002C\u0004\u0003\u0006\u0001!)Ea\u0002\u0002\u0013\u0011\u0014x\u000e\u001d*jO\"$HcA\u001a\u0003\n!9\u00111\u0015B\u0002\u0001\u0004q\u0001b\u0002B\u0007\u0001\u0011\u0015\u0013\u0011W\u0001\be\u00164XM]:f\u0011\u001d\u0011\t\u0002\u0001C\u0001\u0003c\u000b\u0011\"\u001b8dYV\u001c\u0018N^3\t\u000f\tU\u0001\u0001\"\u0002\u0003\u0018\u0005A1m\u001c8uC&t7\u000fF\u0002D\u00053AqAa\u0007\u0003\u0014\u0001\u0007a\"A\u0001y\u0011\u001d\u0011y\u0002\u0001C#\u0005C\t1a];n+\u0011\u0011\u0019C!\r\u0015\u00079\u0011)\u0003\u0003\u0005\u0003(\tu\u00019\u0001B\u0015\u0003\rqW/\u001c\t\u0006g\n-\"qF\u0005\u0004\u0005[A(a\u0002(v[\u0016\u0014\u0018n\u0019\t\u0004u\nEBa\u0002B\u001a\u0005;\u0011\r! \u0002\u0002\u0005\"9!q\u0007\u0001\u0005B\u0005E\u0016A\u0003;p\u0013R,'/\u00192mK\"9!1\b\u0001\u0005B\u0005E\u0016!\u0002;p'\u0016\f\bb\u0002B \u0001\u0011\u0005#\u0011I\u0001\u0007KF,\u0018\r\\:\u0015\u0007\r\u0013\u0019\u0005C\u0004\u0003F\tu\u0002\u0019\u0001@\u0002\u000b=$\b.\u001a:\t\u000f\t%\u0003\u0001\"\u0011\u0003L\u0005AAo\\*ue&tw\r\u0006\u0002\u0002:!:\u0001Aa\u0014\u0003V\te\u0003cA\b\u0003R%\u0019!1\u000b\u0004\u0003+\u0011,\u0007O]3dCR,G-\u00138iKJLG/\u00198dK\u0006\u0012!qK\u0001E)\",\u0007%[7qY\u0016lWM\u001c;bi&|g\u000e\t3fi\u0006LGn\u001d\u0011pM\u0002\u0012\u0016M\\4fA5\f7.Z:!S:DWM]5uS:<\u0007E\u001a:p[\u0002JG\u000fI;oo&\u001cXML\u0011\u0003\u00057\naA\r\u00182c9\u0002\u0004f\u0002\u0001\u0003`\u0005M'Q\r\t\u0004\u001f\t\u0005\u0014b\u0001B2\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\tSn\u001eKkk\u000b3\u001b\u001d9!\u0011\u000e\u0002\t\u0002\t-\u0014!\u0002*b]\u001e,\u0007cA\n\u0003n\u00191\u0011A\u0001E\u0001\u0005_\u001aRA!\u001c\u0003r\u0001\u00022a\u0004B:\u0013\r\u0011)H\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000fE\u0012i\u0007\"\u0001\u0003zQ\u0011!1\u000e\u0005\u000b\u0005{\u0012iG1A\u0005\u0002\t)\u0013!C'B1~\u0003&+\u0013(U\u0011!\u0011\tI!\u001c!\u0002\u0013q\u0011AC'B1~\u0003&+\u0013(UA!A!Q\u0011B7\t\u0003\u00119)A\u0003d_VtG\u000fF\u0005\u000f\u0005\u0013\u0013YI!$\u0003\u0010\"1AEa!A\u00029Aa!\u000bBB\u0001\u0004q\u0001BB\u0017\u0003\u0004\u0002\u0007a\u0002C\u0004\u0002*\t\r\u0005\u0019A\"\t\u0011\t\u0015%Q\u000eC\u0001\u0005'#rA\u0004BK\u0005/\u0013I\n\u0003\u0004%\u0005#\u0003\rA\u0004\u0005\u0007S\tE\u0005\u0019\u0001\b\t\r5\u0012\t\n1\u0001\u000f\r\u001d\u0011iJ!\u001c\u0001\u0005?\u0013\u0011\"\u00138dYV\u001c\u0018N^3\u0014\u0007\tm5\u0007\u0003\u0006%\u00057\u0013\t\u0011)A\u0005\u001d\rB!\"\u000bBN\u0005\u0003\u0005\u000b\u0011\u0002\b)\u0011)i#1\u0014B\u0001B\u0003%a\u0002\f\u0005\bc\tmE\u0011\u0001BU)!\u0011YKa,\u00032\nM\u0006\u0003\u0002BW\u00057k!A!\u001c\t\r\u0011\u00129\u000b1\u0001\u000f\u0011\u0019I#q\u0015a\u0001\u001d!1QFa*A\u00029Aq!!\u000b\u0003\u001c\u0012\u0005#\t\u0003\u0005\u0002\u0016\tmE\u0011\u000bB])\u001d\u0019$1\u0018B_\u0005\u007fCa\u0001\nB\\\u0001\u0004q\u0001BB\u0015\u00038\u0002\u0007a\u0002\u0003\u0004.\u0005o\u0003\rA\u0004\u0005\t\u0003C\u0012i\u0007\"\u0001\u0003DR91G!2\u0003H\n%\u0007B\u0002\u0013\u0003B\u0002\u0007a\u0002\u0003\u0004*\u0005\u0003\u0004\rA\u0004\u0005\u0007[\t\u0005\u0007\u0019\u0001\b\t\u0011\u0005\u0005$Q\u000eC\u0001\u0005\u001b$Ra\rBh\u0005#Da\u0001\nBf\u0001\u0004q\u0001BB\u0015\u0003L\u0002\u0007a\u0002\u0003\u0005\u0003\u0012\t5D\u0011\u0001Bk)!\u00119Na7\u0003^\n}\u0007\u0003\u0002Bm\u00057s1a\u0005B4\u0011\u0019!#1\u001ba\u0001\u001d!1\u0011Fa5A\u00029Aa!\fBj\u0001\u0004q\u0001\u0002\u0003B\t\u0005[\"\tAa9\u0015\r\t]'Q\u001dBt\u0011\u0019!#\u0011\u001da\u0001\u001d!1\u0011F!9A\u000299\u0001Ba;\u0003n!\u0005!Q^\u0001\u0007\u0005&<\u0017J\u001c;\u0011\t\t5&q\u001e\u0004\t\u0005c\u0014i\u0007#\u0001\u0003t\n1!)[4J]R\u001cBAa<\u0003r!9\u0011Ga<\u0005\u0002\t]HC\u0001Bw\u0011!\t\tGa<\u0005\u0002\tmH\u0003\u0003B\u007f\u0007\u001f\u0019\tba\u0005\u0011\r\t}8QAB\u0006\u001d\r\u00192\u0011A\u0005\u0004\u0007\u0007\u0011\u0011\u0001\u0004(v[\u0016\u0014\u0018n\u0019*b]\u001e,\u0017\u0002BB\u0004\u0007\u0013\u0011\u0011\"\u0012=dYV\u001c\u0018N^3\u000b\u0007\r\r!\u0001E\u0002t\u0007\u001bI1A!=y\u0011\u001d!#\u0011 a\u0001\u0007\u0017Aq!\u000bB}\u0001\u0004\u0019Y\u0001C\u0004.\u0005s\u0004\raa\u0003\t\u0011\tE!q\u001eC\u0001\u0007/!\u0002b!\u0007\u0004\u001e\r}1\u0011\u0005\t\u0007\u0005\u007f\u001cYba\u0003\n\t\tu5\u0011\u0002\u0005\bI\rU\u0001\u0019AB\u0006\u0011\u001dI3Q\u0003a\u0001\u0007\u0017Aq!LB\u000b\u0001\u0004\u0019Ya\u0002\u0005\u0004&\t5\u0004\u0012AB\u0014\u0003\u0011auN\\4\u0011\t\t56\u0011\u0006\u0004\b\u007f\t5\u0004\u0012AB\u0016'\u0011\u0019IC!\u001d\t\u000fE\u001aI\u0003\"\u0001\u00040Q\u00111q\u0005\u0005\t\u0003C\u001aI\u0003\"\u0001\u00044QA1QGB\u001c\u0007s\u0019Y\u0004E\u0003\u0003��\u000e\u0015Q\b\u0003\u0004%\u0007c\u0001\r!\u0010\u0005\u0007S\rE\u0002\u0019A\u001f\t\r5\u001a\t\u00041\u0001>\u0011!\u0011\tb!\u000b\u0005\u0002\r}B\u0003CB!\u0007\u0007\u001a)ea\u0012\u0011\u000b\t}81D\u001f\t\r\u0011\u001ai\u00041\u0001>\u0011\u0019I3Q\ba\u0001{!1Qf!\u0010A\u0002u:\u0001ba\u0013\u0003n!\u00051QJ\u0001\u000b\u0005&<G)Z2j[\u0006d\u0007\u0003\u0002BW\u0007\u001f2\u0001b!\u0015\u0003n!\u000511\u000b\u0002\u000b\u0005&<G)Z2j[\u0006d7\u0003BB(\u0005cBq!MB(\t\u0003\u00199\u0006\u0006\u0002\u0004N!Q11LB(\u0005\u0004%\u0019a!\u0018\u0002!\tLw\rR3d\u0003NLe\u000e^3he\u0006dWCAB0\u001d\u0011\u0019\tg!\u001f\u000f\t\r\r41\u000f\b\u0005\u0007K\u001ayG\u0004\u0003\u0004h\r5TBAB5\u0015\r\u0019Y\u0007C\u0001\u0007yI|w\u000e\u001e \n\u0003\u001dI1a!\u001d\u0007\u0003\u0011i\u0017\r\u001e5\n\t\rU4qO\u0001\b\u001dVlWM]5d\u0015\r\u0019\tHB\u0005\u0005\u0007w\u001ai(\u0001\fCS\u001e$UmY5nC2\f5/\u00134J]R,wM]1m\u0015\u0011\u0019)ha\u001e\t\u0013\r\u00055q\nQ\u0001\n\r}\u0013!\u00052jO\u0012+7-Q:J]R,wM]1mA!A\u0011\u0011MB(\t\u0003\u0019)\t\u0006\u0005\u0004\b\u000e55qRBI!\u0019\u0011yp!\u0002\u0004\nB\u00191oa#\n\u0007\rE\u0003\u0010C\u0004%\u0007\u0007\u0003\ra!#\t\u000f%\u001a\u0019\t1\u0001\u0004\n\"9Qfa!A\u0002\r%\u0005\u0002\u0003B\t\u0007\u001f\"\ta!&\u0015\u0011\r]5\u0011TBN\u0007;\u0003bAa@\u0004\u001c\r%\u0005b\u0002\u0013\u0004\u0014\u0002\u00071\u0011\u0012\u0005\bS\rM\u0005\u0019ABE\u0011\u001di31\u0013a\u0001\u0007\u0013;\u0001b!)\u0003n!\u000511U\u0001\u0007\t>,(\r\\3\u0011\t\t56Q\u0015\u0004\t\u0007O\u0013i\u0007#\u0001\u0004*\n1Ai\\;cY\u0016\u001cBa!*\u0003r!9\u0011g!*\u0005\u0002\r5FCABR\u0011)\u0019Yf!*C\u0002\u0013\r1Q\f\u0005\n\u0007\u0003\u001b)\u000b)A\u0005\u0007?B!b!.\u0004&\n\u0007I1AB\\\u0003A!w.\u001e2mK\u0006\u001b\u0018J\u001c;fOJ\fG.\u0006\u0002\u0004::!1\u0011MB^\u0013\u0011\u0019il! \u0002%\u0011{WO\u00197f\u0003NLe-\u00138uK\u001e\u0014\u0018\r\u001c\u0005\n\u0007\u0003\u001c)\u000b)A\u0005\u0007s\u000b\u0011\u0003Z8vE2,\u0017i]%oi\u0016<'/\u00197!\u0011!\u0019)m!*\u0005\u0002\r\u001d\u0017\u0001\u0002;p\u0005\u0012#Ba!#\u0004J\"A!1DBb\u0001\u0004\u0019Y\rE\u0002\u0010\u0007\u001bL1aa*\u0007\u0011!\t\tg!*\u0005\u0002\rEG\u0003CBj\u00073\u001cYn!8\u0011\u000bM\u0019)na3\n\u0007\r]'A\u0001\u0007Ok6,'/[2SC:<W\rC\u0004%\u0007\u001f\u0004\raa3\t\u000f%\u001ay\r1\u0001\u0004L\"9Qfa4A\u0002\r-\u0007\u0002\u0003B\t\u0007K#\ta!9\u0015\u0011\rM71]Bs\u0007ODq\u0001JBp\u0001\u0004\u0019Y\rC\u0004*\u0007?\u0004\raa3\t\u000f5\u001ay\u000e1\u0001\u0004L\u001a911\u001eB7\u0001\r5(a\u0002)beRL\u0017\r\\\u000b\u0007\u0007_\u001c9p!@\u0014\t\r%(\u0011\u000f\u0005\f\u0003g\u001aIO!A!\u0002\u0013\u0019\u0019\u0010E\u0004\u0010\u0003o\u001a)pa?\u0011\u0007i\u001c9\u0010\u0002\u0005\u0004z\u000e%(\u0019AAA\u0005\u0005!\u0006c\u0001>\u0004~\u0012A\u0011qPBu\u0005\u0004\t\t\tC\u00042\u0007S$\t\u0001\"\u0001\u0015\t\u0011\rAQ\u0001\t\t\u0005[\u001bIo!>\u0004|\"A\u00111OB��\u0001\u0004\u0019\u0019\u0010\u0003\u0005\u0002\"\r%H\u0011\u0001C\u0005)\u0011\u0019Y\u0010b\u0003\t\u0011\tmAq\u0001a\u0001\u0007k<\u0001\u0002b\u0004\u0003n!\u0005A\u0011C\u0001\u0004\u0013:$\b\u0003\u0002BW\t'1q!\u0005B7\u0011\u0003!)b\u0005\u0003\u0005\u0014\tE\u0004bB\u0019\u0005\u0014\u0011\u0005A\u0011\u0004\u000b\u0003\t#A\u0001\"!\u0019\u0005\u0014\u0011\u0005AQ\u0004\u000b\t\t?!\t\u0003b\t\u0005&A)!q`B\u0003\u001d!1A\u0005b\u0007A\u00029Aa!\u000bC\u000e\u0001\u0004q\u0001BB\u0017\u0005\u001c\u0001\u0007a\u0002\u0003\u0005\u0003\u0012\u0011MA\u0011\u0001C\u0015)!!Y\u0003\"\f\u00050\u0011E\u0002#\u0002B��\u00077q\u0001B\u0002\u0013\u0005(\u0001\u0007a\u0002\u0003\u0004*\tO\u0001\rA\u0004\u0005\u0007[\u0011\u001d\u0002\u0019\u0001\b\t\u0015\u0011U\"QNA\u0001\n\u0013!9$A\u0006sK\u0006$'+Z:pYZ,GC\u0001C\u001d!\u0011!Y\u0004\"\u0012\u000e\u0005\u0011u\"\u0002\u0002C \t\u0003\nA\u0001\\1oO*\u0011A1I\u0001\u0005U\u00064\u0018-\u0003\u0003\u0005H\u0011u\"AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range.class */
public class Range extends AbstractSeq<Object> implements IndexedSeq<Object>, CustomParallelizable<Object, ParRange>, Serializable {
    public static final long serialVersionUID = 7618862778670199309L;
    private final int end;
    private final boolean isEmpty;
    private final int lastElement;
    private final int numRangeElements;
    private final int start;
    private final int step;
    private final int terminalElement;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Inclusive.class */
    public static class Inclusive extends Range {
        public Inclusive(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // scala.collection.immutable.Range
        public Range copy(int i, int i2, int i3) {
            return new Inclusive(i, i2, i3);
        }

        @Override // scala.collection.immutable.Range
        public boolean isInclusive() {
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Partial.class */
    public static class Partial<T, U> {

        /* renamed from: f */
        private final Function1<T, U> f1550f;

        public Partial(Function1<T, U> function1) {
            this.f1550f = function1;
        }

        /* renamed from: by */
        public U m152by(T t) {
            return this.f1550f.apply(t);
        }
    }

    public Range(int i, int i2, int i3) {
        this.start = i;
        this.end = i2;
        this.step = i3;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        int i4 = 0;
        this.isEmpty = (i > i2 && i3 > 0) || (i < i2 && i3 < 0) || (i == i2 && !isInclusive());
        if (i3 != 0) {
            if (!isEmpty()) {
                long longLength = longLength();
                i4 = longLength > 2147483647L ? -1 : (int) longLength;
            }
            this.numRangeElements = i4;
            if (isEmpty()) {
                i2 = i - i3;
            } else if (i3 != -1) {
                if (i3 != 1) {
                    int gap = (int) (gap() % i3);
                    if (gap != 0) {
                        i2 -= gap;
                    } else if (!isInclusive()) {
                        i2 -= i3;
                    }
                } else if (!isInclusive()) {
                    i2--;
                }
            } else if (!isInclusive()) {
                i2++;
            }
            this.lastElement = i2;
            this.terminalElement = lastElement() + i3;
            return;
        }
        throw new IllegalArgumentException("step cannot be 0.");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    private long argTakeWhile(Function1<Object, Object> function1) {
        char c;
        if (isEmpty()) {
            c = start();
        } else {
            int start = start();
            int last = last();
            while (start != last && function1.apply$mcZI$sp(start)) {
                start += step();
            }
            c = (start != last || !function1.apply$mcZI$sp(start)) ? start : start + step();
        }
        return c;
    }

    private String description() {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps("%d %s %d by %s").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(start()), isInclusive() ? "to" : "until", BoxesRunTime.boxToInteger(end()), BoxesRunTime.boxToInteger(step())}));
    }

    private Nothing$ fail() {
        throw new IllegalArgumentException(new StringBuilder().append((Object) description()).append((Object) ": seqs cannot contain more than Int.MaxValue elements.").toString());
    }

    private long gap() {
        return end() - start();
    }

    private boolean hasStub() {
        return isInclusive() || !isExact();
    }

    private boolean isExact() {
        return gap() % ((long) step()) == 0;
    }

    private int locationAfterN(int i) {
        return start() + (step() * i);
    }

    private long longLength() {
        return (gap() / step()) + (hasStub() ? 1L : 0L);
    }

    private Range newEmptyRange(int i) {
        return new Range(i, i, step());
    }

    @Override // scala.collection.GenSeqLike
    public final int apply(int i) {
        return apply$mcII$sp(i);
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.collection.AbstractSeq, scala.Function1
    public int apply$mcII$sp(int i) {
        scala$collection$immutable$Range$$validateMaxLength();
        if (i < 0 || i >= numRangeElements()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        return start() + (step() * i);
    }

    /* renamed from: by */
    public Range m153by(int i) {
        return copy(start(), end(), i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    public final boolean contains(int i) {
        boolean z;
        if (i != end() || isInclusive()) {
            if (step() > 0) {
                if (i >= start() && i <= end()) {
                    z = true;
                    if (step() != 1) {
                        if ((i - start()) % step() == 0) {
                            z = true;
                        }
                    }
                }
            } else if (i >= end() && i <= start()) {
                z = true;
                if (step() != -1) {
                    if ((i - start()) % step() == 0) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public Range copy(int i, int i2, int i3) {
        return new Range(i, i2, i3);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public final Range drop(int i) {
        return (i <= 0 || isEmpty()) ? this : (i < numRangeElements() || numRangeElements() < 0) ? copy(locationAfterN(i), end(), step()) : newEmptyRange(end());
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public final Range dropRight(int i) {
        Inclusive inclusive;
        if (i <= 0) {
            inclusive = this;
        } else if (numRangeElements() >= 0) {
            inclusive = take(numRangeElements() - i);
        } else {
            int last = last() - (step() * i);
            inclusive = ((step() <= 0 || last >= start()) && (step() >= 0 || last <= start())) ? new Inclusive(start(), last, step()) : newEmptyRange(start());
        }
        return inclusive;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Range dropWhile(Function1<Object, Object> function1) {
        Inclusive inclusive;
        long argTakeWhile = argTakeWhile(function1);
        if (argTakeWhile == start()) {
            inclusive = this;
        } else {
            int step = (int) (argTakeWhile - step());
            inclusive = step == last() ? newEmptyRange(last()) : new Inclusive(step + step(), last(), step());
        }
        return inclusive;
    }

    public int end() {
        return this.end;
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj instanceof Range) {
            Range range = (Range) obj;
            if (range.canEqual(this)) {
                if (isEmpty()) {
                    z2 = range.isEmpty();
                } else {
                    if (range.nonEmpty() && start() == range.start()) {
                        int last = last();
                        if (last == range.last() && (start() == last || step() == range.step())) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                }
                if (z2) {
                    z = true;
                }
            }
            z = false;
        } else {
            z = GenSeqLike.Cclass.equals(this, obj);
        }
        return z;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final <U> void foreach(Function1<Object, U> function1) {
        scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (start() == Integer.MIN_VALUE && end() == Integer.MIN_VALUE) ? false : true;
        int start = start();
        int terminalElement = terminalElement();
        int step = step();
        int i = 0;
        while (true) {
            if (!z ? i < numRangeElements() : start != terminalElement) {
                function1.apply(BoxesRunTime.boxToInteger(start));
                i++;
                start += step;
            } else {
                return;
            }
        }
    }

    public final void foreach$mVc$sp(Function1<Object, BoxedUnit> function1) {
        scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (start() == Integer.MIN_VALUE && end() == Integer.MIN_VALUE) ? false : true;
        int start = start();
        int terminalElement = terminalElement();
        int step = step();
        int i = 0;
        while (true) {
            if (!z ? i < numRangeElements() : start != terminalElement) {
                function1.apply$mcVI$sp(start);
                i++;
                start += step;
            } else {
                return;
            }
        }
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public int head() {
        if (!isEmpty()) {
            return start();
        }
        throw Nil$.MODULE$.head();
    }

    public Range inclusive() {
        return isInclusive() ? this : new Inclusive(start(), end(), step());
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Range init() {
        if (isEmpty()) {
            Nil$.MODULE$.init();
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return dropRight(1);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final boolean isEmpty() {
        return this.isEmpty;
    }

    public boolean isInclusive() {
        return false;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public int last() {
        return isEmpty() ? BoxesRunTime.unboxToInt(Nil$.MODULE$.last()) : lastElement();
    }

    public final int lastElement() {
        return this.lastElement;
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        if (numRangeElements() >= 0) {
            return numRangeElements();
        }
        throw fail();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> int max(Ordering<A1> ordering) {
        return ordering == Ordering$Int$.MODULE$ ? step() > 0 ? last() : head() : BoxesRunTime.unboxToInt(TraversableOnce.Cclass.max(this, ordering));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> int min(Ordering<A1> ordering) {
        return ordering == Ordering$Int$.MODULE$ ? step() > 0 ? head() : last() : BoxesRunTime.unboxToInt(TraversableOnce.Cclass.min(this, ordering));
    }

    public final int numRangeElements() {
        return this.numRangeElements;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParRange par() {
        return new ParRange(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParRange> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final Range reverse() {
        return isEmpty() ? this : new Inclusive(last(), start(), -step());
    }

    public void scala$collection$immutable$Range$$validateMaxLength() {
        if (numRangeElements() >= 0) {
            return;
        }
        throw fail();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<Object> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return length();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Tuple2<Range, Range> span(Function1<Object, Object> function1) {
        Tuple2<Range, Range> tuple2;
        long argTakeWhile = argTakeWhile(function1);
        if (argTakeWhile == start()) {
            tuple2 = new Tuple2<>(newEmptyRange(start()), this);
        } else {
            int step = (int) (argTakeWhile - step());
            tuple2 = step == last() ? new Tuple2<>(this, newEmptyRange(last())) : new Tuple2<>(new Inclusive(start(), step, step()), new Inclusive(step + step(), last(), step()));
        }
        return tuple2;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Tuple2<Range, Range> splitAt(int i) {
        return new Tuple2<>(take(i), drop(i));
    }

    public int start() {
        return this.start;
    }

    public int step() {
        return this.step;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public final <B> int sum(Numeric<B> numeric) {
        int i;
        if (numeric == Numeric$IntIsIntegral$.MODULE$) {
            i = isEmpty() ? 0 : numRangeElements() == 1 ? head() : (int) ((numRangeElements() * (head() + last())) / 2);
        } else if (isEmpty()) {
            i = numeric.toInt(numeric.zero());
        } else {
            B zero = numeric.zero();
            int head = head();
            while (true) {
                int i2 = head;
                if (i2 == terminalElement()) {
                    break;
                }
                zero = numeric.plus(zero, BoxesRunTime.boxToInteger(i2));
                head = i2 + step();
            }
            i = numeric.toInt(zero);
        }
        return i;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Range tail() {
        if (isEmpty()) {
            Nil$.MODULE$.tail();
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return drop(1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public final Range take(int i) {
        return (i <= 0 || isEmpty()) ? newEmptyRange(start()) : (i < numRangeElements() || numRangeElements() < 0) ? new Inclusive(start(), locationAfterN(i - 1), step()) : this;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public final Range takeRight(int i) {
        Inclusive inclusive;
        if (i <= 0) {
            inclusive = newEmptyRange(start());
        } else if (numRangeElements() >= 0) {
            inclusive = drop(numRangeElements() - i);
        } else {
            int last = last();
            long step = last - (step() * (i - 1));
            inclusive = ((step() <= 0 || step >= ((long) start())) && (step() >= 0 || step <= ((long) start()))) ? new Inclusive((int) step, last, step()) : this;
        }
        return inclusive;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public final Range takeWhile(Function1<Object, Object> function1) {
        Inclusive inclusive;
        long argTakeWhile = argTakeWhile(function1);
        if (argTakeWhile == start()) {
            inclusive = newEmptyRange(start());
        } else {
            int step = (int) (argTakeWhile - step());
            inclusive = step == last() ? this : new Inclusive(start(), step, step());
        }
        return inclusive;
    }

    public final int terminalElement() {
        return this.terminalElement;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.IndexedSeq<Object> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Object> toIndexedSeq() {
        return IndexedSeq.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Range toIterable() {
        return this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Range toSeq() {
        return this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return take(Range$.MODULE$.MAX_PRINT()).mkString("Range(", ", ", (numRangeElements() > Range$.MODULE$.MAX_PRINT() || (!isEmpty() && numRangeElements() < 0)) ? ", ... )" : ")");
    }
}
