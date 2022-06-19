package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Array$;
import scala.Function1;
import scala.Predef$;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericClassTagCompanion;
import scala.collection.generic.GenericClassTagTraversableTemplate;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.Builder;
import scala.collection.mutable.UnrolledBuffer;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\rEf\u0001B\u0001\u0003\u0001%\u0011a\"\u00168s_2dW\r\u001a\"vM\u001a,'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\u001d\u00011b\u0007\u0010#S1\u00022\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u00059\t%m\u001d;sC\u000e$()\u001e4gKJ\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001'\t\tA+\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJ\u0004B\u0001D\u0010\u0010C%\u0011\u0001E\u0001\u0002\u000b\u0005V4g-\u001a:MS.,\u0007c\u0001\u0007\u0001\u001fA!1EJ\b)\u001b\u0005!#BA\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!a\n\u0013\u0003E\u001d+g.\u001a:jG\u000ec\u0017m]:UC\u001e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rU=\t\u0013BA\u0016\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!F\u0017\n\u000592!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002\u0003\u0019\u0001\u0005\u000b\u0007I1A\u0019\u0002\u0007Q\fw-F\u00013!\r\u0019dgD\u0007\u0002i)\u0011QGB\u0001\be\u00164G.Z2u\u0013\t9DG\u0001\u0005DY\u0006\u001c8\u000fV1h\u0011!I\u0004A!A!\u0002\u0013\u0011\u0014\u0001\u0002;bO\u0002BQa\u000f\u0001\u0005\u0002q\na\u0001P5oSRtD#A\u001f\u0015\u0005\u0005r\u0004\"\u0002\u0019;\u0001\b\u0011\u0004b\u0002!\u0001\u0001\u0004%I!Q\u0001\bQ\u0016\fG\r\u001d;s+\u0005\u0011\u0005cA\"|\u001f9\u0011A\u0002R\u0004\u0006\u000b\nA\tAR\u0001\u000f+:\u0014x\u000e\u001c7fI\n+hMZ3s!\taqIB\u0003\u0002\u0005!\u0005\u0001jE\u0002H\u00132\u00022a\t&)\u0013\tYEE\u0001\u000eDY\u0006\u001c8\u000fV1h)J\fg/\u001a:tC\ndWMR1di>\u0014\u0018\u0010C\u0003<\u000f\u0012\u0005Q\nF\u0001G\u0011\u0015yu\tb\u0001Q\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\t\tF\f\u0006\u0002S=B)1eU+\\;&\u0011A\u000b\n\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0003-^k\u0011aR\u0005\u00031f\u0013AaQ8mY&\u0011!\f\n\u0002\u0019\u000f\u0016tWM]5d\u00072\f7o\u001d+bO\u000e{W\u000e]1oS>t\u0007C\u0001\t]\t\u0015\u0011bJ1\u0001\u0014!\ra\u0001a\u0017\u0005\u0006?:\u0003\u001d\u0001Y\u0001\u0002iB\u00191GN.\t\u000b\t<E\u0011A2\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0002eOR\u0011Q-\u001b\t\u0005\u0019)2\u0007\u000e\u0005\u0002\u0011O\u0012)!#\u0019b\u0001'A\u0019A\u0002\u00014\t\u000b}\u000b\u00079\u00016\u0011\u0007M2d\rC\u0004m\u000f\n\u0007I\u0011A7\u0002\u0013]\fG/\u001a:mS:,W#\u00018\u0011\u0005Uy\u0017B\u00019\u0007\u0005\rIe\u000e\u001e\u0005\u0007e\u001e\u0003\u000b\u0011\u00028\u0002\u0015]\fG/\u001a:mS:,\u0007\u0005C\u0004u\u000f\n\u0007I\u0011A7\u0002\u001d]\fG/\u001a:mS:,G)\u001a7j[\"1ao\u0012Q\u0001\n9\fqb^1uKJd\u0017N\\3EK2LW\u000e\t\u0005\tq\u001e\u0013\r\u0011\"\u0001\u0005[\u0006qQO\u001c:pY2,G\r\\3oORD\u0007B\u0002>HA\u0003%a.A\bv]J|G\u000e\\3eY\u0016tw\r\u001e5!\r\u0011ax\tA?\u0003\u0011Us'o\u001c7mK\u0012,2A`A\u0016'\tYx\u0010E\u0002\u0016\u0003\u0003I1!a\u0001\u0007\u0005\u0019\te.\u001f*fM\"I\u0011qA>\u0003\u0002\u0004%\t!\\\u0001\u0005g&TX\r\u0003\u0006\u0002\fm\u0014\t\u0019!C\u0001\u0003\u001b\t\u0001b]5{K~#S-\u001d\u000b\u0005\u0003\u001f\t)\u0002E\u0002\u0016\u0003#I1!a\u0005\u0007\u0005\u0011)f.\u001b;\t\u0013\u0005]\u0011\u0011BA\u0001\u0002\u0004q\u0017a\u0001=%c!I\u00111D>\u0003\u0002\u0003\u0006KA\\\u0001\u0006g&TX\r\t\u0005\u000b\u0003?Y(\u00111A\u0005\u0002\u0005\u0005\u0012!B1se\u0006LXCAA\u0012!\u0015)\u0012QEA\u0015\u0013\r\t9C\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004!\u0005-B!\u0002\n|\u0005\u0004\u0019\u0002BCA\u0018w\n\u0005\r\u0011\"\u0001\u00022\u0005I\u0011M\u001d:bs~#S-\u001d\u000b\u0005\u0003\u001f\t\u0019\u0004\u0003\u0006\u0002\u0018\u00055\u0012\u0011!a\u0001\u0003GA!\"a\u000e|\u0005\u0003\u0005\u000b\u0015BA\u0012\u0003\u0019\t'O]1zA!Q\u00111H>\u0003\u0002\u0004%\t!!\u0010\u0002\t9,\u0007\u0010^\u000b\u0003\u0003\u007f\u0001BAV>\u0002*!Q\u00111I>\u0003\u0002\u0004%\t!!\u0012\u0002\u00119,\u0007\u0010^0%KF$B!a\u0004\u0002H!Q\u0011qCA!\u0003\u0003\u0005\r!a\u0010\t\u0015\u0005-3P!A!B\u0013\ty$A\u0003oKb$\b\u0005\u0003\u0006\u0002Pm\u0014)\u0019!C\u0001\u0003#\nAAY;gMV\u0011\u00111\u000b\t\u0005\u0019\u0001\tI\u0003\u0003\u0006\u0002Xm\u0014\t\u0011)A\u0005\u0003'\nQAY;gM\u0002B!\"a\u0017|\u0005\u0007\u0005\u000b1BA/\u0003))g/\u001b3f]\u000e,G%\r\t\u0005gY\nI\u0003C\u0004<w\u0012\u0005A!!\u0019\u0015\u0015\u0005\r\u0014qMA5\u0003W\ni\u0007\u0006\u0003\u0002@\u0005\u0015\u0004\u0002CA.\u0003?\u0002\u001d!!\u0018\t\u000f\u0005\u001d\u0011q\fa\u0001]\"A\u0011qDA0\u0001\u0004\t\u0019\u0003\u0003\u0005\u0002<\u0005}\u0003\u0019AA \u0011)\ty%a\u0018\u0011\u0002\u0003\u0007\u00111\u000b\u0005\bwm$\t\u0001BA9)\t\t\u0019\b\u0006\u0003\u0002@\u0005U\u0004BCA<\u0003_\n\t\u0011q\u0001\u0002^\u0005QQM^5eK:\u001cW\r\n\u001a\t\u000fmZH\u0011\u0001\u0003\u0002|Q!\u0011QPAB)\u0011\ty$a \t\u0015\u0005\u0005\u0015\u0011PA\u0001\u0002\b\ti&\u0001\u0006fm&$WM\\2fIMB\u0001\"!\"\u0002z\u0001\u0007\u00111K\u0001\u0002E\"1\u0011\u0011R>\u0005\n5\f!B\\3yi2,gn\u001a;i\u0011\u001d\tii\u001fC\u0003\u0003\u001f\u000ba!\u00199qK:$G\u0003BA \u0003#C\u0001\"a%\u0002\f\u0002\u0007\u0011\u0011F\u0001\u0005K2,W\u000e\u000b\u0003\u0002\f\u0006]\u0005\u0003BAM\u0003?k!!a'\u000b\u0007\u0005ue!\u0001\u0006b]:|G/\u0019;j_:LA!!)\u0002\u001c\n9A/Y5me\u0016\u001c\u0007bBASw\u0012\u0005\u0011qU\u0001\bM>\u0014X-Y2i+\u0011\tI+a.\u0015\t\u0005=\u00111\u0016\u0005\t\u0003[\u000b\u0019\u000b1\u0001\u00020\u0006\ta\rE\u0004\u0016\u0003c\u000bI#!.\n\u0007\u0005MfAA\u0005Gk:\u001cG/[8ocA\u0019\u0001#a.\u0005\u000f\u0005e\u00161\u0015b\u0001'\t\tQ\u000bC\u0004\u0002>n$)!a0\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\t\u0005%\u0012\u0011\u0019\u0005\b\u0003\u0007\fY\f1\u0001o\u0003\rIG\r\u001f\u0015\u0005\u0003w\u000b9\nC\u0004\u0002Jn$)!a3\u0002\rU\u0004H-\u0019;f)\u0019\ty!!4\u0002P\"9\u00111YAd\u0001\u0004q\u0007\u0002CAi\u0003\u000f\u0004\r!!\u000b\u0002\u000f9,w/\u001a7f[\"\"\u0011qYAL\u0011\u001d\t9n\u001fC\u0003\u00033\fa\u0001\\8dCR,G\u0003BA \u00037Dq!a1\u0002V\u0002\u0007a\u000e\u000b\u0003\u0002V\u0006]\u0005bBAqw\u0012\u0005\u00111]\u0001\baJ,\u0007/\u001a8e)\u0011\ty$!:\t\u0011\u0005M\u0015q\u001ca\u0001\u0003SAq!!;|\t\u0013\tY/\u0001\u0006tQ&4GO]5hQR$\"!a\u0004\t\u000f\u0005=8\u0010\"\u0002\u0002r\u00061!/Z7pm\u0016$b!!\u000b\u0002t\u0006U\bbBAb\u0003[\u0004\rA\u001c\u0005\t\u0003o\fi\u000f1\u0001\u0002T\u00051!-\u001e4gKJDC!!<\u0002\u0018\"9\u0011Q`>\u0005\n\u0005}\u0018!C:iS\u001a$H.\u001a4u)\u0011\tyA!\u0001\t\u000f\t\r\u00111 a\u0001]\u0006)A.\u001a4uE\"9!qA>\u0005\u0012\t%\u0011\u0001\u0005;ss6+'oZ3XSRDg*\u001a=u)\t\u0011Y\u0001E\u0002\u0016\u0005\u001bI1Aa\u0004\u0007\u0005\u001d\u0011un\u001c7fC:DqAa\u0005|\t\u000b\u0011)\"A\u0005j]N,'\u000f^!mYRA\u0011q\u0002B\f\u00053\u0011\u0019\u0003C\u0004\u0002D\nE\u0001\u0019\u00018\t\u000f}\u0013\t\u00021\u0001\u0003\u001cA1!Q\u0004B\u0010\u0003Si\u0011\u0001B\u0005\u0004\u0005C!!a\u0003+sCZ,'o]1cY\u0016D\u0001\"a>\u0003\u0012\u0001\u0007\u00111\u000b\u0015\u0005\u0005#\t9\nC\u0004\u0003*m$IAa\u000b\u0002\u000f9,H\u000e\\8viR1\u0011q\u0002B\u0017\u0005cAqAa\f\u0003(\u0001\u0007a.\u0001\u0003ge>l\u0007b\u0002B\u001a\u0005O\u0001\rA\\\u0001\u0006k:$\u0018\u000e\u001c\u0005\b\u0005oYH\u0011\u0001B\u001d\u0003\u0011\u0011\u0017N\u001c3\u0015\t\t-!1\b\u0005\t\u0005{\u0011)\u00041\u0001\u0002@\u0005AA\u000f[1uQ\u0016\fG\rC\u0004\u0003Bm$\tEa\u0011\u0002\u0011Q|7\u000b\u001e:j]\u001e$\"A!\u0012\u0011\t\t\u001d#\u0011K\u0007\u0003\u0005\u0013RAAa\u0013\u0003N\u0005!A.\u00198h\u0015\t\u0011y%\u0001\u0003kCZ\f\u0017\u0002\u0002B*\u0005\u0013\u0012aa\u0015;sS:<w!\u0003B,\u000f\u0006\u0005\t\u0012\u0001B-\u0003!)fN]8mY\u0016$\u0007c\u0001,\u0003\\\u0019AApRA\u0001\u0012\u0003\u0011ifE\u0002\u0003\\}Dqa\u000fB.\t\u0003\u0011\t\u0007\u0006\u0002\u0003Z!Q!Q\rB.#\u0003%\tAa\u001a\u00027\u0011bWm]:j]&$He\u001a:fCR,'\u000f\n3fM\u0006,H\u000e\u001e\u00135+\u0011\u0011IG!!\u0016\u0005\t-$\u0006\u0002B7\u0005g\u00022!\u0006B8\u0013\r\u0011\tH\u0002\u0002\u0005\u001dVdGn\u000b\u0002\u0003vA!!q\u000fB?\u001b\t\u0011IH\u0003\u0003\u0003|\u0005m\u0015!C;oG\",7m[3e\u0013\u0011\u0011yH!\u001f\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0002\u0004\u0013\u0005G\u0012\ra\u0005\u0005\n\u0005\u000b;\u0015\u0011!C\u0005\u0005\u000f\u000b1B]3bIJ+7o\u001c7wKR\u0011!\u0011\u0012\t\u0005\u0005\u000f\u0012Y)\u0003\u0003\u0003\u000e\n%#AB(cU\u0016\u001cG\u000fC\u0005\u0003\u0012\u0002\u0001\r\u0011\"\u0003\u0003\u0014\u0006Y\u0001.Z1eaR\u0014x\fJ3r)\u0011\tyA!&\t\u0013\u0005]!qRA\u0001\u0002\u0004\u0011\u0005b\u0002BM\u0001\u0001\u0006KAQ\u0001\tQ\u0016\fG\r\u001d;sA!\"!q\u0013BO!\r)\"qT\u0005\u0004\u0005C3!!\u0003;sC:\u001c\u0018.\u001a8u\u0011!\u0011)\u000b\u0001a\u0001\n\u0013\t\u0015a\u00027bgR\u0004HO\u001d\u0005\n\u0005S\u0003\u0001\u0019!C\u0005\u0005W\u000b1\u0002\\1tiB$(o\u0018\u0013fcR!\u0011q\u0002BW\u0011%\t9Ba*\u0002\u0002\u0003\u0007!\tC\u0004\u00032\u0002\u0001\u000b\u0015\u0002\"\u0002\u00111\f7\u000f\u001e9ue\u0002BCAa,\u0003\u001e\"A!q\u0017\u0001A\u0002\u0013%Q.\u0001\u0002tu\"I!1\u0018\u0001A\u0002\u0013%!QX\u0001\u0007gj|F%Z9\u0015\t\u0005=!q\u0018\u0005\n\u0003/\u0011I,!AA\u00029DqAa1\u0001A\u0003&a.A\u0002tu\u0002BCA!1\u0003\u001e\"9!\u0011\u001a\u0001\u0005\u0002\u0011\t\u0015a\u00025fC\u0012\u0004FO\u001d\u0005\t\u0005\u001b\u0004A\u0011\u0001\u0003\u0003P\u0006Y\u0001.Z1e!R\u0014x\fJ3r)\u0011\tyA!5\t\u000f\tM'1\u001aa\u0001\u0005\u0006!\u0001.Z1e\u0011\u001d\u00119\u000e\u0001C\u0001\t\u0005\u000bq\u0001\\1tiB#(\u000f\u0003\u0005\u0003\\\u0002!\t\u0001\u0002Bo\u0003-a\u0017m\u001d;QiJ|F%Z9\u0015\t\u0005=!q\u001c\u0005\b\u0005C\u0014I\u000e1\u0001C\u0003\u0011a\u0017m\u001d;\t\u0011\u0005-\u0001\u0001\"\u0001\u0005\u0005K$B!a\u0004\u0003h\"9!\u0011\u001eBr\u0001\u0004q\u0017!A:\t\u000f\t\u0004\u0001\u0015\"\u0015\u0003nV\t\u0011\u0005\u0003\u0004\u0003r\u0002!\t\"Q\u0001\f]\u0016<XK\u001c:pY2,G\r\u0003\u0005\u0003v\u0002!\t\u0001\u0002B|\u00039\u0019\u0017\r\\2OKb$H*\u001a8hi\"$2A\u001cB}\u0011\u001d\u00119La=A\u00029DqA!@\u0001\t\u0003\u0011y0A\tdY\u0006\u001c8\u000fV1h\u0007>l\u0007/\u00198j_:,\u0012a\u0011\u0005\b\u0007\u0007\u0001A\u0011AB\u0003\u0003\u0019\u0019wN\\2biR\u0019\u0011ea\u0002\t\u000f\r%1\u0011\u0001a\u0001C\u0005!A\u000f[1u\u0011\u001d\u0019i\u0001\u0001C\u0001\u0007\u001f\t\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0007#\u0019\u0019\"D\u0001\u0001\u0011\u001d\t\u0019ja\u0003A\u0002=Aqaa\u0006\u0001\t\u0003\tY/A\u0003dY\u0016\f'\u000fC\u0004\u0004\u001c\u0001!\ta!\b\u0002\u0011%$XM]1u_J,\"aa\b\u0011\u000b\tu1\u0011E\b\n\u0007\r\rBA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\t)\u000b\u0001C!\u0007O)Ba!\u000b\u00042Q!\u0011qBB\u0016\u0011!\tik!\nA\u0002\r5\u0002CB\u000b\u00022>\u0019y\u0003E\u0002\u0011\u0007c!q!!/\u0004&\t\u00071\u0003C\u0004\u00046\u0001!\taa\u000e\u0002\rI,7/\u001e7u)\u0005\t\u0003BBB\u001e\u0001\u0011\u0005Q.\u0001\u0004mK:<G\u000f\u001b\u0005\b\u0003{\u0003A\u0011AB )\ry1\u0011\t\u0005\b\u0003\u0007\u001ci\u00041\u0001o\u0011\u001d\tI\r\u0001C\u0001\u0007\u000b\"b!a\u0004\u0004H\r%\u0003bBAb\u0007\u0007\u0002\rA\u001c\u0005\b\u0003#\u001c\u0019\u00051\u0001\u0010\u0011\u001d\ty\u000f\u0001C\u0001\u0007\u001b\"2aDB(\u0011\u001d\t\u0019ma\u0013A\u00029Dqaa\u0015\u0001\t\u0003\u0019)&\u0001\b%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\t\rE1q\u000b\u0005\b\u0003'\u001b\t\u00061\u0001\u0010\u0011\u001d\u0011\u0019\u0002\u0001C\u0001\u00077\"b!a\u0004\u0004^\r}\u0003bBAb\u00073\u0002\rA\u001c\u0005\t\u0007C\u001aI\u00061\u0001\u0004d\u0005)Q\r\\3ngB)!Q\u0004B\u0010\u001f!91q\r\u0001\u0005\n\r%\u0014aC<sSR,wJ\u00196fGR$B!a\u0004\u0004l!A1QNB3\u0001\u0004\u0019y'A\u0002pkR\u0004Ba!\u001d\u0004x5\u001111\u000f\u0006\u0005\u0007k\u0012i%\u0001\u0002j_&!1\u0011PB:\u0005Iy%M[3di>+H\u000f];u'R\u0014X-Y7\t\u000f\ru\u0004\u0001\"\u0003\u0004��\u0005Q!/Z1e\u001f\nTWm\u0019;\u0015\t\u0005=1\u0011\u0011\u0005\t\u0007\u0007\u001bY\b1\u0001\u0004\u0006\u0006\u0011\u0011N\u001c\t\u0005\u0007c\u001a9)\u0003\u0003\u0004\n\u000eM$!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"91Q\u0012\u0001\u0005B\r]\u0012!B2m_:,\u0007bBBI\u0001\u0011\u000531S\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005\u000bBs\u0001ABL\u0007;\u001b\t\u000bE\u0002\u0016\u00073K1aa'\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\f#aa(\u0002\u0001Vs'o\u001c7mK\u0012\u0014UO\u001a4fe\u0002J7\u000f\t8pi\u0002\"Wm]5h]\u0016$\u0007\u0005^8!K:\f'\r\\3![\u0016\fg.\u001b8hMVd\u0007e];cG2\f7o]5oO:\n#aa)\u0002\rIr\u0013'\r\u00181Q\u001d\u00011qUBW\u0007_\u00032!FBU\u0013\r\u0019YK\u0002\u0002\u0011'\u0016\u0014\u0018.\u00197WKJ\u001c\u0018n\u001c8V\u0013\u0012\u000bQA^1mk\u0016t\u0012!\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/UnrolledBuffer.class */
public class UnrolledBuffer<T> extends AbstractBuffer<T> implements GenericClassTagTraversableTemplate<T, UnrolledBuffer>, Builder<T, UnrolledBuffer<T>>, Serializable {
    public static final long serialVersionUID = 1;
    private final ClassTag<T> tag;
    private transient Unrolled<T> scala$collection$mutable$UnrolledBuffer$$headptr = newUnrolled();
    private transient Unrolled<T> lastptr = scala$collection$mutable$UnrolledBuffer$$headptr();

