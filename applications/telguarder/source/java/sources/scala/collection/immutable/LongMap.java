package scala.collection.immutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.ListBuffer;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u0011\rt!B\u0001\u0003\u0011\u0003I\u0011a\u0002'p]\u001el\u0015\r\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000f1{gnZ'baN\u00111B\u0004\t\u0003\u001fAi\u0011AB\u0005\u0003#\u0019\u0011a!\u00118z%\u00164\u0007\"B\n\f\t\u0003!\u0012A\u0002\u001fj]&$h\bF\u0001\n\u0011\u001512\u0002b\u0001\u0018\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0015A2qTBT+\u0005I\"c\u0001\u000e\u000f9\u0019!1$\u0006\u0001\u001a\u00051a$/\u001a4j]\u0016lWM\u001c;?!\u001di\u0002EIBR\u0007Wk\u0011A\b\u0006\u0003?\u0011\tqaZ3oKJL7-\u0003\u0002\"=\ta1)\u00198Ck&dGM\u0012:p[B!!bIBO\r\u0015a!!!\t%+\t)Cg\u0005\u0003$Mu\u0002\u0005\u0003\u0002\u0006(SIJ!\u0001\u000b\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGRl\u0015\r\u001d\t\u0003U5r!AC\u0016\n\u00051\u0012\u0011\u0001\u0004'p]\u001el\u0015\r]+uS2\u001c\u0018B\u0001\u00180\u0005\u0011auN\\4\n\u00059\u0002$BA\u0019\u001f\u00035\u0011\u0015\u000e^(qKJ\fG/[8ogB\u00111\u0007\u000e\u0007\u0001\t\u0019)4\u0005\"b\u0001m\t\tA+\u0005\u00028uA\u0011q\u0002O\u0005\u0003s\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u0010w%\u0011AH\u0002\u0002\u0004\u0003:L\b\u0003\u0002\u0006?SIJ!a\u0010\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\u000b\u0003&\u00124)\u0003\u0002C\u0005\t9Q*\u00199MS.,\u0007c\u0001\u0006$e!)1c\tC\u0001\u000bR\t1\tC\u0003HG\u0011\u0005\u0003*A\u0003f[B$\u00180F\u0001D\u0011\u0015Q5\u0005\"\u0011L\u0003\u0019!x\u000eT5tiV\tA\nE\u0002\u000b\u001b>K!A\u0014\u0002\u0003\t1K7\u000f\u001e\t\u0005\u001fAK#'\u0003\u0002R\r\t1A+\u001e9mKJBQaU\u0012\u0005\u0002Q\u000b\u0001\"\u001b;fe\u0006$xN]\u000b\u0002+B\u0019akV(\u000e\u0003\u0011I!\u0001\u0017\u0003\u0003\u0011%#XM]1u_JDQAW\u0012\u0005Fm\u000bqAZ8sK\u0006\u001c\u0007.\u0006\u0002]MR\u0011Q\f\u0019\t\u0003\u001fyK!a\u0018\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006Cf\u0003\rAY\u0001\u0002MB!qbY(f\u0013\t!gAA\u0005Gk:\u001cG/[8ocA\u00111G\u001a\u0003\u0006Of\u0013\rA\u000e\u0002\u0002+\")\u0011n\tC!U\u0006a1.Z=t\u0013R,'/\u0019;peV\t1\u000eE\u0002W/&BQ!\\\u0012\u0005\u00069\f!BZ8sK\u0006\u001c\u0007nS3z)\tiv\u000eC\u0003bY\u0002\u0007\u0001\u000f\u0005\u0003\u0010G&j\u0006\"\u0002:$\t\u0003\u001a\u0018A\u0004<bYV,7/\u0013;fe\u0006$xN]\u000b\u0002iB\u0019ak\u0016\u001a\t\u000bY\u001cCQA<\u0002\u0019\u0019|'/Z1dQZ\u000bG.^3\u0015\u0005uC\b\"B1v\u0001\u0004I\b\u0003B\bdeuCQa_\u0012\u0005Bq\fAb\u001d;sS:<\u0007K]3gSb,\u0012! \t\u0004}\u0006\u001dQ\"A@\u000b\t\u0005\u0005\u00111A\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u0006\u0005!!.\u0019<b\u0013\r\tIa \u0002\u0007'R\u0014\u0018N\\4\t\u000f\u000551\u0005\"\u0011\u0002\u0010\u00059\u0011n]#naRLXCAA\t!\ry\u00111C\u0005\u0004\u0003+1!a\u0002\"p_2,\u0017M\u001c\u0005\b\u00033\u0019C\u0011IA\u000e\u0003\u00191\u0017\u000e\u001c;feR\u00191)!\b\t\u000f\u0005\f9\u00021\u0001\u0002 A)qbY(\u0002\u0012!9\u00111E\u0012\u0005\u0002\u0005\u0015\u0012!\u0003;sC:\u001chm\u001c:n+\u0011\t9#!\f\u0015\t\u0005%\u0012\u0011\u0007\t\u0005\u0015\r\nY\u0003E\u00024\u0003[!q!a\f\u0002\"\t\u0007aGA\u0001T\u0011\u001d\t\u0017\u0011\u0005a\u0001\u0003g\u0001raDA\u001bSI\nY#C\u0002\u00028\u0019\u0011\u0011BR;oGRLwN\u001c\u001a\t\u000f\u0005m2\u0005\"\u0012\u0002>\u0005!1/\u001b>f+\t\ty\u0004E\u0002\u0010\u0003\u0003J1!a\u0011\u0007\u0005\rIe\u000e\u001e\u0005\b\u0003\u000f\u001aCQAA%\u0003\r9W\r\u001e\u000b\u0005\u0003\u0017\n\t\u0006\u0005\u0003\u0010\u0003\u001b\u0012\u0014bAA(\r\t1q\n\u001d;j_:Dq!a\u0015\u0002F\u0001\u0007\u0011&A\u0002lKfDq!a\u0016$\t\u000b\nI&A\u0005hKR|%/\u00127tKV!\u00111LA0)\u0019\ti&a\u0019\u0002fA\u00191'a\u0018\u0005\u0011\u0005=\u0012Q\u000bb\u0001\u0003C\n\"A\r\u001e\t\u000f\u0005M\u0013Q\u000ba\u0001S!I\u0011qMA+\t\u0003\u0007\u0011\u0011N\u0001\bI\u00164\u0017-\u001e7u!\u0015y\u00111NA/\u0013\r\tiG\u0002\u0002\ty\tLh.Y7f}!9\u0011\u0011O\u0012\u0005F\u0005M\u0014!B1qa2LHc\u0001\u001a\u0002v!9\u00111KA8\u0001\u0004I\u0003bBA=G\u0011\u0005\u00111P\u0001\u0006IAdWo]\u000b\u0005\u0003{\n\u0019\t\u0006\u0003\u0002��\u0005\u0015\u0005\u0003\u0002\u0006$\u0003\u0003\u00032aMAB\t!\ty#a\u001eC\u0002\u0005\u0005\u0004\u0002CAD\u0003o\u0002\r!!#\u0002\u0005-4\b#B\bQS\u0005\u0005\u0005bBAGG\u0011\u0005\u0013qR\u0001\bkB$\u0017\r^3e+\u0011\t\t*a&\u0015\r\u0005M\u0015\u0011TAN!\u0011Q1%!&\u0011\u0007M\n9\n\u0002\u0005\u00020\u0005-%\u0019AA1\u0011\u001d\t\u0019&a#A\u0002%B\u0001\"!(\u0002\f\u0002\u0007\u0011QS\u0001\u0006m\u0006dW/\u001a\u0005\b\u0003C\u001bC\u0011AAR\u0003))\b\u000fZ1uK^KG\u000f[\u000b\u0005\u0003K\u000bY\u000b\u0006\u0005\u0002(\u00065\u0016qVAY!\u0011Q1%!+\u0011\u0007M\nY\u000b\u0002\u0005\u00020\u0005}%\u0019AA1\u0011\u001d\t\u0019&a(A\u0002%B\u0001\"!(\u0002 \u0002\u0007\u0011\u0011\u0016\u0005\bC\u0006}\u0005\u0019AAZ!!y\u0011Q\u0007\u001a\u0002*\u0006%\u0006bBA\\G\u0011\u0005\u0011\u0011X\u0001\u0007I5Lg.^:\u0015\u0007\r\u000bY\fC\u0004\u0002T\u0005U\u0006\u0019A\u0015\t\u000f\u0005}6\u0005\"\u0001\u0002B\u0006qQn\u001c3jMf|%OU3n_Z,W\u0003BAb\u0003\u0013$B!!2\u0002LB!!bIAd!\r\u0019\u0014\u0011\u001a\u0003\b\u0003_\tiL1\u00017\u0011\u001d\t\u0017Q\u0018a\u0001\u0003\u001b\u0004raDA\u001bSI\ny\rE\u0003\u0010\u0003\u001b\n9\rC\u0004\u0002T\u000e\"\t!!6\u0002\u0013Ut\u0017n\u001c8XSRDW\u0003BAl\u0003;$b!!7\u0002`\u0006\r\b\u0003\u0002\u0006$\u00037\u00042aMAo\t!\ty#!5C\u0002\u0005\u0005\u0004\u0002CAq\u0003#\u0004\r!!7\u0002\tQD\u0017\r\u001e\u0005\bC\u0006E\u0007\u0019AAs!)y\u0011q]\u0015\u0002\\\u0006m\u00171\\\u0005\u0004\u0003S4!!\u0003$v]\u000e$\u0018n\u001c84\u0011\u001d\tio\tC\u0001\u0003_\f\u0001#\u001b8uKJ\u001cXm\u0019;j_:<\u0016\u000e\u001e5\u0016\r\u0005E(\u0011AA|)\u0019\t\u00190a?\u0003\u0004A!!bIA{!\r\u0019\u0014q\u001f\u0003\b\u0003s\fYO1\u00017\u0005\u0005\u0011\u0006\u0002CAq\u0003W\u0004\r!!@\u0011\t)\u0019\u0013q \t\u0004g\t\u0005AaBA\u0018\u0003W\u0014\rA\u000e\u0005\bC\u0006-\b\u0019\u0001B\u0003!%y\u0011q]\u00153\u0003\u007f\f)\u0010C\u0004\u0003\n\r\"\tAa\u0003\u0002\u0019%tG/\u001a:tK\u000e$\u0018n\u001c8\u0016\t\t5!Q\u0003\u000b\u0004\u0007\n=\u0001\u0002CAq\u0005\u000f\u0001\rA!\u0005\u0011\t)\u0019#1\u0003\t\u0004g\tUAaBA}\u0005\u000f\u0011\rA\u000e\u0005\b\u00053\u0019C\u0011\u0001B\u000e\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0005;\u0011\u0019\u0003\u0006\u0003\u0003 \t\u0015\u0002\u0003\u0002\u0006$\u0005C\u00012a\rB\u0012\t!\tyCa\u0006C\u0002\u0005\u0005\u0004\u0002CAq\u0005/\u0001\rAa\b\t\u000f\t%2\u0005\"\u0002\u0003,\u0005Aa-\u001b:ti.+\u00170F\u0001*Q\u0011\u00119Ca\f\u0011\t\tE\"qG\u0007\u0003\u0005gQ1A!\u000e\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0005s\u0011\u0019DA\u0004uC&d'/Z2\t\u000f\tu2\u0005\"\u0002\u0003,\u00059A.Y:u\u0017\u0016L\b\u0006\u0002B\u001e\u0005_Isa\tB\"\u0007\u0013\u00199DB\u0004\u0003F-\u0001%Aa\u0012\u0003\u0007\tKg.\u0006\u0003\u0003J\t=3\u0003\u0003B\"\u0005\u0017\u0012\tFa\u0016\u0011\t)\u0019#Q\n\t\u0004g\t=CaB\u001b\u0003D\u0011\u0015\rA\u000e\t\u0004\u001f\tM\u0013b\u0001B+\r\t9\u0001K]8ek\u000e$\bcA\b\u0003Z%\u0019!1\f\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0017\t}#1\tBK\u0002\u0013\u0005!1F\u0001\u0007aJ,g-\u001b=\t\u0015\t\r$1\tB\tB\u0003%\u0011&A\u0004qe\u00164\u0017\u000e\u001f\u0011\t\u0017\t\u001d$1\tBK\u0002\u0013\u0005!1F\u0001\u0005[\u0006\u001c8\u000e\u0003\u0006\u0003l\t\r#\u0011#Q\u0001\n%\nQ!\\1tW\u0002B1Ba\u001c\u0003D\tU\r\u0011\"\u0001\u0003r\u0005!A.\u001a4u+\t\u0011Y\u0005C\u0006\u0003v\t\r#\u0011#Q\u0001\n\t-\u0013!\u00027fMR\u0004\u0003b\u0003B=\u0005\u0007\u0012)\u001a!C\u0001\u0005c\nQA]5hQRD1B! \u0003D\tE\t\u0015!\u0003\u0003L\u00051!/[4ii\u0002Bqa\u0005B\"\t\u0003\u0011\t\t\u0006\u0006\u0003\u0004\n\u001d%\u0011\u0012BF\u0005\u001b\u0003bA!\"\u0003D\t5S\"A\u0006\t\u000f\t}#q\u0010a\u0001S!9!q\rB@\u0001\u0004I\u0003\u0002\u0003B8\u0005\u007f\u0002\rAa\u0013\t\u0011\te$q\u0010a\u0001\u0005\u0017B\u0001B!%\u0003D\u0011\u0005!1S\u0001\u0004E&tW\u0003\u0002BK\u00057#bAa&\u0003\u001e\n}\u0005\u0003\u0002\u0006$\u00053\u00032a\rBN\t\u001d\tyCa$C\u0002YB\u0001Ba\u001c\u0003\u0010\u0002\u0007!q\u0013\u0005\t\u0005s\u0012y\t1\u0001\u0003\u0018\"Q!1\u0015B\"\u0003\u0003%\tA!*\u0002\t\r|\u0007/_\u000b\u0005\u0005O\u0013i\u000b\u0006\u0006\u0003*\n=&\u0011\u0017BZ\u0005o\u0003bA!\"\u0003D\t-\u0006cA\u001a\u0003.\u00121QG!)C\u0002YB\u0011Ba\u0018\u0003\"B\u0005\t\u0019A\u0015\t\u0013\t\u001d$\u0011\u0015I\u0001\u0002\u0004I\u0003B\u0003B8\u0005C\u0003\n\u00111\u0001\u00036B!!b\tBV\u0011)\u0011IH!)\u0011\u0002\u0003\u0007!Q\u0017\u0005\u000b\u0005w\u0013\u0019%%A\u0005\u0002\tu\u0016AD2paf$C-\u001a4bk2$H%M\u000b\u0005\u0005\u007f\u0013\t.\u0006\u0002\u0003B*\u001a\u0011Fa1,\u0005\t\u0015\u0007\u0003\u0002Bd\u0005\u001bl!A!3\u000b\t\t-'1G\u0001\nk:\u001c\u0007.Z2lK\u0012LAAa4\u0003J\n\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\u0005\rU\u0012IL1\u00017\u0011)\u0011)Na\u0011\u0012\u0002\u0013\u0005!q[\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00133+\u0011\u0011yL!7\u0005\rU\u0012\u0019N1\u00017\u0011)\u0011iNa\u0011\u0012\u0002\u0013\u0005!q\\\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00134+\u0011\u0011\tO!:\u0016\u0005\t\r(\u0006\u0002B&\u0005\u0007$a!\u000eBn\u0005\u00041\u0004B\u0003Bu\u0005\u0007\n\n\u0011\"\u0001\u0003l\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\"T\u0003\u0002Bq\u0005[$a!\u000eBt\u0005\u00041\u0004\"\u0003By\u0005\u0007\n\t\u0011\"\u0011}\u00035\u0001(o\u001c3vGR\u0004&/\u001a4jq\"Q!Q\u001fB\"\u0003\u0003%\t!!\u0010\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\t\u0015\te(1IA\u0001\n\u0003\u0011Y0\u0001\bqe>$Wo\u0019;FY\u0016lWM\u001c;\u0015\u0007i\u0012i\u0010\u0003\u0006\u0003��\n]\u0018\u0011!a\u0001\u0003\u007f\t1\u0001\u001f\u00132\u0011)\u0019\u0019Aa\u0011\u0002\u0002\u0013\u00053QA\u0001\u0010aJ|G-^2u\u0013R,'/\u0019;peV\u00111q\u0001\t\u0004-^Sd\u0001CB\u0006\u0017!\u0005%a!\u0004\u0003\u00079KGn\u0005\u0005\u0004\n\r=!\u0011\u000bB,!\rQ1e\u000e\u0005\b'\r%A\u0011AB\n)\t\u0019)\u0002\u0005\u0003\u0003\u0006\u000e%\u0001\u0002CB\r\u0007\u0013!\tea\u0007\u0002\r\u0015\fX/\u00197t)\u0011\t\tb!\b\t\u000f\u0005\u00058q\u0003a\u0001u!I!\u0011_B\u0005\u0003\u0003%\t\u0005 \u0005\u000b\u0005k\u001cI!!A\u0005\u0002\u0005u\u0002B\u0003B}\u0007\u0013\t\t\u0011\"\u0001\u0004&Q\u0019!ha\n\t\u0015\t}81EA\u0001\u0002\u0004\ty\u0004\u0003\u0006\u0004\u0004\r%\u0011\u0011!C!\u0007\u000bA!b!\f\u0004\n\u0005\u0005I\u0011BB\u0018\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\rE\u0002c\u0001@\u00044%\u00191QG@\u0003\r=\u0013'.Z2u\r\u001d\u0019Id\u0003!\u0003\u0007w\u00111\u0001V5q+\u0011\u0019ida\u0011\u0014\u0011\r]2q\bB)\u0005/\u0002BAC\u0012\u0004BA\u00191ga\u0011\u0005\u000fU\u001a9\u0004\"b\u0001m!Y\u00111KB\u001c\u0005+\u0007I\u0011\u0001B\u0016\u0011)\u0019Iea\u000e\u0003\u0012\u0003\u0006I!K\u0001\u0005W\u0016L\b\u0005C\u0006\u0002\u001e\u000e]\"Q3A\u0005\u0002\r5SCAB!\u0011-\u0019\tfa\u000e\u0003\u0012\u0003\u0006Ia!\u0011\u0002\rY\fG.^3!\u0011\u001d\u00192q\u0007C\u0001\u0007+\"baa\u0016\u0004Z\rm\u0003C\u0002BC\u0007o\u0019\t\u0005C\u0004\u0002T\rM\u0003\u0019A\u0015\t\u0011\u0005u51\u000ba\u0001\u0007\u0003B\u0001ba\u0018\u00048\u0011\u00051\u0011M\u0001\no&$\bNV1mk\u0016,Baa\u0019\u0004lQ!1QMB7!\u0019\u00199ga\u000e\u0004j9\u0011!\u0002\u0001\t\u0004g\r-DaBA\u0018\u0007;\u0012\rA\u000e\u0005\t\u0007_\u001ai\u00061\u0001\u0004j\u0005\t1\u000f\u0003\u0006\u0003$\u000e]\u0012\u0011!C\u0001\u0007g*Ba!\u001e\u0004|Q11qOB?\u0007\u007f\u0002bA!\"\u00048\re\u0004cA\u001a\u0004|\u00111Qg!\u001dC\u0002YB\u0011\"a\u0015\u0004rA\u0005\t\u0019A\u0015\t\u0015\u0005u5\u0011\u000fI\u0001\u0002\u0004\u0019I\b\u0003\u0006\u0003<\u000e]\u0012\u0013!C\u0001\u0007\u0007+BAa0\u0004\u0006\u00121Qg!!C\u0002YB!B!6\u00048E\u0005I\u0011ABE+\u0011\u0019Yia$\u0016\u0005\r5%\u0006BB!\u0005\u0007$a!NBD\u0005\u00041\u0004\"\u0003By\u0007o\t\t\u0011\"\u0011}\u0011)\u0011)pa\u000e\u0002\u0002\u0013\u0005\u0011Q\b\u0005\u000b\u0005s\u001c9$!A\u0005\u0002\r]Ec\u0001\u001e\u0004\u001a\"Q!q`BK\u0003\u0003\u0005\r!a\u0010\t\u0015\r\r1qGA\u0001\n\u0003\u001a)\u0001E\u00024\u0007?#aa!)\u0016\u0005\u00041$!A!\u0011\u000b=\u0001\u0016f!*\u0011\u0007M\u001a9\u000b\u0002\u0004\u0004*V\u0011\rA\u000e\u0002\u0002\u0005B!!bIBS\u0011\u001995\u0002\"\u0001\u00040V!1\u0011WB\\+\t\u0019\u0019\f\u0005\u0003\u000bG\rU\u0006cA\u001a\u00048\u00121Qg!,C\u0002YBqaa/\f\t\u0003\u0019i,A\u0005tS:<G.\u001a;p]V!1qXBc)\u0019\u0019\tma2\u0004JB!!bIBb!\r\u00194Q\u0019\u0003\u0007k\re&\u0019\u0001\u001c\t\u000f\u0005M3\u0011\u0018a\u0001S!A\u0011QTB]\u0001\u0004\u0019\u0019\rC\u0004\u0002r-!\ta!4\u0016\t\r=7Q\u001b\u000b\u0005\u0007#\u001c9\u000e\u0005\u0003\u000bG\rM\u0007cA\u001a\u0004V\u00121Qga3C\u0002YB\u0001b!7\u0004L\u0002\u000711\\\u0001\u0006K2,Wn\u001d\t\u0006\u001f\ru7\u0011]\u0005\u0004\u0007?4!A\u0003\u001fsKB,\u0017\r^3e}A)q\u0002U\u0015\u0004T\u001eA1Q]\u0006\t\u0002\n\u0019)\"A\u0002OS2<!b!;\f\u0003\u0003E\tAABv\u0003\r!\u0016\u000e\u001d\t\u0005\u0005\u000b\u001biO\u0002\u0006\u0004:-\t\t\u0011#\u0001\u0003\u0007_\u001cRa!<\u000f\u0005/BqaEBw\t\u0003\u0019\u0019\u0010\u0006\u0002\u0004l\"Q1q_Bw\u0003\u0003%)e!?\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012! \u0005\u000b\u0003c\u001ai/!A\u0005\u0002\u000euX\u0003BB��\t\u000b!b\u0001\"\u0001\u0005\b\u0011%\u0001C\u0002BC\u0007o!\u0019\u0001E\u00024\t\u000b!a!NB~\u0005\u00041\u0004bBA*\u0007w\u0004\r!\u000b\u0005\t\u0003;\u001bY\u00101\u0001\u0005\u0004!QAQBBw\u0003\u0003%\t\tb\u0004\u0002\u000fUt\u0017\r\u001d9msV!A\u0011\u0003C\r)\u0011!\u0019\u0002b\u0007\u0011\u000b=\ti\u0005\"\u0006\u0011\u000b=\u0001\u0016\u0006b\u0006\u0011\u0007M\"I\u0002\u0002\u00046\t\u0017\u0011\rA\u000e\u0005\u000b\t;!Y!!AA\u0002\u0011}\u0011a\u0001=%aA1!QQB\u001c\t/A!b!\f\u0004n\u0006\u0005I\u0011BB\u0018\u000f)!)cCA\u0001\u0012\u0003\u0011AqE\u0001\u0004\u0005&t\u0007\u0003\u0002BC\tS1!B!\u0012\f\u0003\u0003E\tA\u0001C\u0016'\u0015!IC\u0004B,\u0011\u001d\u0019B\u0011\u0006C\u0001\t_!\"\u0001b\n\t\u0015\r]H\u0011FA\u0001\n\u000b\u001aI\u0010\u0003\u0006\u0002r\u0011%\u0012\u0011!CA\tk)B\u0001b\u000e\u0005>QQA\u0011\bC \t\u0003\"\u0019\u0005b\u0012\u0011\r\t\u0015%1\tC\u001e!\r\u0019DQ\b\u0003\u0007k\u0011M\"\u0019\u0001\u001c\t\u000f\t}C1\u0007a\u0001S!9!q\rC\u001a\u0001\u0004I\u0003\u0002\u0003B8\tg\u0001\r\u0001\"\u0012\u0011\t)\u0019C1\b\u0005\t\u0005s\"\u0019\u00041\u0001\u0005F!QAQ\u0002C\u0015\u0003\u0003%\t\tb\u0013\u0016\t\u00115C1\f\u000b\u0005\t\u001f\"i\u0006E\u0003\u0010\u0003\u001b\"\t\u0006E\u0005\u0010\t'J\u0013\u0006b\u0016\u0005X%\u0019AQ\u000b\u0004\u0003\rQ+\b\u000f\\35!\u0011Q1\u0005\"\u0017\u0011\u0007M\"Y\u0006\u0002\u00046\t\u0013\u0012\rA\u000e\u0005\u000b\t;!I%!AA\u0002\u0011}\u0003C\u0002BC\u0005\u0007\"I\u0006\u0003\u0006\u0004.\u0011%\u0012\u0011!C\u0005\u0007_\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap.class */
public abstract class LongMap<T> extends AbstractMap<Object, T> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$Bin.class */
    public static class Bin<T> extends LongMap<T> implements Product, Serializable {
        private final LongMap<T> left;
        private final long mask;
        private final long prefix;
        private final LongMap<T> right;

        public Bin(long j, long j2, LongMap<T> longMap, LongMap<T> longMap2) {
            this.prefix = j;
            this.mask = j2;
            this.left = longMap;
            this.right = longMap2;
            Product.Cclass.$init$(this);
        }

        public <S> LongMap<S> bin(LongMap<S> longMap, LongMap<S> longMap2) {
            return (left() == longMap && right() == longMap2) ? this : new Bin<>(prefix(), mask(), longMap, longMap2);
        }

        public <T> Bin<T> copy(long j, long j2, LongMap<T> longMap, LongMap<T> longMap2) {
            return new Bin<>(j, j2, longMap, longMap2);
        }

        public <T> long copy$default$1() {
            return prefix();
        }

        public <T> long copy$default$2() {
            return mask();
        }

        public <T> LongMap<T> copy$default$3() {
            return left();
        }

        public <T> LongMap<T> copy$default$4() {
            return right();
        }

        public LongMap<T> left() {
            return this.left;
        }

        public long mask() {
            return this.mask;
        }

        public long prefix() {
            return this.prefix;
        }

        @Override // scala.Product
        public int productArity() {
            return 4;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        @Override // scala.Product
        public Object productElement(int i) {
            Object obj;
            char c;
            if (i == 0) {
                c = prefix();
            } else if (i != 1) {
                if (i == 2) {
                    obj = left();
                } else if (i != 3) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                } else {
                    obj = right();
                }
                return obj;
            } else {
                c = mask();
            }
            obj = BoxesRunTime.boxToLong(c);
            return obj;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Bin";
        }

        public LongMap<T> right() {
            return this.right;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$Tip.class */
    public static class Tip<T> extends LongMap<T> implements Product, Serializable {
        private final long key;
        private final T value;

        public Tip(long j, T t) {
            this.key = j;
            this.value = t;
            Product.Cclass.$init$(this);
        }

        public <T> Tip<T> copy(long j, T t) {
            return new Tip<>(j, t);
        }

        public <T> long copy$default$1() {
            return key();
        }

        public <T> T copy$default$2() {
            return value();
        }

        public long key() {
            return this.key;
        }

        @Override // scala.Product
        public int productArity() {
            return 2;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            Object obj;
            if (i == 0) {
                obj = BoxesRunTime.boxToLong(key());
            } else if (i != 1) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = value();
            }
            return obj;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Tip";
        }

        public T value() {
            return this.value;
        }

        public <S> Tip<S> withValue(S s) {
            return s == value() ? this : new Tip<>(key(), s);
        }
    }

    public static <A, B> Object canBuildFrom() {
        return LongMap$.MODULE$.canBuildFrom();
    }

    public static <T> LongMap<T> singleton(long j, T t) {
        return LongMap$.MODULE$.singleton(j, t);
    }

    public LongMap<T> $minus(long j) {
        LongMap$Nil$ longMap$Nil$;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            if (LongMapUtils$.MODULE$.hasMatch(j, bin.prefix(), bin.mask())) {
                longMap$Nil$ = LongMapUtils$.MODULE$.zero(j, bin.mask()) ? LongMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left().$minus(j), bin.right()) : LongMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left(), bin.right().$minus(j));
                return longMap$Nil$;
            }
            longMap$Nil$ = this;
            return longMap$Nil$;
        }
        if (this instanceof Tip) {
            if (j == ((Tip) this).key()) {
                longMap$Nil$ = LongMap$Nil$.MODULE$;
            }
            longMap$Nil$ = this;
        } else if (!LongMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            longMap$Nil$ = LongMap$Nil$.MODULE$;
        }
        return longMap$Nil$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <S> LongMap<S> $plus(Tuple2<Object, S> tuple2) {
        return updated(tuple2._1$mcJ$sp(), (long) tuple2.mo268_2());
    }

    public <S> LongMap<S> $plus$plus(LongMap<S> longMap) {
        return unionWith(longMap, new LongMap$$anonfun$$plus$plus$1(this));
    }

    public final T apply(long j) {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) longMap;
            longMap2 = LongMapUtils$.MODULE$.zero(j, bin.mask()) ? bin.left() : bin.right();
        }
        if (!(longMap instanceof Tip)) {
            if (!LongMap$Nil$.MODULE$.equals(longMap)) {
                throw new MatchError(longMap);
            }
            throw package$.MODULE$.error("key not found");
        }
        Tip tip = (Tip) longMap;
        if (j != tip.key()) {
            throw package$.MODULE$.error("Key not found");
        }
        return (T) tip.value();
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public LongMap<T> empty() {
        return LongMap$Nil$.MODULE$;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public LongMap<T> filter(Function1<Tuple2<Object, T>, Object> function1) {
        LongMap$Nil$ longMap$Nil$;
        if (!(this instanceof Bin)) {
            if (this instanceof Tip) {
                Tip tip = (Tip) this;
                if (!BoxesRunTime.unboxToBoolean(function1.apply(new Tuple2<>(BoxesRunTime.boxToLong(tip.key()), tip.value())))) {
                    longMap$Nil$ = LongMap$Nil$.MODULE$;
                }
                longMap$Nil$ = this;
            } else if (!LongMap$Nil$.MODULE$.equals(this)) {
                throw new MatchError(this);
            } else {
                longMap$Nil$ = LongMap$Nil$.MODULE$;
            }
            return longMap$Nil$;
        }
        Bin bin = (Bin) this;
        Tuple2 tuple2 = new Tuple2(bin.left().filter((Function1) function1), bin.right().filter((Function1) function1));
        Tuple2 tuple22 = new Tuple2(tuple2.mo269_1(), tuple2.mo268_2());
        LongMap<T> longMap = (LongMap) tuple22.mo269_1();
        LongMap<T> longMap2 = (LongMap) tuple22.mo268_2();
        if (bin.left() != longMap || bin.right() != longMap2) {
            longMap$Nil$ = LongMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), longMap, longMap2);
            return longMap$Nil$;
        }
        longMap$Nil$ = this;
        return longMap$Nil$;
    }

    public final long firstKey() {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            longMap2 = ((Bin) longMap).left();
        }
        if (longMap instanceof Tip) {
            return ((Tip) longMap).key();
        }
        if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        }
        throw package$.MODULE$.error("Empty set");
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final <U> void foreach(Function1<Tuple2<Object, T>, U> function1) {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) longMap;
            bin.left().foreach(function1);
            longMap2 = bin.right();
        }
        if (longMap instanceof Tip) {
            Tip tip = (Tip) longMap;
            function1.apply(new Tuple2<>(BoxesRunTime.boxToLong(tip.key()), tip.value()));
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    public final void foreachKey(Function1<Object, BoxedUnit> function1) {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) longMap;
            bin.left().foreachKey(function1);
            longMap2 = bin.right();
        }
        if (longMap instanceof Tip) {
            function1.apply$mcVJ$sp(((Tip) longMap).key());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void foreachValue(Function1<T, BoxedUnit> function1) {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) longMap;
            bin.left().foreachValue(function1);
            longMap2 = bin.right();
        }
        if (longMap instanceof Tip) {
            BoxedUnit boxedUnit = (BoxedUnit) function1.apply(((Tip) longMap).value());
        } else if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    public final Option<T> get(long j) {
        LongMap<T> longMap;
        Some some;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) longMap;
            longMap2 = LongMapUtils$.MODULE$.zero(j, bin.mask()) ? bin.left() : bin.right();
        }
        if (longMap instanceof Tip) {
            Tip tip = (Tip) longMap;
            some = j == tip.key() ? new Some(tip.value()) : None$.MODULE$;
        } else if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        } else {
            some = None$.MODULE$;
        }
        return some;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public final /* bridge */ /* synthetic */ Option get(Object obj) {
        return get(BoxesRunTime.unboxToLong(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <S> S getOrElse(long j, Function0<S> function0) {
        S apply;
        LongMap<T> longMap = this;
        while (true) {
            LongMap<T> longMap2 = longMap;
            if (LongMap$Nil$.MODULE$.equals(longMap2)) {
                apply = function0.apply();
                break;
            } else if (longMap2 instanceof Tip) {
                Tip tip = (Tip) longMap2;
                apply = j == tip.key() ? tip.value() : function0.apply();
            } else if (!(longMap2 instanceof Bin)) {
                throw new MatchError(longMap2);
            } else {
                Bin bin = (Bin) longMap2;
                longMap = LongMapUtils$.MODULE$.zero(j, bin.mask()) ? bin.left() : bin.right();
            }
        }
        return apply;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public final /* bridge */ /* synthetic */ Object getOrElse(Object obj, Function0 function0) {
        return getOrElse(BoxesRunTime.unboxToLong(obj), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> LongMap<T> intersection(LongMap<R> longMap) {
        return (LongMap<R>) intersectionWith(longMap, new LongMap$$anonfun$intersection$1(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S, R> LongMap<R> intersectionWith(LongMap<S> longMap, Function3<Object, T, S, R> function3) {
        LongMap$Nil$ longMap$Nil$;
        Tuple2 tuple2 = new Tuple2(this, longMap);
        if (tuple2.mo269_1() instanceof Bin) {
            Bin bin = (Bin) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof Bin) {
                Bin bin2 = (Bin) tuple2.mo268_2();
                longMap$Nil$ = LongMapUtils$.MODULE$.shorter(bin.mask(), bin2.mask()) ? LongMapUtils$.MODULE$.hasMatch(bin2.prefix(), bin.prefix(), bin.mask()) ? LongMapUtils$.MODULE$.zero(bin2.prefix(), bin.mask()) ? bin.left().intersectionWith(bin2, function3) : bin.right().intersectionWith(bin2, function3) : LongMap$Nil$.MODULE$ : bin.mask() == bin2.mask() ? LongMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left().intersectionWith(bin2.left(), function3), bin.right().intersectionWith(bin2.right(), function3)) : LongMapUtils$.MODULE$.hasMatch(bin.prefix(), bin2.prefix(), bin2.mask()) ? LongMapUtils$.MODULE$.zero(bin.prefix(), bin2.mask()) ? intersectionWith(bin2.left(), function3) : intersectionWith(bin2.right(), function3) : LongMap$Nil$.MODULE$;
                return longMap$Nil$;
            }
        }
        if (tuple2.mo269_1() instanceof Tip) {
            Tip tip = (Tip) tuple2.mo269_1();
            Option<T> option = ((LongMap) tuple2.mo268_2()).get(tip.key());
            if (None$.MODULE$.equals(option)) {
                longMap$Nil$ = LongMap$Nil$.MODULE$;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                longMap$Nil$ = new Tip(tip.key(), function3.apply(BoxesRunTime.boxToLong(tip.key()), tip.value(), ((Some) option).m362x()));
            }
        } else if (tuple2.mo268_2() instanceof Tip) {
            Tip tip2 = (Tip) tuple2.mo268_2();
            Option<T> option2 = get(tip2.key());
            if (None$.MODULE$.equals(option2)) {
                longMap$Nil$ = LongMap$Nil$.MODULE$;
            } else if (!(option2 instanceof Some)) {
                throw new MatchError(option2);
            } else {
                longMap$Nil$ = new Tip(tip2.key(), function3.apply(BoxesRunTime.boxToLong(tip2.key()), ((Some) option2).m362x(), tip2.value()));
            }
        } else {
            longMap$Nil$ = LongMap$Nil$.MODULE$;
        }
        return longMap$Nil$;
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return equals(LongMap$Nil$.MODULE$);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<Object, T>> iterator() {
        return LongMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new LongMapEntryIterator(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<Object> keysIterator() {
        return LongMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new LongMapKeyIterator(this);
    }

    public final long lastKey() {
        LongMap<T> longMap;
        LongMap<T> longMap2 = this;
        while (true) {
            longMap = longMap2;
            if (!(longMap instanceof Bin)) {
                break;
            }
            longMap2 = ((Bin) longMap).right();
        }
        if (longMap instanceof Tip) {
            return ((Tip) longMap).key();
        }
        if (!LongMap$Nil$.MODULE$.equals(longMap)) {
            throw new MatchError(longMap);
        }
        throw package$.MODULE$.error("Empty set");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> LongMap<S> modifyOrRemove(Function2<Object, T, Option<S>> function2) {
        LongMap$Nil$ longMap$Nil$;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            LongMap<S> modifyOrRemove = bin.left().modifyOrRemove(function2);
            LongMap<S> modifyOrRemove2 = bin.right().modifyOrRemove(function2);
            longMap$Nil$ = (bin.left() == modifyOrRemove && bin.right() == modifyOrRemove2) ? this : LongMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), modifyOrRemove, modifyOrRemove2);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            Option option = (Option) function2.apply(BoxesRunTime.boxToLong(tip.key()), tip.value());
            if (None$.MODULE$.equals(option)) {
                longMap$Nil$ = LongMap$Nil$.MODULE$;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                Some some = (Some) option;
                longMap$Nil$ = tip.value() == some.m362x() ? this : new Tip(tip.key(), some.m362x());
            }
        } else if (!LongMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            longMap$Nil$ = LongMap$Nil$.MODULE$;
        }
        return longMap$Nil$;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public final int size() {
        int i;
        if (LongMap$Nil$.MODULE$.equals(this)) {
            i = 0;
        } else if (this instanceof Tip) {
            i = 1;
        } else if (!(this instanceof Bin)) {
            throw new MatchError(this);
        } else {
            Bin bin = (Bin) this;
            i = bin.right().size() + bin.left().size();
        }
        return i;
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "LongMap";
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Tuple2<Object, T>> toList() {
        ListBuffer listBuffer = new ListBuffer();
        foreach(new LongMap$$anonfun$toList$1(this, listBuffer));
        return listBuffer.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> LongMap<S> transform(Function2<Object, T, S> function2) {
        Tip<S> tip;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            tip = bin.bin(bin.left().transform(function2), bin.right().transform(function2));
        } else if (this instanceof Tip) {
            Tip tip2 = (Tip) this;
            tip = tip2.withValue(function2.apply(BoxesRunTime.boxToLong(tip2.key()), tip2.value()));
        } else if (!LongMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            tip = LongMap$Nil$.MODULE$;
        }
        return tip;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> LongMap<S> unionWith(LongMap<S> longMap, Function3<Object, S, S, S> function3) {
        Bin bin;
        Tuple2 tuple2 = new Tuple2(this, longMap);
        if (tuple2.mo269_1() instanceof Bin) {
            Bin bin2 = (Bin) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof Bin) {
                Bin bin3 = (Bin) tuple2.mo268_2();
                bin = LongMapUtils$.MODULE$.shorter(bin2.mask(), bin3.mask()) ? LongMapUtils$.MODULE$.hasMatch(bin3.prefix(), bin2.prefix(), bin2.mask()) ? LongMapUtils$.MODULE$.zero(bin3.prefix(), bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().unionWith(bin3, function3), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().unionWith(bin3, function3)) : LongMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3) : LongMapUtils$.MODULE$.shorter(bin3.mask(), bin2.mask()) ? LongMapUtils$.MODULE$.hasMatch(bin2.prefix(), bin3.prefix(), bin3.mask()) ? LongMapUtils$.MODULE$.zero(bin2.prefix(), bin3.mask()) ? new Bin(bin3.prefix(), bin3.mask(), unionWith(bin3.left(), function3), bin3.right()) : new Bin(bin3.prefix(), bin3.mask(), bin3.left(), unionWith(bin3.right(), function3)) : LongMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3) : bin2.prefix() == bin3.prefix() ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().unionWith(bin3.left(), function3), bin2.right().unionWith(bin3.right(), function3)) : LongMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3);
                return bin;
            }
        }
        if (tuple2.mo269_1() instanceof Tip) {
            Tip tip = (Tip) tuple2.mo269_1();
            bin = ((LongMap) tuple2.mo268_2()).updateWith(tip.key(), tip.value(), new LongMap$$anonfun$unionWith$1(this, function3, tip));
        } else if (tuple2.mo268_2() instanceof Tip) {
            Tip tip2 = (Tip) tuple2.mo268_2();
            bin = ((LongMap) tuple2.mo269_1()).updateWith(tip2.key(), tip2.value(), new LongMap$$anonfun$unionWith$2(this, function3, tip2));
        } else if (LongMap$Nil$.MODULE$.equals(tuple2.mo269_1())) {
            bin = (LongMap) tuple2.mo268_2();
        } else if (!LongMap$Nil$.MODULE$.equals(tuple2.mo268_2())) {
            throw new MatchError(tuple2);
        } else {
            bin = (LongMap) tuple2.mo269_1();
        }
        return bin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> LongMap<S> updateWith(long j, S s, Function2<T, S, S> function2) {
        Bin bin;
        if (this instanceof Bin) {
            Bin bin2 = (Bin) this;
            bin = LongMapUtils$.MODULE$.hasMatch(j, bin2.prefix(), bin2.mask()) ? LongMapUtils$.MODULE$.zero(j, bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().updateWith(j, s, function2), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().updateWith(j, s, function2)) : LongMapUtils$.MODULE$.join(j, new Tip(j, s), bin2.prefix(), this);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            bin = j == tip.key() ? new Tip(j, function2.apply(tip.value(), s)) : LongMapUtils$.MODULE$.join(j, new Tip(j, s), tip.key(), this);
        } else if (!LongMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            bin = new Tip(j, s);
        }
        return bin;
    }

    public <S> LongMap<S> updated(long j, S s) {
        Bin bin;
        if (this instanceof Bin) {
            Bin bin2 = (Bin) this;
            bin = LongMapUtils$.MODULE$.hasMatch(j, bin2.prefix(), bin2.mask()) ? LongMapUtils$.MODULE$.zero(j, bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().updated(j, (long) s), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().updated(j, (long) s)) : LongMapUtils$.MODULE$.join(j, new Tip(j, s), bin2.prefix(), this);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            bin = j == tip.key() ? new Tip(j, s) : LongMapUtils$.MODULE$.join(j, new Tip(j, s), tip.key(), this);
        } else if (!LongMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            bin = new Tip(j, s);
        }
        return bin;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<T> valuesIterator() {
        return LongMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new LongMapValueIterator(this);
    }
}
