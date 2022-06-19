package scala.collection.mutable;

import scala.Array$;
import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u0015mc!B\u0001\u0003\u0003\u0003I!\u0001D!se\u0006L()^5mI\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\u000b\u0014\t\u0001Yq\"\t\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0012'yi\u0011AA\u0005\u0003%\t\u0011qAQ;jY\u0012,'\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!\u0001+\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004\u0019}\u0019\u0012B\u0001\u0011\u0007\u0005\u0015\t%O]1z!\ta!%\u0003\u0002$\r\ta1+\u001a:jC2L'0\u00192mK\")Q\u0005\u0001C\u0001M\u00051A(\u001b8jiz\"\u0012a\n\t\u0004!\u0001\u0019r!B\u0015\u0003\u0011\u0003Q\u0013\u0001D!se\u0006L()^5mI\u0016\u0014\bC\u0001\t,\r\u0015\t!\u0001#\u0001-'\rY3\"\t\u0005\u0006K-\"\tA\f\u000b\u0002U!)\u0001g\u000bC\u0001c\u0005!Q.Y6f+\t\u0011d\u0007F\u00014)\t!t\u0007E\u0002\u0011\u0001U\u0002\"\u0001\u0006\u001c\u0005\u000bYy#\u0019A\f\t\u000faz\u0013\u0011!a\u0002s\u0005QQM^5eK:\u001cW\rJ\u0019\u0011\u0007ijT'D\u0001<\u0015\tad!A\u0004sK\u001adWm\u0019;\n\u0005yZ$\u0001C\"mCN\u001cH+Y4\u0007\t\u0001[\u0003!\u0011\u0002\u0006_\u001a\u0014VMZ\u000b\u0003\u0005\u0016\u001b\"aP\"\u0011\u0007A\u0001A\t\u0005\u0002\u0015\u000b\u0012)ac\u0010b\u0001\rF\u0011\u0001d\u0003\u0005\t\u0011~\u0012\u0019\u0011)A\u0006\u0013\u0006QQM^5eK:\u001cW\r\n\u001a\u0011\u0007ijD\tC\u0003&\u007f\u0011\u00051\nF\u0001M)\tiu\nE\u0002O\u007f\u0011k\u0011a\u000b\u0005\u0006\u0011*\u0003\u001d!\u0013\u0005\n#~\u0002\r\u00111A\u0005\nI\u000bQ!\u001a7f[N,\u0012a\u0015\t\u0004\u0019}!\u0005\"C+@\u0001\u0004\u0005\r\u0011\"\u0003W\u0003%)G.Z7t?\u0012*\u0017\u000f\u0006\u0002X5B\u0011A\u0002W\u0005\u00033\u001a\u0011A!\u00168ji\"91\fVA\u0001\u0002\u0004\u0019\u0016a\u0001=%c!1Ql\u0010Q!\nM\u000ba!\u001a7f[N\u0004\u0003bB0@\u0001\u0004%I\u0001Y\u0001\tG\u0006\u0004\u0018mY5usV\t\u0011\r\u0005\u0002\rE&\u00111M\u0002\u0002\u0004\u0013:$\bbB3@\u0001\u0004%IAZ\u0001\rG\u0006\u0004\u0018mY5us~#S-\u001d\u000b\u0003/\u001eDqa\u00173\u0002\u0002\u0003\u0007\u0011\r\u0003\u0004j\u007f\u0001\u0006K!Y\u0001\nG\u0006\u0004\u0018mY5us\u0002Bqa[ A\u0002\u0013%\u0001-\u0001\u0003tSj,\u0007bB7@\u0001\u0004%IA\\\u0001\tg&TXm\u0018\u0013fcR\u0011qk\u001c\u0005\b72\f\t\u00111\u0001b\u0011\u0019\tx\b)Q\u0005C\u0006)1/\u001b>fA!)1o\u0010C\u0005i\u00069Qn[!se\u0006LHCA*v\u0011\u0015Y'\u000f1\u0001b\u0011\u00159x\b\"\u0003y\u0003\u0019\u0011Xm]5{KR\u0011q+\u001f\u0005\u0006WZ\u0004\r!\u0019\u0005\u0006w~\"\t\u0005`\u0001\tg&TX\rS5oiR\u0011q+ \u0005\u0006Wj\u0004\r!\u0019\u0005\u0007\u007f~\"I!!\u0001\u0002\u0015\u0015t7/\u001e:f'&TX\rF\u0002X\u0003\u0007AQa\u001b@A\u0002\u0005Dq!a\u0002@\t\u0003\tI!\u0001\u0005%a2,8\u000fJ3r)\u0011\tY!!\u0004\u000e\u0003}Bq!a\u0004\u0002\u0006\u0001\u0007A)\u0001\u0003fY\u0016l\u0007bBA\n\u007f\u0011\u0005\u0013QC\u0001\u000eIAdWo\u001d\u0013qYV\u001cH%Z9\u0015\t\u0005-\u0011q\u0003\u0005\t\u00033\t\t\u00021\u0001\u0002\u001c\u0005\u0011\u0001p\u001d\t\u0006\u0003;\ty\u0002R\u0007\u0002\t%\u0019\u0011\u0011\u0005\u0003\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016Dq!!\n@\t\u0003\t9#A\u0003dY\u0016\f'\u000fF\u0001X\u0011\u001d\tYc\u0010C\u0001\u0003[\taA]3tk2$H#A*\t\u000f\u0005Er\b\"\u0011\u00024\u00051Q-];bYN$B!!\u000e\u0002<A\u0019A\"a\u000e\n\u0007\u0005ebAA\u0004C_>dW-\u00198\t\u000f\u0005u\u0012q\u0006a\u00017\u0005)q\u000e\u001e5fe\"9\u0011\u0011I \u0005B\u0005\r\u0013\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005\u0015\u0003\u0003BA$\u0003#j!!!\u0013\u000b\t\u0005-\u0013QJ\u0001\u0005Y\u0006twM\u0003\u0002\u0002P\u0005!!.\u0019<b\u0013\u0011\t\u0019&!\u0013\u0003\rM#(/\u001b8hQ\u001dy\u0014qKA/\u0003C\u00022\u0001DA-\u0013\r\tYF\u0002\u0002\u0016I\u0016\u0004(/Z2bi\u0016$\u0017J\u001c5fe&$\u0018M\\2fC\t\ty&\u0001(BeJ\f\u0017PQ;jY\u0012,'OL8g%\u00164\u0007%[:!C:\u0004\u0013N\u001c;fe:\fG\u000eI5na2,W.\u001a8uCRLwN\u001c\u0011o_R\u0004\u0013N\u001c;f]\u0012,G\r\t4pe\u0002\u001aXOY2mCN\u001c\u0018N\\4/C\t\t\u0019'\u0001\u00043]E\nd\u0006\r\u0004\u0007\u0003OZ\u0003!!\u001b\u0003\r=4')\u001f;f'\u0011\t)'a\u001b\u0011\tA\u0001\u0011Q\u000e\t\u0004\u0019\u0005=\u0014bAA9\r\t!!)\u001f;f\u0011\u001d)\u0013Q\rC\u0001\u0003k\"\"!a\u001e\u0011\u00079\u000b)\u0007C\u0006R\u0003K\u0002\r\u00111A\u0005\n\u0005mTCAA?!\u0011aq$!\u001c\t\u0017U\u000b)\u00071AA\u0002\u0013%\u0011\u0011\u0011\u000b\u0004/\u0006\r\u0005\"C.\u0002��\u0005\u0005\t\u0019AA?\u0011!i\u0016Q\rQ!\n\u0005u\u0004\u0002C0\u0002f\u0001\u0007I\u0011\u00021\t\u0013\u0015\f)\u00071A\u0005\n\u0005-EcA,\u0002\u000e\"A1,!#\u0002\u0002\u0003\u0007\u0011\rC\u0004j\u0003K\u0002\u000b\u0015B1\t\u0011-\f)\u00071A\u0005\n\u0001D\u0011\"\\A3\u0001\u0004%I!!&\u0015\u0007]\u000b9\n\u0003\u0005\\\u0003'\u000b\t\u00111\u0001b\u0011\u001d\t\u0018Q\rQ!\n\u0005Dqa]A3\t\u0013\ti\n\u0006\u0003\u0002~\u0005}\u0005BB6\u0002\u001c\u0002\u0007\u0011\rC\u0004x\u0003K\"I!a)\u0015\u0007]\u000b)\u000b\u0003\u0004l\u0003C\u0003\r!\u0019\u0005\bw\u0006\u0015D\u0011IAU)\r9\u00161\u0016\u0005\u0007W\u0006\u001d\u0006\u0019A1\t\u000f}\f)\u0007\"\u0003\u00020R\u0019q+!-\t\r-\fi\u000b1\u0001b\u0011!\t9!!\u001a\u0005\u0002\u0005UF\u0003BA\\\u0003sk!!!\u001a\t\u0011\u0005=\u00111\u0017a\u0001\u0003[B\u0001\"a\u0005\u0002f\u0011\u0005\u0013Q\u0018\u000b\u0005\u0003o\u000by\f\u0003\u0005\u0002\u001a\u0005m\u0006\u0019AAa!\u0019\ti\"a\b\u0002n!A\u0011QEA3\t\u0003\t9\u0003\u0003\u0005\u0002,\u0005\u0015D\u0011AAd)\t\ti\b\u0003\u0005\u00022\u0005\u0015D\u0011IAf)\u0011\t)$!4\t\u000f\u0005u\u0012\u0011\u001aa\u00017!A\u0011\u0011IA3\t\u0003\n\u0019\u0005\u000b\u0005\u0002f\u0005]\u00131[A1C\t\t).A(BeJ\f\u0017PQ;jY\u0012,'OL8g\u0005f$X\rI5tA\u0005t\u0007%\u001b8uKJt\u0017\r\u001c\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!]>$\b%\u001b8uK:$W\r\u001a\u0011g_J\u00043/\u001e2dY\u0006\u001c8/\u001b8h]\u00191\u0011\u0011\\\u0016\u0001\u00037\u0014qa\u001c4TQ>\u0014Ho\u0005\u0003\u0002X\u0006u\u0007\u0003\u0002\t\u0001\u0003?\u00042\u0001DAq\u0013\r\t\u0019O\u0002\u0002\u0006'\"|'\u000f\u001e\u0005\bK\u0005]G\u0011AAt)\t\tI\u000fE\u0002O\u0003/D1\"UAl\u0001\u0004\u0005\r\u0011\"\u0003\u0002nV\u0011\u0011q\u001e\t\u0005\u0019}\ty\u000eC\u0006V\u0003/\u0004\r\u00111A\u0005\n\u0005MHcA,\u0002v\"I1,!=\u0002\u0002\u0003\u0007\u0011q\u001e\u0005\t;\u0006]\u0007\u0015)\u0003\u0002p\"Aq,a6A\u0002\u0013%\u0001\rC\u0005f\u0003/\u0004\r\u0011\"\u0003\u0002~R\u0019q+a@\t\u0011m\u000bY0!AA\u0002\u0005Dq![AlA\u0003&\u0011\r\u0003\u0005l\u0003/\u0004\r\u0011\"\u0003a\u0011%i\u0017q\u001ba\u0001\n\u0013\u00119\u0001F\u0002X\u0005\u0013A\u0001b\u0017B\u0003\u0003\u0003\u0005\r!\u0019\u0005\bc\u0006]\u0007\u0015)\u0003b\u0011\u001d\u0019\u0018q\u001bC\u0005\u0005\u001f!B!a<\u0003\u0012!11N!\u0004A\u0002\u0005Dqa^Al\t\u0013\u0011)\u0002F\u0002X\u0005/Aaa\u001bB\n\u0001\u0004\t\u0007bB>\u0002X\u0012\u0005#1\u0004\u000b\u0004/\nu\u0001BB6\u0003\u001a\u0001\u0007\u0011\rC\u0004��\u0003/$IA!\t\u0015\u0007]\u0013\u0019\u0003\u0003\u0004l\u0005?\u0001\r!\u0019\u0005\t\u0003\u000f\t9\u000e\"\u0001\u0003(Q!!\u0011\u0006B\u0016\u001b\t\t9\u000e\u0003\u0005\u0002\u0010\t\u0015\u0002\u0019AAp\u0011!\t\u0019\"a6\u0005B\t=B\u0003\u0002B\u0015\u0005cA\u0001\"!\u0007\u0003.\u0001\u0007!1\u0007\t\u0007\u0003;\ty\"a8\t\u0011\u0005\u0015\u0012q\u001bC\u0001\u0003OA\u0001\"a\u000b\u0002X\u0012\u0005!\u0011\b\u000b\u0003\u0003_D\u0001\"!\r\u0002X\u0012\u0005#Q\b\u000b\u0005\u0003k\u0011y\u0004C\u0004\u0002>\tm\u0002\u0019A\u000e\t\u0011\u0005\u0005\u0013q\u001bC!\u0003\u0007B\u0003\"a6\u0002X\t\u0015\u0013\u0011M\u0011\u0003\u0005\u000f\n\u0001+\u0011:sCf\u0014U/\u001b7eKJtsNZ*i_J$\b%[:!C:\u0004\u0013N\u001c;fe:\fG\u000eI5na2,W.\u001a8uCRLwN\u001c\u0011o_R\u0004\u0013N\u001c;f]\u0012,G\r\t4pe\u0002\u001aXOY2mCN\u001c\u0018N\\4/\r\u0019\u0011Ye\u000b\u0001\u0003N\t1qNZ\"iCJ\u001cBA!\u0013\u0003PA!\u0001\u0003\u0001B)!\ra!1K\u0005\u0004\u0005+2!\u0001B\"iCJDq!\nB%\t\u0003\u0011I\u0006\u0006\u0002\u0003\\A\u0019aJ!\u0013\t\u0017E\u0013I\u00051AA\u0002\u0013%!qL\u000b\u0003\u0005C\u0002B\u0001D\u0010\u0003R!YQK!\u0013A\u0002\u0003\u0007I\u0011\u0002B3)\r9&q\r\u0005\n7\n\r\u0014\u0011!a\u0001\u0005CB\u0001\"\u0018B%A\u0003&!\u0011\r\u0005\t?\n%\u0003\u0019!C\u0005A\"IQM!\u0013A\u0002\u0013%!q\u000e\u000b\u0004/\nE\u0004\u0002C.\u0003n\u0005\u0005\t\u0019A1\t\u000f%\u0014I\u0005)Q\u0005C\"A1N!\u0013A\u0002\u0013%\u0001\rC\u0005n\u0005\u0013\u0002\r\u0011\"\u0003\u0003zQ\u0019qKa\u001f\t\u0011m\u00139(!AA\u0002\u0005Dq!\u001dB%A\u0003&\u0011\rC\u0004t\u0005\u0013\"IA!!\u0015\t\t\u0005$1\u0011\u0005\u0007W\n}\u0004\u0019A1\t\u000f]\u0014I\u0005\"\u0003\u0003\bR\u0019qK!#\t\r-\u0014)\t1\u0001b\u0011\u001dY(\u0011\nC!\u0005\u001b#2a\u0016BH\u0011\u0019Y'1\u0012a\u0001C\"9qP!\u0013\u0005\n\tMEcA,\u0003\u0016\"11N!%A\u0002\u0005D\u0001\"a\u0002\u0003J\u0011\u0005!\u0011\u0014\u000b\u0005\u00057\u0013i*\u0004\u0002\u0003J!A\u0011q\u0002BL\u0001\u0004\u0011\t\u0006\u0003\u0005\u0002\u0014\t%C\u0011\tBQ)\u0011\u0011YJa)\t\u0011\u0005e!q\u0014a\u0001\u0005K\u0003b!!\b\u0002 \tE\u0003\u0002CA\u0013\u0005\u0013\"\t!a\n\t\u0011\u0005-\"\u0011\nC\u0001\u0005W#\"A!\u0019\t\u0011\u0005E\"\u0011\nC!\u0005_#B!!\u000e\u00032\"9\u0011Q\bBW\u0001\u0004Y\u0002\u0002CA!\u0005\u0013\"\t%a\u0011)\u0011\t%\u0013q\u000bB\\\u0003C\n#A!/\u0002\u001f\u0006\u0013(/Y=Ck&dG-\u001a:/_\u001a\u001c\u0005.\u0019:!SN\u0004\u0013M\u001c\u0011j]R,'O\\1mA%l\u0007\u000f\\3nK:$\u0018\r^5p]\u0002rw\u000e\u001e\u0011j]R,g\u000eZ3eA\u0019|'\u000fI:vE\u000ed\u0017m]:j]\u001etcA\u0002B_W\u0001\u0011yLA\u0003pM&sGo\u0005\u0003\u0003<\n\u0005\u0007c\u0001\t\u0001C\"9QEa/\u0005\u0002\t\u0015GC\u0001Bd!\rq%1\u0018\u0005\f#\nm\u0006\u0019!a\u0001\n\u0013\u0011Y-\u0006\u0002\u0003NB\u0019AbH1\t\u0017U\u0013Y\f1AA\u0002\u0013%!\u0011\u001b\u000b\u0004/\nM\u0007\"C.\u0003P\u0006\u0005\t\u0019\u0001Bg\u0011!i&1\u0018Q!\n\t5\u0007\u0002C0\u0003<\u0002\u0007I\u0011\u00021\t\u0013\u0015\u0014Y\f1A\u0005\n\tmGcA,\u0003^\"A1L!7\u0002\u0002\u0003\u0007\u0011\rC\u0004j\u0005w\u0003\u000b\u0015B1\t\u0011-\u0014Y\f1A\u0005\n\u0001D\u0011\"\u001cB^\u0001\u0004%IA!:\u0015\u0007]\u00139\u000f\u0003\u0005\\\u0005G\f\t\u00111\u0001b\u0011\u001d\t(1\u0018Q!\n\u0005Dqa\u001dB^\t\u0013\u0011i\u000f\u0006\u0003\u0003N\n=\bBB6\u0003l\u0002\u0007\u0011\rC\u0004x\u0005w#IAa=\u0015\u0007]\u0013)\u0010\u0003\u0004l\u0005c\u0004\r!\u0019\u0005\bw\nmF\u0011\tB})\r9&1 \u0005\u0007W\n]\b\u0019A1\t\u000f}\u0014Y\f\"\u0003\u0003��R\u0019qk!\u0001\t\r-\u0014i\u00101\u0001b\u0011!\t9Aa/\u0005\u0002\r\u0015A\u0003BB\u0004\u0007\u0013i!Aa/\t\u000f\u0005=11\u0001a\u0001C\"A\u00111\u0003B^\t\u0003\u001ai\u0001\u0006\u0003\u0004\b\r=\u0001\u0002CA\r\u0007\u0017\u0001\ra!\u0005\u0011\u000b\u0005u\u0011qD1\t\u0011\u0005\u0015\"1\u0018C\u0001\u0003OA\u0001\"a\u000b\u0003<\u0012\u00051q\u0003\u000b\u0003\u0005\u001bD\u0001\"!\r\u0003<\u0012\u000531\u0004\u000b\u0005\u0003k\u0019i\u0002C\u0004\u0002>\re\u0001\u0019A\u000e\t\u0011\u0005\u0005#1\u0018C!\u0003\u0007B\u0003Ba/\u0002X\r\r\u0012\u0011M\u0011\u0003\u0007K\ta*\u0011:sCf\u0014U/\u001b7eKJtsNZ%oi\u0002J7\u000fI1oA%tG/\u001a:oC2\u0004\u0013.\u001c9mK6,g\u000e^1uS>t\u0007E\\8uA%tG/\u001a8eK\u0012\u0004cm\u001c:!gV\u00147\r\\1tg&twM\f\u0004\u0007\u0007SY\u0003aa\u000b\u0003\r=4Gj\u001c8h'\u0011\u00199c!\f\u0011\tA\u00011q\u0006\t\u0004\u0019\rE\u0012bAB\u001a\r\t!Aj\u001c8h\u0011\u001d)3q\u0005C\u0001\u0007o!\"a!\u000f\u0011\u00079\u001b9\u0003C\u0006R\u0007O\u0001\r\u00111A\u0005\n\ruRCAB !\u0011aqda\f\t\u0017U\u001b9\u00031AA\u0002\u0013%11\t\u000b\u0004/\u000e\u0015\u0003\"C.\u0004B\u0005\u0005\t\u0019AB \u0011!i6q\u0005Q!\n\r}\u0002\u0002C0\u0004(\u0001\u0007I\u0011\u00021\t\u0013\u0015\u001c9\u00031A\u0005\n\r5CcA,\u0004P!A1la\u0013\u0002\u0002\u0003\u0007\u0011\rC\u0004j\u0007O\u0001\u000b\u0015B1\t\u0011-\u001c9\u00031A\u0005\n\u0001D\u0011\"\\B\u0014\u0001\u0004%Iaa\u0016\u0015\u0007]\u001bI\u0006\u0003\u0005\\\u0007+\n\t\u00111\u0001b\u0011\u001d\t8q\u0005Q!\n\u0005Dqa]B\u0014\t\u0013\u0019y\u0006\u0006\u0003\u0004@\r\u0005\u0004BB6\u0004^\u0001\u0007\u0011\rC\u0004x\u0007O!Ia!\u001a\u0015\u0007]\u001b9\u0007\u0003\u0004l\u0007G\u0002\r!\u0019\u0005\bw\u000e\u001dB\u0011IB6)\r96Q\u000e\u0005\u0007W\u000e%\u0004\u0019A1\t\u000f}\u001c9\u0003\"\u0003\u0004rQ\u0019qka\u001d\t\r-\u001cy\u00071\u0001b\u0011!\t9aa\n\u0005\u0002\r]D\u0003BB=\u0007wj!aa\n\t\u0011\u0005=1Q\u000fa\u0001\u0007_A\u0001\"a\u0005\u0004(\u0011\u00053q\u0010\u000b\u0005\u0007s\u001a\t\t\u0003\u0005\u0002\u001a\ru\u0004\u0019ABB!\u0019\ti\"a\b\u00040!A\u0011QEB\u0014\t\u0003\t9\u0003\u0003\u0005\u0002,\r\u001dB\u0011ABE)\t\u0019y\u0004\u0003\u0005\u00022\r\u001dB\u0011IBG)\u0011\t)da$\t\u000f\u0005u21\u0012a\u00017!A\u0011\u0011IB\u0014\t\u0003\n\u0019\u0005\u000b\u0005\u0004(\u0005]3QSA1C\t\u00199*A(BeJ\f\u0017PQ;jY\u0012,'OL8g\u0019>tw\rI5tA\u0005t\u0007%\u001b8uKJt\u0017\r\u001c\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!]>$\b%\u001b8uK:$W\r\u001a\u0011g_J\u00043/\u001e2dY\u0006\u001c8/\u001b8h]\u0019111T\u0016\u0001\u0007;\u0013qa\u001c4GY>\fGo\u0005\u0003\u0004\u001a\u000e}\u0005\u0003\u0002\t\u0001\u0007C\u00032\u0001DBR\u0013\r\u0019)K\u0002\u0002\u0006\r2|\u0017\r\u001e\u0005\bK\reE\u0011ABU)\t\u0019Y\u000bE\u0002O\u00073C1\"UBM\u0001\u0004\u0005\r\u0011\"\u0003\u00040V\u00111\u0011\u0017\t\u0005\u0019}\u0019\t\u000bC\u0006V\u00073\u0003\r\u00111A\u0005\n\rUFcA,\u00048\"I1la-\u0002\u0002\u0003\u00071\u0011\u0017\u0005\t;\u000ee\u0005\u0015)\u0003\u00042\"Aql!'A\u0002\u0013%\u0001\rC\u0005f\u00073\u0003\r\u0011\"\u0003\u0004@R\u0019qk!1\t\u0011m\u001bi,!AA\u0002\u0005Dq![BMA\u0003&\u0011\r\u0003\u0005l\u00073\u0003\r\u0011\"\u0003a\u0011%i7\u0011\u0014a\u0001\n\u0013\u0019I\rF\u0002X\u0007\u0017D\u0001bWBd\u0003\u0003\u0005\r!\u0019\u0005\bc\u000ee\u0005\u0015)\u0003b\u0011\u001d\u00198\u0011\u0014C\u0005\u0007#$Ba!-\u0004T\"11na4A\u0002\u0005Dqa^BM\t\u0013\u00199\u000eF\u0002X\u00073Daa[Bk\u0001\u0004\t\u0007bB>\u0004\u001a\u0012\u00053Q\u001c\u000b\u0004/\u000e}\u0007BB6\u0004\\\u0002\u0007\u0011\rC\u0004��\u00073#Iaa9\u0015\u0007]\u001b)\u000f\u0003\u0004l\u0007C\u0004\r!\u0019\u0005\t\u0003\u000f\u0019I\n\"\u0001\u0004jR!11^Bw\u001b\t\u0019I\n\u0003\u0005\u0002\u0010\r\u001d\b\u0019ABQ\u0011!\t\u0019b!'\u0005B\rEH\u0003BBv\u0007gD\u0001\"!\u0007\u0004p\u0002\u00071Q\u001f\t\u0007\u0003;\tyb!)\t\u0011\u0005\u00152\u0011\u0014C\u0001\u0003OA\u0001\"a\u000b\u0004\u001a\u0012\u000511 \u000b\u0003\u0007cC\u0001\"!\r\u0004\u001a\u0012\u00053q \u000b\u0005\u0003k!\t\u0001C\u0004\u0002>\ru\b\u0019A\u000e\t\u0011\u0005\u00053\u0011\u0014C!\u0003\u0007B\u0003b!'\u0002X\u0011\u001d\u0011\u0011M\u0011\u0003\t\u0013\t\u0001+\u0011:sCf\u0014U/\u001b7eKJtsN\u001a$m_\u0006$\b%[:!C:\u0004\u0013N\u001c;fe:\fG\u000eI5na2,W.\u001a8uCRLwN\u001c\u0011o_R\u0004\u0013N\u001c;f]\u0012,G\r\t4pe\u0002\u001aXOY2mCN\u001c\u0018N\\4/\r\u0019!ia\u000b\u0001\u0005\u0010\tAqN\u001a#pk\ndWm\u0005\u0003\u0005\f\u0011E\u0001\u0003\u0002\t\u0001\t'\u00012\u0001\u0004C\u000b\u0013\r!9B\u0002\u0002\u0007\t>,(\r\\3\t\u000f\u0015\"Y\u0001\"\u0001\u0005\u001cQ\u0011AQ\u0004\t\u0004\u001d\u0012-\u0001bC)\u0005\f\u0001\u0007\t\u0019!C\u0005\tC)\"\u0001b\t\u0011\t1yB1\u0003\u0005\f+\u0012-\u0001\u0019!a\u0001\n\u0013!9\u0003F\u0002X\tSA\u0011b\u0017C\u0013\u0003\u0003\u0005\r\u0001b\t\t\u0011u#Y\u0001)Q\u0005\tGA\u0001b\u0018C\u0006\u0001\u0004%I\u0001\u0019\u0005\nK\u0012-\u0001\u0019!C\u0005\tc!2a\u0016C\u001a\u0011!YFqFA\u0001\u0002\u0004\t\u0007bB5\u0005\f\u0001\u0006K!\u0019\u0005\tW\u0012-\u0001\u0019!C\u0005A\"IQ\u000eb\u0003A\u0002\u0013%A1\b\u000b\u0004/\u0012u\u0002\u0002C.\u0005:\u0005\u0005\t\u0019A1\t\u000fE$Y\u0001)Q\u0005C\"91\u000fb\u0003\u0005\n\u0011\rC\u0003\u0002C\u0012\t\u000bBaa\u001bC!\u0001\u0004\t\u0007bB<\u0005\f\u0011%A\u0011\n\u000b\u0004/\u0012-\u0003BB6\u0005H\u0001\u0007\u0011\rC\u0004|\t\u0017!\t\u0005b\u0014\u0015\u0007]#\t\u0006\u0003\u0004l\t\u001b\u0002\r!\u0019\u0005\b\u007f\u0012-A\u0011\u0002C+)\r9Fq\u000b\u0005\u0007W\u0012M\u0003\u0019A1\t\u0011\u0005\u001dA1\u0002C\u0001\t7\"B\u0001\"\u0018\u0005`5\u0011A1\u0002\u0005\t\u0003\u001f!I\u00061\u0001\u0005\u0014!A\u00111\u0003C\u0006\t\u0003\"\u0019\u0007\u0006\u0003\u0005^\u0011\u0015\u0004\u0002CA\r\tC\u0002\r\u0001b\u001a\u0011\r\u0005u\u0011q\u0004C\n\u0011!\t)\u0003b\u0003\u0005\u0002\u0005\u001d\u0002\u0002CA\u0016\t\u0017!\t\u0001\"\u001c\u0015\u0005\u0011\r\u0002\u0002CA\u0019\t\u0017!\t\u0005\"\u001d\u0015\t\u0005UB1\u000f\u0005\b\u0003{!y\u00071\u0001\u001c\u0011!\t\t\u0005b\u0003\u0005B\u0005\r\u0003\u0006\u0003C\u0006\u0003/\"I(!\u0019\"\u0005\u0011m\u0014!U!se\u0006L()^5mI\u0016\u0014hf\u001c4E_V\u0014G.\u001a\u0011jg\u0002\ng\u000eI5oi\u0016\u0014h.\u00197!S6\u0004H.Z7f]R\fG/[8oA9|G\u000fI5oi\u0016tG-\u001a3!M>\u0014\be];cG2\f7o]5oO:2a\u0001b ,\u0001\u0011\u0005%!C8g\u0005>|G.Z1o'\u0011!i\bb!\u0011\tA\u0001\u0011Q\u0007\u0005\bK\u0011uD\u0011\u0001CD)\t!I\tE\u0002O\t{B1\"\u0015C?\u0001\u0004\u0005\r\u0011\"\u0003\u0005\u000eV\u0011Aq\u0012\t\u0005\u0019}\t)\u0004C\u0006V\t{\u0002\r\u00111A\u0005\n\u0011MEcA,\u0005\u0016\"I1\f\"%\u0002\u0002\u0003\u0007Aq\u0012\u0005\t;\u0012u\u0004\u0015)\u0003\u0005\u0010\"Aq\f\" A\u0002\u0013%\u0001\rC\u0005f\t{\u0002\r\u0011\"\u0003\u0005\u001eR\u0019q\u000bb(\t\u0011m#Y*!AA\u0002\u0005Dq!\u001bC?A\u0003&\u0011\r\u0003\u0005l\t{\u0002\r\u0011\"\u0003a\u0011%iGQ\u0010a\u0001\n\u0013!9\u000bF\u0002X\tSC\u0001b\u0017CS\u0003\u0003\u0005\r!\u0019\u0005\bc\u0012u\u0004\u0015)\u0003b\u0011\u001d\u0019HQ\u0010C\u0005\t_#B\u0001b$\u00052\"11\u000e\",A\u0002\u0005Dqa\u001eC?\t\u0013!)\fF\u0002X\toCaa\u001bCZ\u0001\u0004\t\u0007bB>\u0005~\u0011\u0005C1\u0018\u000b\u0004/\u0012u\u0006BB6\u0005:\u0002\u0007\u0011\rC\u0004��\t{\"I\u0001\"1\u0015\u0007]#\u0019\r\u0003\u0004l\t\u007f\u0003\r!\u0019\u0005\t\u0003\u000f!i\b\"\u0001\u0005HR!A\u0011\u001aCf\u001b\t!i\b\u0003\u0005\u0002\u0010\u0011\u0015\u0007\u0019AA\u001b\u0011!\t\u0019\u0002\" \u0005B\u0011=G\u0003\u0002Ce\t#D\u0001\"!\u0007\u0005N\u0002\u0007A1\u001b\t\u0007\u0003;\ty\"!\u000e\t\u0011\u0005\u0015BQ\u0010C\u0001\u0003OA\u0001\"a\u000b\u0005~\u0011\u0005A\u0011\u001c\u000b\u0003\t\u001fC\u0001\"!\r\u0005~\u0011\u0005CQ\u001c\u000b\u0005\u0003k!y\u000eC\u0004\u0002>\u0011m\u0007\u0019A\u000e\t\u0011\u0005\u0005CQ\u0010C!\u0003\u00072a\u0001\":,\u0001\u0011\u001d(AB8g+:LGo\u0005\u0003\u0005d\u0012%\bc\u0001\t\u0001/\"9Q\u0005b9\u0005\u0002\u00115HC\u0001Cx!\rqE1\u001d\u0005\f#\u0012\r\b\u0019!a\u0001\n\u0013!\u00190\u0006\u0002\u0005vB\u0019AbH,\t\u0017U#\u0019\u000f1AA\u0002\u0013%A\u0011 \u000b\u0004/\u0012m\b\"C.\u0005x\u0006\u0005\t\u0019\u0001C{\u0011!iF1\u001dQ!\n\u0011U\b\u0002C0\u0005d\u0002\u0007I\u0011\u00021\t\u0013\u0015$\u0019\u000f1A\u0005\n\u0015\rAcA,\u0006\u0006!A1,\"\u0001\u0002\u0002\u0003\u0007\u0011\rC\u0004j\tG\u0004\u000b\u0015B1\t\u0011-$\u0019\u000f1A\u0005\n\u0001D\u0011\"\u001cCr\u0001\u0004%I!\"\u0004\u0015\u0007]+y\u0001\u0003\u0005\\\u000b\u0017\t\t\u00111\u0001b\u0011\u001d\tH1\u001dQ!\n\u0005Dqa\u001dCr\t\u0013))\u0002\u0006\u0003\u0005v\u0016]\u0001BB6\u0006\u0014\u0001\u0007\u0011\rC\u0004x\tG$I!b\u0007\u0015\u0007]+i\u0002\u0003\u0004l\u000b3\u0001\r!\u0019\u0005\bw\u0012\rH\u0011IC\u0011)\r9V1\u0005\u0005\u0007W\u0016}\u0001\u0019A1\t\u000f}$\u0019\u000f\"\u0003\u0006(Q\u0019q+\"\u000b\t\r-,)\u00031\u0001b\u0011!\t9\u0001b9\u0005\u0002\u00155B\u0003BC\u0018\u000bci!\u0001b9\t\u000f\u0005=Q1\u0006a\u0001/\"A\u00111\u0003Cr\t\u0003*)\u0004\u0006\u0003\u00060\u0015]\u0002\u0002CA\r\u000bg\u0001\r!\"\u000f\u0011\u000b\u0005u\u0011qD,\t\u0011\u0005\u0015B1\u001dC\u0001\u0003OA\u0001\"a\u000b\u0005d\u0012\u0005Qq\b\u000b\u0003\tkD\u0001\"!\r\u0005d\u0012\u0005S1\t\u000b\u0005\u0003k))\u0005C\u0004\u0002>\u0015\u0005\u0003\u0019A\u000e\t\u0011\u0005\u0005C1\u001dC!\u0003\u0007B\u0003\u0002b9\u0002X\u0015-\u0013\u0011M\u0011\u0003\u000b\u001b\nq*\u0011:sCf\u0014U/\u001b7eKJtsNZ+oSR\u0004\u0013n\u001d\u0011b]\u0002Jg\u000e^3s]\u0006d\u0007%[7qY\u0016lWM\u001c;bi&|g\u000e\t8pi\u0002Jg\u000e^3oI\u0016$\u0007EZ8sAM,(m\u00197bgNLgn\u001a\u0018\t\u0013\u0015E3&!A\u0005\n\u0015M\u0013a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!\"\u0016\u0011\t\u0005\u001dSqK\u0005\u0005\u000b3\nIE\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder.class */
public abstract class ArrayBuilder<T> implements Builder<T, Object>, Serializable {

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofBoolean.class */
    public static class ofBoolean extends ArrayBuilder<Object> {
        private boolean[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private boolean[] elems() {
            return this.elems;
        }

        private void elems_$eq(boolean[] zArr) {
            this.elems = zArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofBoolean.ensureSize(int):void");
        }

        private boolean[] mkArray(int i) {
            boolean[] zArr = new boolean[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, zArr, 0, size());
            }
            return zArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofBoolean $plus$eq(boolean z) {
            ensureSize(size() + 1);
            elems()[size()] = z;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofBoolean $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofBoolean ofboolean;
            if (traversableOnce instanceof WrappedArray.ofBoolean) {
                WrappedArray.ofBoolean ofboolean2 = (WrappedArray.ofBoolean) traversableOnce;
                ensureSize(size() + ofboolean2.length());
                Array$.MODULE$.copy(ofboolean2.array(), 0, elems(), size(), ofboolean2.length());
                size_$eq(size() + ofboolean2.length());
                ofboolean = this;
            } else {
                ofboolean = (ofBoolean) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofboolean;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofBoolean) {
                ofBoolean ofboolean = (ofBoolean) obj;
                z = false;
                if (size() == ofboolean.size()) {
                    z = false;
                    if (elems() == ofboolean.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofBoolean";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofByte.class */
    public static class ofByte extends ArrayBuilder<Object> {
        private byte[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private byte[] elems() {
            return this.elems;
        }

        private void elems_$eq(byte[] bArr) {
            this.elems = bArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofByte.ensureSize(int):void");
        }

        private byte[] mkArray(int i) {
            byte[] bArr = new byte[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, bArr, 0, size());
            }
            return bArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofByte $plus$eq(byte b) {
            ensureSize(size() + 1);
            elems()[size()] = b;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofByte $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofByte ofbyte;
            if (traversableOnce instanceof WrappedArray.ofByte) {
                WrappedArray.ofByte ofbyte2 = (WrappedArray.ofByte) traversableOnce;
                ensureSize(size() + ofbyte2.length());
                Array$.MODULE$.copy(ofbyte2.array(), 0, elems(), size(), ofbyte2.length());
                size_$eq(size() + ofbyte2.length());
                ofbyte = this;
            } else {
                ofbyte = (ofByte) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofbyte;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofByte) {
                ofByte ofbyte = (ofByte) obj;
                z = false;
                if (size() == ofbyte.size()) {
                    z = false;
                    if (elems() == ofbyte.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofByte";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofChar.class */
    public static class ofChar extends ArrayBuilder<Object> {
        private char[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private char[] elems() {
            return this.elems;
        }

        private void elems_$eq(char[] cArr) {
            this.elems = cArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofChar.ensureSize(int):void");
        }

        private char[] mkArray(int i) {
            char[] cArr = new char[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, cArr, 0, size());
            }
            return cArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofChar $plus$eq(char c) {
            ensureSize(size() + 1);
            elems()[size()] = c;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofChar $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofChar ofchar;
            if (traversableOnce instanceof WrappedArray.ofChar) {
                WrappedArray.ofChar ofchar2 = (WrappedArray.ofChar) traversableOnce;
                ensureSize(size() + ofchar2.length());
                Array$.MODULE$.copy(ofchar2.array(), 0, elems(), size(), ofchar2.length());
                size_$eq(size() + ofchar2.length());
                ofchar = this;
            } else {
                ofchar = (ofChar) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofchar;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofChar) {
                ofChar ofchar = (ofChar) obj;
                z = false;
                if (size() == ofchar.size()) {
                    z = false;
                    if (elems() == ofchar.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofChar";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofDouble.class */
    public static class ofDouble extends ArrayBuilder<Object> {
        private double[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private double[] elems() {
            return this.elems;
        }

        private void elems_$eq(double[] dArr) {
            this.elems = dArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofDouble.ensureSize(int):void");
        }

        private double[] mkArray(int i) {
            double[] dArr = new double[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, dArr, 0, size());
            }
            return dArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofDouble $plus$eq(double d) {
            ensureSize(size() + 1);
            elems()[size()] = d;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofDouble $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofDouble ofdouble;
            if (traversableOnce instanceof WrappedArray.ofDouble) {
                WrappedArray.ofDouble ofdouble2 = (WrappedArray.ofDouble) traversableOnce;
                ensureSize(size() + ofdouble2.length());
                Array$.MODULE$.copy(ofdouble2.array(), 0, elems(), size(), ofdouble2.length());
                size_$eq(size() + ofdouble2.length());
                ofdouble = this;
            } else {
                ofdouble = (ofDouble) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofdouble;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofDouble) {
                ofDouble ofdouble = (ofDouble) obj;
                z = false;
                if (size() == ofdouble.size()) {
                    z = false;
                    if (elems() == ofdouble.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofDouble";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofFloat.class */
    public static class ofFloat extends ArrayBuilder<Object> {
        private float[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private float[] elems() {
            return this.elems;
        }

        private void elems_$eq(float[] fArr) {
            this.elems = fArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofFloat.ensureSize(int):void");
        }

        private float[] mkArray(int i) {
            float[] fArr = new float[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, fArr, 0, size());
            }
            return fArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofFloat $plus$eq(float f) {
            ensureSize(size() + 1);
            elems()[size()] = f;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofFloat $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofFloat offloat;
            if (traversableOnce instanceof WrappedArray.ofFloat) {
                WrappedArray.ofFloat offloat2 = (WrappedArray.ofFloat) traversableOnce;
                ensureSize(size() + offloat2.length());
                Array$.MODULE$.copy(offloat2.array(), 0, elems(), size(), offloat2.length());
                size_$eq(size() + offloat2.length());
                offloat = this;
            } else {
                offloat = (ofFloat) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return offloat;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofFloat) {
                ofFloat offloat = (ofFloat) obj;
                z = false;
                if (size() == offloat.size()) {
                    z = false;
                    if (elems() == offloat.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofFloat";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofInt.class */
    public static class ofInt extends ArrayBuilder<Object> {
        private int[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private int[] elems() {
            return this.elems;
        }

        private void elems_$eq(int[] iArr) {
            this.elems = iArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofInt.ensureSize(int):void");
        }

        private int[] mkArray(int i) {
            int[] iArr = new int[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, iArr, 0, size());
            }
            return iArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofInt $plus$eq(int i) {
            ensureSize(size() + 1);
            elems()[size()] = i;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofInt $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofInt ofint;
            if (traversableOnce instanceof WrappedArray.ofInt) {
                WrappedArray.ofInt ofint2 = (WrappedArray.ofInt) traversableOnce;
                ensureSize(size() + ofint2.length());
                Array$.MODULE$.copy(ofint2.array(), 0, elems(), size(), ofint2.length());
                size_$eq(size() + ofint2.length());
                ofint = this;
            } else {
                ofint = (ofInt) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofint;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofInt) {
                ofInt ofint = (ofInt) obj;
                z = false;
                if (size() == ofint.size()) {
                    z = false;
                    if (elems() == ofint.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofInt";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofLong.class */
    public static class ofLong extends ArrayBuilder<Object> {
        private long[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private long[] elems() {
            return this.elems;
        }

        private void elems_$eq(long[] jArr) {
            this.elems = jArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofLong.ensureSize(int):void");
        }

        private long[] mkArray(int i) {
            long[] jArr = new long[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, jArr, 0, size());
            }
            return jArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofLong $plus$eq(long j) {
            ensureSize(size() + 1);
            elems()[size()] = j;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofLong $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofLong oflong;
            if (traversableOnce instanceof WrappedArray.ofLong) {
                WrappedArray.ofLong oflong2 = (WrappedArray.ofLong) traversableOnce;
                ensureSize(size() + oflong2.length());
                Array$.MODULE$.copy(oflong2.array(), 0, elems(), size(), oflong2.length());
                size_$eq(size() + oflong2.length());
                oflong = this;
            } else {
                oflong = (ofLong) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return oflong;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofLong) {
                ofLong oflong = (ofLong) obj;
                z = false;
                if (size() == oflong.size()) {
                    z = false;
                    if (elems() == oflong.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofLong";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofRef.class */
    public static class ofRef<T> extends ArrayBuilder<T> {
        private T[] elems;
        private final ClassTag<T> evidence$2;
        private int capacity = 0;
        private int size = 0;

        public ofRef(ClassTag<T> classTag) {
            this.evidence$2 = classTag;
        }

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private T[] elems() {
            return this.elems;
        }

        private void elems_$eq(T[] tArr) {
            this.elems = tArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofRef.ensureSize(int):void");
        }

        private T[] mkArray(int i) {
            T[] tArr = (T[]) ((Object[]) this.evidence$2.newArray(i));
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, tArr, 0, size());
            }
            return tArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
        public ofRef<T> $plus$eq(T t) {
            ensureSize(size() + 1);
            elems()[size()] = t;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofRef<T> $plus$plus$eq(TraversableOnce<T> traversableOnce) {
            ofRef<T> ofref;
            if (traversableOnce instanceof WrappedArray.ofRef) {
                WrappedArray.ofRef ofref2 = (WrappedArray.ofRef) traversableOnce;
                ensureSize(size() + ofref2.length());
                Array$.MODULE$.copy(ofref2.array(), 0, elems(), size(), ofref2.length());
                size_$eq(size() + ofref2.length());
                ofref = this;
            } else {
                ofref = (ofRef) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofref;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofRef) {
                ofRef ofref = (ofRef) obj;
                z = false;
                if (size() == ofref.size()) {
                    z = false;
                    if (elems() == ofref.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofRef";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofShort.class */
    public static class ofShort extends ArrayBuilder<Object> {
        private short[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private short[] elems() {
            return this.elems;
        }

        private void elems_$eq(short[] sArr) {
            this.elems = sArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofShort.ensureSize(int):void");
        }

        private short[] mkArray(int i) {
            short[] sArr = new short[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, sArr, 0, size());
            }
            return sArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofShort $plus$eq(short s) {
            ensureSize(size() + 1);
            elems()[size()] = s;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofShort $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
            ofShort ofshort;
            if (traversableOnce instanceof WrappedArray.ofShort) {
                WrappedArray.ofShort ofshort2 = (WrappedArray.ofShort) traversableOnce;
                ensureSize(size() + ofshort2.length());
                Array$.MODULE$.copy(ofshort2.array(), 0, elems(), size(), ofshort2.length());
                size_$eq(size() + ofshort2.length());
                ofshort = this;
            } else {
                ofshort = (ofShort) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofshort;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofShort) {
                ofShort ofshort = (ofShort) obj;
                z = false;
                if (size() == ofshort.size()) {
                    z = false;
                    if (elems() == ofshort.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofShort";
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$ofUnit.class */
    public static class ofUnit extends ArrayBuilder<BoxedUnit> {
        private BoxedUnit[] elems;
        private int capacity = 0;
        private int size = 0;

        private int capacity() {
            return this.capacity;
        }

        private void capacity_$eq(int i) {
            this.capacity = i;
        }

        private BoxedUnit[] elems() {
            return this.elems;
        }

        private void elems_$eq(BoxedUnit[] boxedUnitArr) {
            this.elems = boxedUnitArr;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x0024). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void ensureSize(int r4) {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.capacity()
                r1 = r4
                if (r0 < r1) goto Lf
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L35
            Lf:
                r0 = r3
                int r0 = r0.capacity()
                if (r0 != 0) goto L1c
                r0 = 16
                r5 = r0
                goto L24
            L1c:
                r0 = r3
                int r0 = r0.capacity()
                r5 = r0
                goto L29
            L24:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L30
            L29:
                r0 = r5
                r1 = 2
                int r0 = r0 * r1
                r5 = r0
                goto L24
            L30:
                r0 = r3
                r1 = r5
                r0.resize(r1)
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayBuilder.ofUnit.ensureSize(int):void");
        }

        private BoxedUnit[] mkArray(int i) {
            BoxedUnit[] boxedUnitArr = new BoxedUnit[i];
            if (size() > 0) {
                Array$.MODULE$.copy(elems(), 0, boxedUnitArr, 0, size());
            }
            return boxedUnitArr;
        }

        private void resize(int i) {
            elems_$eq(mkArray(i));
            capacity_$eq(i);
        }

        private int size() {
            return this.size;
        }

        private void size_$eq(int i) {
            this.size = i;
        }

        public ofUnit $plus$eq(BoxedUnit boxedUnit) {
            ensureSize(size() + 1);
            elems()[size()] = boxedUnit;
            size_$eq(size() + 1);
            return this;
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.generic.Growable
        public ofUnit $plus$plus$eq(TraversableOnce<BoxedUnit> traversableOnce) {
            ofUnit ofunit;
            if (traversableOnce instanceof WrappedArray.ofUnit) {
                WrappedArray.ofUnit ofunit2 = (WrappedArray.ofUnit) traversableOnce;
                ensureSize(size() + ofunit2.length());
                Array$.MODULE$.copy(ofunit2.array(), 0, elems(), size(), ofunit2.length());
                size_$eq(size() + ofunit2.length());
                ofunit = this;
            } else {
                ofunit = (ofUnit) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }
            return ofunit;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            size_$eq(0);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof ofUnit) {
                ofUnit ofunit = (ofUnit) obj;
                z = false;
                if (size() == ofunit.size()) {
                    z = false;
                    if (elems() == ofunit.elems()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // scala.collection.mutable.Builder
        public Object result() {
            return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
        }

        @Override // scala.collection.mutable.ArrayBuilder, scala.collection.mutable.Builder
        public void sizeHint(int i) {
            if (capacity() < i) {
                resize(i);
            }
        }

        public String toString() {
            return "ArrayBuilder.ofUnit";
        }
    }

    public ArrayBuilder() {
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
    }

    public static <T> ArrayBuilder<T> make(ClassTag<T> classTag) {
        return ArrayBuilder$.MODULE$.make(classTag);
    }

    @Override // scala.collection.generic.Growable
    public Growable<T> $plus$eq(T t, T t2, Seq<T> seq) {
        Growable<T> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((ArrayBuilder<T>) t).$plus$eq(t2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.generic.Growable
    public Growable<T> $plus$plus$eq(TraversableOnce<T> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<T, NewTo> mapResult(Function1<Object, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
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
}