    /* renamed from: sz */
    private transient int f1572sz = 0;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/UnrolledBuffer$Unrolled.class */
    public static class Unrolled<T> {
        private Object array;
        private final UnrolledBuffer<T> buff;
        private final ClassTag<T> evidence$1;
        private Unrolled<T> next;
        private int size;

        public Unrolled(int i, Object obj, Unrolled<T> unrolled, UnrolledBuffer<T> unrolledBuffer, ClassTag<T> classTag) {
            this.size = i;
            this.array = obj;
            this.next = unrolled;
            this.buff = unrolledBuffer;
            this.evidence$1 = classTag;
        }

        public Unrolled(UnrolledBuffer<T> unrolledBuffer, ClassTag<T> classTag) {
            this(0, classTag.newArray(UnrolledBuffer$.MODULE$.unrolledlength()), null, unrolledBuffer, classTag);
        }

        public Unrolled(ClassTag<T> classTag) {
            this(0, classTag.newArray(UnrolledBuffer$.MODULE$.unrolledlength()), null, null, classTag);
        }

        private int nextlength() {
            return buff() == null ? UnrolledBuffer$.MODULE$.unrolledlength() : buff().calcNextLength(ScalaRunTime$.MODULE$.array_length(array()));
        }

        private void nullout(int i, int i2) {
            while (i < i2) {
                ScalaRunTime$.MODULE$.array_update(array(), i, null);
                i++;
            }
        }

        private void shiftleft(int i) {
            while (i < size() - 1) {
                int i2 = i + 1;
                ScalaRunTime$.MODULE$.array_update(array(), i, ScalaRunTime$.MODULE$.array_apply(array(), i2));
                i = i2;
            }
            nullout(i, i + 1);
        }

        private void shiftright() {
            int size = size();
            while (true) {
                size--;
                if (size >= 0) {
                    ScalaRunTime$.MODULE$.array_update(array(), size + 1, ScalaRunTime$.MODULE$.array_apply(array(), size));
                } else {
                    return;
                }
            }
        }

        public final Unrolled<T> append(T t) {
            Unrolled<T> unrolled = this;
            while (true) {
                Unrolled<T> unrolled2 = unrolled;
                if (unrolled2.size() < ScalaRunTime$.MODULE$.array_length(unrolled2.array())) {
                    ScalaRunTime$.MODULE$.array_update(unrolled2.array(), unrolled2.size(), t);
                    unrolled2.size_$eq(unrolled2.size() + 1);
                    return unrolled2;
                }
                unrolled2.next_$eq(new Unrolled<>(0, unrolled2.evidence$1.newArray(unrolled2.nextlength()), null, unrolled2.buff(), unrolled2.evidence$1));
                unrolled = unrolled2.next();
            }
        }

        public final T apply(int i) {
            Unrolled<T> unrolled = this;
            while (true) {
                Unrolled<T> unrolled2 = unrolled;
                if (i < unrolled2.size()) {
                    return (T) ScalaRunTime$.MODULE$.array_apply(unrolled2.array(), i);
                }
                Unrolled<T> next = unrolled2.next();
                i -= unrolled2.size();
                unrolled = next;
            }
        }

        public Object array() {
            return this.array;
        }

        public void array_$eq(Object obj) {
            this.array = obj;
        }

        public boolean bind(Unrolled<T> unrolled) {
            Predef$.MODULE$.m5971assert(next() == null);
            next_$eq(unrolled);
            return tryMergeWithNext();
        }

        public UnrolledBuffer<T> buff() {
            return this.buff;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <U> void foreach(Function1<T, U> function1) {
            Unrolled<T> unrolled = this;
            while (true) {
                Unrolled<T> unrolled2 = unrolled;
                if (unrolled2 != null) {
                    Object array = unrolled2.array();
                    int size = unrolled2.size();
                    for (int i = 0; i < size; i++) {
                        function1.apply(ScalaRunTime$.MODULE$.array_apply(array, i));
                    }
                    unrolled = unrolled2.next();
                } else {
                    return;
                }
            }
        }

        public final void insertAll(int i, Traversable<T> traversable, UnrolledBuffer<T> unrolledBuffer) {
            Unrolled<T> unrolled;
            Unrolled<T> unrolled2 = this;
            while (true) {
                unrolled = unrolled2;
                if (i < unrolled.size()) {
                    Unrolled<T> unrolled3 = new Unrolled<>(0, unrolled.evidence$1.newArray(ScalaRunTime$.MODULE$.array_length(unrolled.array())), null, unrolled.buff(), unrolled.evidence$1);
                    Array$.MODULE$.copy(unrolled.array(), i, unrolled3.array(), 0, unrolled.size() - i);
                    unrolled3.size_$eq(unrolled.size() - i);
                    unrolled3.next_$eq(unrolled.next());
                    unrolled.nullout(i, unrolled.size());
                    unrolled.size_$eq(i);
                    unrolled.next_$eq(null);
                    ObjectRef create = ObjectRef.create(unrolled);
                    traversable.foreach(new UnrolledBuffer$Unrolled$$anonfun$insertAll$1(unrolled, create));
                    ((Unrolled) create.elem).next_$eq(unrolled3);
                    if (((Unrolled) create.elem).tryMergeWithNext()) {
                        unrolledBuffer.lastPtr_$eq((Unrolled) create.elem);
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                        return;
                    }
                    if (unrolled3.next() == null) {
                        unrolledBuffer.lastPtr_$eq(unrolled3);
                    }
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                    return;
                } else if (i == unrolled.size() || unrolled.next() == null) {
                    break;
                } else {
                    Unrolled<T> next = unrolled.next();
                    i -= unrolled.size();
                    unrolled2 = next;
                }
            }
            traversable.foreach(new UnrolledBuffer$Unrolled$$anonfun$insertAll$2(unrolled, ObjectRef.create(unrolled)));
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        }

        public final Unrolled<T> locate(int i) {
            Unrolled<T> unrolled = this;
            while (true) {
                Unrolled<T> unrolled2 = unrolled;
                if (i < unrolled2.size()) {
                    return unrolled2;
                }
                Unrolled<T> next = unrolled2.next();
                i -= unrolled2.size();
                unrolled = next;
            }
        }

        public Unrolled<T> next() {
            return this.next;
        }

        public void next_$eq(Unrolled<T> unrolled) {
            this.next = unrolled;
        }

        public Unrolled<T> prepend(T t) {
            Unrolled<T> unrolled;
            if (size() < ScalaRunTime$.MODULE$.array_length(array())) {
                shiftright();
                ScalaRunTime$.MODULE$.array_update(array(), 0, t);
                size_$eq(size() + 1);
                unrolled = this;
            } else {
                Unrolled<T> unrolled2 = new Unrolled<>(buff(), this.evidence$1);
                unrolled2.append(t);
                unrolled2.next_$eq(this);
                unrolled = unrolled2;
            }
            return unrolled;
        }

        public final T remove(int i, UnrolledBuffer<T> unrolledBuffer) {
            Unrolled<T> unrolled;
            Unrolled<T> unrolled2 = this;
            while (true) {
                unrolled = unrolled2;
                if (i < unrolled.size()) {
                    break;
                }
                Unrolled<T> next = unrolled.next();
                i -= unrolled.size();
                unrolled2 = next;
            }
            T t = (T) ScalaRunTime$.MODULE$.array_apply(unrolled.array(), i);
            unrolled.shiftleft(i);
            unrolled.size_$eq(unrolled.size() - 1);
            if (unrolled.tryMergeWithNext()) {
                unrolledBuffer.lastPtr_$eq(unrolled);
            }
            return t;
        }

        public int size() {
            return this.size;
        }

        public void size_$eq(int i) {
            this.size = i;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            ArrayOps<T> genericArrayOps = Predef$.MODULE$.genericArrayOps(Predef$.MODULE$.genericArrayOps(array()).take(size()));
            StringBuilder stringBuilder2 = new StringBuilder();
            Predef$ predef$ = Predef$.MODULE$;
            return stringBuilder.append((Object) genericArrayOps.mkString(stringBuilder2.append((Object) new StringOps("Unrolled@%08x").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(System.identityHashCode(this))}))).append((Object) "[").append(BoxesRunTime.boxToInteger(size())).append((Object) "/").append(BoxesRunTime.boxToInteger(ScalaRunTime$.MODULE$.array_length(array()))).append((Object) "](").toString(), ", ", ")")).append((Object) " -> ").append((Object) (next() != null ? next().toString() : "")).toString();
        }

        public boolean tryMergeWithNext() {
            boolean z = false;
            if (next() != null) {
                z = false;
                if (size() + next().size() < (ScalaRunTime$.MODULE$.array_length(array()) * UnrolledBuffer$.MODULE$.waterline()) / UnrolledBuffer$.MODULE$.waterlineDelim()) {
                    Array$.MODULE$.copy(next().array(), 0, array(), size(), next().size());
                    size_$eq(size() + next().size());
                    next_$eq(next().next());
                    z = false;
                    if (next() == null) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final void update(int i, T t) {
            Unrolled<T> unrolled = this;
            while (true) {
                Unrolled<T> unrolled2 = unrolled;
                if (i < unrolled2.size()) {
                    ScalaRunTime$.MODULE$.array_update(unrolled2.array(), i, t);
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    return;
                }
                Unrolled<T> next = unrolled2.next();
                i -= unrolled2.size();
                unrolled = next;
            }
        }
    }

    public UnrolledBuffer(ClassTag<T> classTag) {
        this.tag = classTag;
        GenericClassTagTraversableTemplate.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
    }

    public static <T> CanBuildFrom<UnrolledBuffer<?>, T, UnrolledBuffer<T>> canBuildFrom(ClassTag<T> classTag) {
        return UnrolledBuffer$.MODULE$.canBuildFrom(classTag);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.Traversable] */
    public static Traversable empty(ClassTag classTag) {
        return UnrolledBuffer$.MODULE$.empty(classTag);
    }

    private Unrolled<T> lastptr() {
        return this.lastptr;
    }

    private void lastptr_$eq(Unrolled<T> unrolled) {
        this.lastptr = unrolled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        headPtr_$eq(newUnrolled());
        lastPtr_$eq(headPtr());
        sz_$eq(0);
        for (int i = 0; i < readInt; i++) {
            $plus$eq((UnrolledBuffer<T>) objectInputStream.readObject());
        }
    }

    private void scala$collection$mutable$UnrolledBuffer$$headptr_$eq(Unrolled<T> unrolled) {
        this.scala$collection$mutable$UnrolledBuffer$$headptr = unrolled;
    }

    /* renamed from: sz */
    private int m123sz() {
        return this.f1572sz;
    }

    private void sz_$eq(int i) {
        this.f1572sz = i;
    }

    public static int waterline() {
        return UnrolledBuffer$.MODULE$.waterline();
    }

    public static int waterlineDelim() {
        return UnrolledBuffer$.MODULE$.waterlineDelim();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(m123sz());
        foreach(new UnrolledBuffer$$anonfun$writeObject$1(this, objectOutputStream));
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable
    public UnrolledBuffer<T> $plus$eq(T t) {
        lastptr_$eq(lastptr().append(t));
        sz_$eq(m123sz() + 1);
        return this;
    }

    @Override // scala.collection.mutable.BufferLike
    public UnrolledBuffer<T> $plus$eq$colon(T t) {
        scala$collection$mutable$UnrolledBuffer$$headptr_$eq(scala$collection$mutable$UnrolledBuffer$$headptr().prepend(t));
        sz_$eq(m123sz() + 1);
        return this;
    }

    @Override // scala.collection.GenSeqLike
    public T apply(int i) {
        if (i < 0 || i >= m123sz()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        return scala$collection$mutable$UnrolledBuffer$$headptr().apply(i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public int calcNextLength(int i) {
        return i;
    }

    @Override // scala.collection.generic.GenericClassTagTraversableTemplate
    public GenericClassTagCompanion<UnrolledBuffer> classManifestCompanion() {
        return GenericClassTagTraversableTemplate.Cclass.classManifestCompanion(this);
    }

    @Override // scala.collection.generic.GenericClassTagTraversableTemplate
    public GenericClassTagCompanion<UnrolledBuffer> classTagCompanion() {
        return UnrolledBuffer$.MODULE$;
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        scala$collection$mutable$UnrolledBuffer$$headptr_$eq(newUnrolled());
        lastptr_$eq(scala$collection$mutable$UnrolledBuffer$$headptr());
        sz_$eq(0);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public UnrolledBuffer<T> clone() {
        return (UnrolledBuffer) new UnrolledBuffer(tag()).$plus$plus$eq(this);
    }

    public UnrolledBuffer<T> concat(UnrolledBuffer<T> unrolledBuffer) {
        if (!lastptr().bind(unrolledBuffer.scala$collection$mutable$UnrolledBuffer$$headptr())) {
            lastptr_$eq(unrolledBuffer.lastPtr());
        }
        sz_$eq(m123sz() + unrolledBuffer.m123sz());
        unrolledBuffer.clear();
        return this;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        scala$collection$mutable$UnrolledBuffer$$headptr().foreach(function1);
    }

    @Override // scala.collection.generic.GenericClassTagTraversableTemplate
    public <B> Builder<B, UnrolledBuffer<B>> genericClassManifestBuilder(ClassTag<B> classTag) {
        return GenericClassTagTraversableTemplate.Cclass.genericClassManifestBuilder(this, classTag);
    }

    @Override // scala.collection.generic.GenericClassTagTraversableTemplate
    public <B> Builder<B, UnrolledBuffer<B>> genericClassTagBuilder(ClassTag<B> classTag) {
        return GenericClassTagTraversableTemplate.Cclass.genericClassTagBuilder(this, classTag);
    }

    public Unrolled<T> headPtr() {
        return scala$collection$mutable$UnrolledBuffer$$headptr();
    }

    public void headPtr_$eq(Unrolled<T> unrolled) {
        scala$collection$mutable$UnrolledBuffer$$headptr_$eq(unrolled);
    }

    @Override // scala.collection.mutable.BufferLike
    public void insertAll(int i, Traversable<T> traversable) {
        if (i < 0 || i > m123sz()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        scala$collection$mutable$UnrolledBuffer$$headptr().insertAll(i, traversable, this);
        sz_$eq(m123sz() + traversable.size());
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<T> iterator() {
        return new AbstractIterator<T>(this) { // from class: scala.collection.mutable.UnrolledBuffer$$anon$1
            private UnrolledBuffer.Unrolled<T> node;
            private int pos = -1;

            {
                this.node = this.scala$collection$mutable$UnrolledBuffer$$headptr();
                scan();
            }

            private UnrolledBuffer.Unrolled<T> node() {
                return this.node;
            }

            private void node_$eq(UnrolledBuffer.Unrolled<T> unrolled) {
                this.node = unrolled;
            }

            private int pos() {
                return this.pos;
            }

            private void pos_$eq(int i) {
                this.pos = i;
            }

            private void scan() {
                pos_$eq(pos() + 1);
                while (pos() >= node().size()) {
                    pos_$eq(0);
                    node_$eq(node().next());
                    if (node() == null) {
                        return;
                    }
                }
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return node() != null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public T next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = ScalaRunTime$.MODULE$.array_apply(node().array(), pos());
                    scan();
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    public Unrolled<T> lastPtr() {
        return lastptr();
    }

    public void lastPtr_$eq(Unrolled<T> unrolled) {
        lastptr_$eq(unrolled);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return m123sz();
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<T, NewTo> mapResult(Function1<UnrolledBuffer<T>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public UnrolledBuffer<T> newBuilder() {
        return new UnrolledBuffer<>(tag());
    }

    public Unrolled<T> newUnrolled() {
        return new Unrolled<>(this, tag());
    }

    @Override // scala.collection.mutable.BufferLike
    public T remove(int i) {
        if (i < 0 || i >= m123sz()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        sz_$eq(m123sz() - 1);
        return scala$collection$mutable$UnrolledBuffer$$headptr().remove(i, this);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.Builder
    public UnrolledBuffer<T> result() {
        return this;
    }

    public Unrolled<T> scala$collection$mutable$UnrolledBuffer$$headptr() {
        return this.scala$collection$mutable$UnrolledBuffer$$headptr;
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    public void size_$eq(int i) {
        sz_$eq(i);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "UnrolledBuffer";
    }

    @Override // scala.collection.generic.GenericClassTagTraversableTemplate
    public ClassTag<T> tag() {
        return this.tag;
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, T t) {
        if (i < 0 || i >= m123sz()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        scala$collection$mutable$UnrolledBuffer$$headptr().update(i, t);
    }
}
