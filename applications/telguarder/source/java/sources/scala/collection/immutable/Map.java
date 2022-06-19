package scala.collection.immutable;

import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Map;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0011\u001dc\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0016\u0003\u00075\u000b\u0007O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015a\u00113#\u0002\u0001\f\u001f\u0011:\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB\u0019\u0001#E\n\u000e\u0003\tI!A\u0005\u0002\u0003\u0011%#XM]1cY\u0016\u0004B\u0001\u0004\u000b\u0017C%\u0011QC\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005]AB\u0002\u0001\u0003\u00063\u0001\u0011\rA\u0007\u0002\u0002\u0003F\u00111D\b\t\u0003\u0019qI!!\b\u0004\u0003\u000f9{G\u000f[5oOB\u0011AbH\u0005\u0003A\u0019\u00111!\u00118z!\t9\"\u0005\u0002\u0004$\u0001\u0011\u0015\rA\u0007\u0002\u0002\u0005B!QE\n\f\"\u001b\u0005!\u0011BA\u0001\u0005!\u0015\u0001\u0002FF\u0011+\u0013\tI#AA\u0004NCBd\u0015n[3\u0011\tA\u0001a#\t\u0005\u0006Y\u0001!\t!L\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u00039\u0002\"\u0001D\u0018\n\u0005A2!\u0001B+oSRDQA\r\u0001\u0005BM\nQ!Z7qif,\u0012A\u000b\u0005\u0006k\u0001!\tEN\u0001\u0006i>l\u0015\r]\u000b\u0004oijDC\u0001\u001d@!\u0011\u0001\u0002!\u000f\u001f\u0011\u0005]QD!B\u001e5\u0005\u0004Q\"!\u0001+\u0011\u0005]iD!\u0002 5\u0005\u0004Q\"!A+\t\u000b\u0001#\u00049A!\u0002\u0005\u00154\b\u0003\u0002\"F'!s!\u0001D\"\n\u0005\u00113\u0011A\u0002)sK\u0012,g-\u0003\u0002G\u000f\n\u0001B\u0005\\3tg\u0012\u001aw\u000e\\8oI1,7o\u001d\u0006\u0003\t\u001a\u0001B\u0001\u0004\u000b:y!\"AGS'P!\ta1*\u0003\u0002M\r\t!B-\u001a9sK\u000e\fG/\u001a3Pm\u0016\u0014(/\u001b3j]\u001e\f\u0013AT\u0001R\u00136lW\u000f^1cY\u0016\u0004S.\u00199tAMDw.\u001e7eA\u0011|\u0007E\\8uQ&tw\rI8oAQ|W*\u00199!Kb\u001cW\r\u001d;!e\u0016$XO\u001d8!i\",Wn]3mm\u0016\u001c\beY1ti\u0002\n7\u000fI1![\u0006\u0004h&I\u0001Q\u0003\u0019\u0011d&M\u0019/a!)!\u000b\u0001C!g\u0005\u00191/Z9\t\u000bQ\u0003A\u0011A+\u0002\u0017]LG\u000f\u001b#fM\u0006,H\u000e^\u000b\u0003-f#\"a\u0016/\u0011\tA\u0001a\u0003\u0017\t\u0003/e#QAW*C\u0002m\u0013!AQ\u0019\u0012\u0005\u0005r\u0002\"B/T\u0001\u0004q\u0016!\u00013\u0011\t1yf\u0003W\u0005\u0003A\u001a\u0011\u0011BR;oGRLwN\\\u0019\t\u000b\t\u0004A\u0011A2\u0002!]LG\u000f\u001b#fM\u0006,H\u000e\u001e,bYV,WC\u00013h)\t)\u0007\u000e\u0005\u0003\u0011\u0001Y1\u0007CA\fh\t\u0015Q\u0016M1\u0001\\\u0011\u0015i\u0016\r1\u0001g\u0011\u0015Q\u0007A\"\u0011l\u0003\u001d)\b\u000fZ1uK\u0012,\"\u0001\\8\u0015\u00075\u0004(\u000f\u0005\u0003\u0011\u0001Yq\u0007CA\fp\t\u0015Q\u0016N1\u0001\\\u0011\u0015\t\u0018\u000e1\u0001\u0017\u0003\rYW-\u001f\u0005\u0006g&\u0004\rA\\\u0001\u0006m\u0006dW/\u001a\u0005\u0006k\u00021\tA^\u0001\u0006IAdWo]\u000b\u0003oj$\"\u0001_>\u0011\tA\u0001a#\u001f\t\u0003/i$QA\u0017;C\u0002mCQ\u0001 ;A\u0002u\f!a\u001b<\u0011\t1!b#_\u0004\u0007\u007f\nA\t!!\u0001\u0002\u00075\u000b\u0007\u000fE\u0002\u0011\u0003\u00071a!\u0001\u0002\t\u0002\u0005\u00151\u0003BA\u0002\u0003\u000f\u0001b!!\u0003\u0002\u0010\u0005MQBAA\u0006\u0015\r\ti\u0001B\u0001\bO\u0016tWM]5d\u0013\u0011\t\t\"a\u0003\u0003'%kW.\u001e;bE2,W*\u00199GC\u000e$xN]=\u0011\u0005A\u0001\u0001\u0002CA\f\u0003\u0007!\t!!\u0007\u0002\rqJg.\u001b;?)\t\t\t\u0001\u0003\u0005\u0002\u001e\u0005\rA1AA\u0010\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\t\t#!\u000f\u0002>U\u0011\u00111\u0005\t\u000b\u0003\u0013\t)#!\u000b\u00026\u0005}\u0012\u0002BA\u0014\u0003\u0017\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!a\u000b\u0002.5\u0011\u00111A\u0005\u0005\u0003_\t\tD\u0001\u0003D_2d\u0017\u0002BA\u001a\u0003\u0017\u0011QbR3o\u001b\u0006\u0004h)Y2u_JL\bC\u0002\u0007\u0015\u0003o\tY\u0004E\u0002\u0018\u0003s!a!GA\u000e\u0005\u0004Q\u0002cA\f\u0002>\u001111%a\u0007C\u0002i\u0001b\u0001\u0005\u0001\u00028\u0005m\u0002b\u0002\u001a\u0002\u0004\u0011\u0005\u00111I\u000b\u0007\u0003\u000b\nY%a\u0014\u0016\u0005\u0005\u001d\u0003C\u0002\t\u0001\u0003\u0013\ni\u0005E\u0002\u0018\u0003\u0017\"a!GA!\u0005\u0004Q\u0002cA\f\u0002P\u001111%!\u0011C\u0002i1q!a\u0015\u0002\u0004\u0001\t)FA\u0006XSRDG)\u001a4bk2$XCBA,\u0003g\n9h\u0005\u0004\u0002R\u0005e\u0013\u0011\u0010\t\t\u00037\ni'!\u001d\u0002v9!\u0011QLA6\u001d\u0011\ty&!\u001b\u000f\t\u0005\u0005\u0014qM\u0007\u0003\u0003GR1!!\u001a\t\u0003\u0019a$o\\8u}%\tq!\u0003\u0002\u0006\r%\u0011q\u0010B\u0005\u0005\u0003'\nyG\u0003\u0002��\tA\u0019q#a\u001d\u0005\re\t\tF1\u0001\u001b!\r9\u0012q\u000f\u0003\bG\u0005ECQ1\u0001\u001b!\u0019\u0001\u0002!!\u001d\u0002v!Y\u0011QPA)\u0005\u0003\u0005\u000b\u0011BA=\u0003))h\u000eZ3sYfLgn\u001a\u0005\u000b;\u0006E#\u0011!Q\u0001\n\u0005\u0005\u0005C\u0002\u0007`\u0003c\n)\b\u0003\u0005\u0002\u0018\u0005EC\u0011AAC)\u0019\t9)!#\u0002\fBA\u00111FA)\u0003c\n)\b\u0003\u0005\u0002~\u0005\r\u0005\u0019AA=\u0011\u001di\u00161\u0011a\u0001\u0003\u0003CqAMA)\t\u0003\ny)\u0006\u0002\u0002\b\"9!.!\u0015\u0005B\u0005MU\u0003BAK\u00037#b!a&\u0002 \u0006\u0005\u0006\u0003CA\u0016\u0003#\n\t(!'\u0011\u0007]\tY\nB\u0004[\u0003#\u0013\r!!(\u0012\u0007\u0005Ud\u0004C\u0004r\u0003#\u0003\r!!\u001d\t\u000fM\f\t\n1\u0001\u0002\u001a\"9Q/!\u0015\u0005B\u0005\u0015V\u0003BAT\u0003[#B!!+\u00020BA\u00111FA)\u0003c\nY\u000bE\u0002\u0018\u0003[#qAWAR\u0005\u0004\ti\nC\u0004}\u0003G\u0003\r!!-\u0011\r1!\u0012\u0011OAV\u0011!\t),!\u0015\u0005B\u0005]\u0016A\u0002\u0013nS:,8\u000f\u0006\u0003\u0002\b\u0006e\u0006bB9\u00024\u0002\u0007\u0011\u0011\u000f\u0005\b)\u0006EC\u0011IA_+\u0011\ty,!2\u0015\t\u0005\u0005\u0017q\u0019\t\u0007!\u0001\t\t(a1\u0011\u0007]\t)\rB\u0004[\u0003w\u0013\r!!(\t\u000fu\u000bY\f1\u0001\u0002JB1AbXA9\u0003\u0007DqAYA)\t\u0003\ni-\u0006\u0003\u0002P\u0006UG\u0003BAi\u0003/\u0004b\u0001\u0005\u0001\u0002r\u0005M\u0007cA\f\u0002V\u00129!,a3C\u0002\u0005u\u0005bB/\u0002L\u0002\u0007\u00111[\u0004\t\u00037\f\u0019\u0001#\u0003\u0002^\u0006AQ)\u001c9us6\u000b\u0007\u000f\u0005\u0003\u0002,\u0005}g\u0001CAq\u0003\u0007AI!a9\u0003\u0011\u0015k\u0007\u000f^=NCB\u001c\u0002\"a8\u0002f\u0006-\u0018Q\u001e\t\u0006!\u0005\u001dhdG\u0005\u0004\u0003S\u0014!aC!cgR\u0014\u0018m\u0019;NCB\u0004B\u0001\u0005\u0001\u001f7A\u0019A\"a<\n\u0007\u0005EhA\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005\u0002\u0018\u0005}G\u0011AA{)\t\ti\u000e\u0003\u0005\u0002z\u0006}G\u0011IA~\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005u\bc\u0001\u0007\u0002��&\u0019!\u0011\u0001\u0004\u0003\u0007%sG\u000f\u0003\u0005\u0003\u0006\u0005}G\u0011\u0001B\u0004\u0003\r9W\r\u001e\u000b\u0005\u0005\u0013\u0011y\u0001\u0005\u0003\r\u0005\u0017Y\u0012b\u0001B\u0007\r\t1q\n\u001d;j_:Da!\u001dB\u0002\u0001\u0004q\u0002\u0002\u0003B\n\u0003?$\tA!\u0006\u0002\u0011%$XM]1u_J,\"Aa\u0006\u0011\u000b\u0015\u0012IB!\b\n\u0007\tmAA\u0001\u0005Ji\u0016\u0014\u0018\r^8s!\u0011aACH\u000e\t\u000f)\fy\u000e\"\u0011\u0003\"U!!1\u0005B\u0015)\u0019\u0011)Ca\u000b\u0003.A)\u0001\u0003\u0001\u0010\u0003(A\u0019qC!\u000b\u0005\ri\u0013yB1\u0001\u001b\u0011\u0019\t(q\u0004a\u0001=!91Oa\bA\u0002\t\u001d\u0002bB;\u0002`\u0012\u0005!\u0011G\u000b\u0005\u0005g\u0011I\u0004\u0006\u0003\u00036\tm\u0002#\u0002\t\u0001=\t]\u0002cA\f\u0003:\u00111!La\fC\u0002iAq\u0001 B\u0018\u0001\u0004\u0011i\u0004E\u0003\r)y\u00119\u0004\u0003\u0005\u00026\u0006}G\u0011\u0001B!)\u0011\tYOa\u0011\t\rE\u0014y\u00041\u0001\u001f\u0011)\u00119%a8\u0002\u0002\u0013%!\u0011J\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0003LA!!Q\nB,\u001b\t\u0011yE\u0003\u0003\u0003R\tM\u0013\u0001\u00027b]\u001eT!A!\u0016\u0002\t)\fg/Y\u0005\u0005\u00053\u0012yE\u0001\u0004PE*,7\r\u001e\u0004\b\u0005;\n\u0019\u0001\u0001B0\u0005\u0011i\u0015\r]\u0019\u0016\r\t\u0005$q\rB6'!\u0011YFa\u0019\u0003n\u00055\bc\u0002\t\u0002h\n\u0015$\u0011\u000e\t\u0004/\t\u001dDAB\r\u0003\\\t\u0007!\u0004E\u0002\u0018\u0005W\"qa\tB.\t\u000b\u0007!\u0004\u0005\u0004\u0011\u0001\t\u0015$\u0011\u000e\u0005\f\u0005c\u0012YF!A!\u0002\u0013\u0011)'\u0001\u0003lKf\f\u0004b\u0003B;\u00057\u0012\t\u0011)A\u0005\u0005S\naA^1mk\u0016\f\u0004\u0002CA\f\u00057\"\tA!\u001f\u0015\r\tm$Q\u0010B@!!\tYCa\u0017\u0003f\t%\u0004\u0002\u0003B9\u0005o\u0002\rA!\u001a\t\u0011\tU$q\u000fa\u0001\u0005SB\u0001\"!?\u0003\\\u0011\u0005\u00131 \u0005\t\u0005\u000b\u0011Y\u0006\"\u0001\u0003\u0006R!!q\u0011BE!\u0015a!1\u0002B5\u0011\u001d\t(1\u0011a\u0001\u0005KB\u0001Ba\u0005\u0003\\\u0011\u0005!QR\u000b\u0003\u0005\u001f\u0003R!\nB\r\u0005#\u0003b\u0001\u0004\u000b\u0003f\t%\u0004b\u00026\u0003\\\u0011\u0005#QS\u000b\u0005\u0005/\u0013i\n\u0006\u0004\u0003\u001a\n\u0005&1\u0015\t\u0007!\u0001\u0011)Ga'\u0011\u0007]\u0011i\nB\u0004[\u0005'\u0013\rAa(\u0012\u0007\t%d\u0004C\u0004r\u0005'\u0003\rA!\u001a\t\u000fM\u0014\u0019\n1\u0001\u0003\u001c\"9QOa\u0017\u0005\u0002\t\u001dV\u0003\u0002BU\u0005_#BAa+\u00032B1\u0001\u0003\u0001B3\u0005[\u00032a\u0006BX\t\u001dQ&Q\u0015b\u0001\u0005?Cq\u0001 BS\u0001\u0004\u0011\u0019\f\u0005\u0004\r)\t\u0015$Q\u0016\u0005\t\u0003k\u0013Y\u0006\"\u0001\u00038R!!Q\u000eB]\u0011\u001d\t(Q\u0017a\u0001\u0005KB\u0001B!0\u0003\\\u0011\u0005#qX\u0001\bM>\u0014X-Y2i+\u0011\u0011\tMa3\u0015\u00079\u0012\u0019\r\u0003\u0005\u0003F\nm\u0006\u0019\u0001Bd\u0003\u00051\u0007C\u0002\u0007`\u0005#\u0013I\rE\u0002\u0018\u0005\u0017$aA\u0010B^\u0005\u0004Qba\u0002Bh\u0003\u0007\u0001!\u0011\u001b\u0002\u0005\u001b\u0006\u0004('\u0006\u0004\u0003T\ne'Q\\\n\t\u0005\u001b\u0014)Na8\u0002nB9\u0001#a:\u0003X\nm\u0007cA\f\u0003Z\u00121\u0011D!4C\u0002i\u00012a\u0006Bo\t\u001d\u0019#Q\u001aCC\u0002i\u0001b\u0001\u0005\u0001\u0003X\nm\u0007b\u0003B9\u0005\u001b\u0014\t\u0011)A\u0005\u0005/D1B!\u001e\u0003N\n\u0005\t\u0015!\u0003\u0003\\\"Y!q\u001dBg\u0005\u0003\u0005\u000b\u0011\u0002Bl\u0003\u0011YW-\u001f\u001a\t\u0017\t-(Q\u001aB\u0001B\u0003%!1\\\u0001\u0007m\u0006dW/\u001a\u001a\t\u0011\u0005]!Q\u001aC\u0001\u0005_$\"B!=\u0003t\nU(q\u001fB}!!\tYC!4\u0003X\nm\u0007\u0002\u0003B9\u0005[\u0004\rAa6\t\u0011\tU$Q\u001ea\u0001\u00057D\u0001Ba:\u0003n\u0002\u0007!q\u001b\u0005\t\u0005W\u0014i\u000f1\u0001\u0003\\\"A\u0011\u0011 Bg\t\u0003\nY\u0010\u0003\u0005\u0003\u0006\t5G\u0011\u0001B��)\u0011\u0019\taa\u0001\u0011\u000b1\u0011YAa7\t\u000fE\u0014i\u00101\u0001\u0003X\"A!1\u0003Bg\t\u0003\u00199!\u0006\u0002\u0004\nA)QE!\u0007\u0004\fA1A\u0002\u0006Bl\u00057DqA\u001bBg\t\u0003\u001ay!\u0006\u0003\u0004\u0012\r]ACBB\n\u00077\u0019i\u0002\u0005\u0004\u0011\u0001\t]7Q\u0003\t\u0004/\r]Aa\u0002.\u0004\u000e\t\u00071\u0011D\t\u0004\u00057t\u0002bB9\u0004\u000e\u0001\u0007!q\u001b\u0005\bg\u000e5\u0001\u0019AB\u000b\u0011\u001d)(Q\u001aC\u0001\u0007C)Baa\t\u0004*Q!1QEB\u0016!\u0019\u0001\u0002Aa6\u0004(A\u0019qc!\u000b\u0005\u000fi\u001byB1\u0001\u0004\u001a!9Apa\bA\u0002\r5\u0002C\u0002\u0007\u0015\u0005/\u001c9\u0003\u0003\u0005\u00026\n5G\u0011AB\u0019)\u0011\u0011yna\r\t\u000fE\u001cy\u00031\u0001\u0003X\"A!Q\u0018Bg\t\u0003\u001a9$\u0006\u0003\u0004:\r\u0005Cc\u0001\u0018\u0004<!A!QYB\u001b\u0001\u0004\u0019i\u0004\u0005\u0004\r?\u000e-1q\b\t\u0004/\r\u0005CA\u0002 \u00046\t\u0007!DB\u0004\u0004F\u0005\r\u0001aa\u0012\u0003\t5\u000b\u0007oM\u000b\u0007\u0007\u0013\u001ayea\u0015\u0014\u0011\r\r31JB+\u0003[\u0004r\u0001EAt\u0007\u001b\u001a\t\u0006E\u0002\u0018\u0007\u001f\"a!GB\"\u0005\u0004Q\u0002cA\f\u0004T\u001191ea\u0011\u0005\u0006\u0004Q\u0002C\u0002\t\u0001\u0007\u001b\u001a\t\u0006C\u0006\u0003r\r\r#\u0011!Q\u0001\n\r5\u0003b\u0003B;\u0007\u0007\u0012\t\u0011)A\u0005\u0007#B1Ba:\u0004D\t\u0005\t\u0015!\u0003\u0004N!Y!1^B\"\u0005\u0003\u0005\u000b\u0011BB)\u0011-\u0019\tga\u0011\u0003\u0002\u0003\u0006Ia!\u0014\u0002\t-,\u0017p\r\u0005\f\u0007K\u001a\u0019E!A!\u0002\u0013\u0019\t&\u0001\u0004wC2,Xm\r\u0005\t\u0003/\u0019\u0019\u0005\"\u0001\u0004jQq11NB7\u0007_\u001a\tha\u001d\u0004v\r]\u0004\u0003CA\u0016\u0007\u0007\u001aie!\u0015\t\u0011\tE4q\ra\u0001\u0007\u001bB\u0001B!\u001e\u0004h\u0001\u00071\u0011\u000b\u0005\t\u0005O\u001c9\u00071\u0001\u0004N!A!1^B4\u0001\u0004\u0019\t\u0006\u0003\u0005\u0004b\r\u001d\u0004\u0019AB'\u0011!\u0019)ga\u001aA\u0002\rE\u0003\u0002CA}\u0007\u0007\"\t%a?\t\u0011\t\u001511\tC\u0001\u0007{\"Baa \u0004\u0002B)ABa\u0003\u0004R!9\u0011oa\u001fA\u0002\r5\u0003\u0002\u0003B\n\u0007\u0007\"\ta!\"\u0016\u0005\r\u001d\u0005#B\u0013\u0003\u001a\r%\u0005C\u0002\u0007\u0015\u0007\u001b\u001a\t\u0006C\u0004k\u0007\u0007\"\te!$\u0016\t\r=5Q\u0013\u000b\u0007\u0007#\u001bIja'\u0011\rA\u00011QJBJ!\r92Q\u0013\u0003\b5\u000e-%\u0019ABL#\r\u0019\tF\b\u0005\bc\u000e-\u0005\u0019AB'\u0011\u001d\u001981\u0012a\u0001\u0007'Cq!^B\"\t\u0003\u0019y*\u0006\u0003\u0004\"\u000e\u001dF\u0003BBR\u0007S\u0003b\u0001\u0005\u0001\u0004N\r\u0015\u0006cA\f\u0004(\u00129!l!(C\u0002\r]\u0005b\u0002?\u0004\u001e\u0002\u000711\u0016\t\u0007\u0019Q\u0019ie!*\t\u0011\u0005U61\tC\u0001\u0007_#Ba!\u0016\u00042\"9\u0011o!,A\u0002\r5\u0003\u0002\u0003B_\u0007\u0007\"\te!.\u0016\t\r]6q\u0018\u000b\u0004]\re\u0006\u0002\u0003Bc\u0007g\u0003\raa/\u0011\r1y6\u0011RB_!\r92q\u0018\u0003\u0007}\rM&\u0019\u0001\u000e\u0007\u000f\r\r\u00171\u0001\u0001\u0004F\n!Q*\u001995+\u0019\u00199m!4\u0004RNA1\u0011YBe\u0007'\fi\u000fE\u0004\u0011\u0003O\u001cYma4\u0011\u0007]\u0019i\r\u0002\u0004\u001a\u0007\u0003\u0014\rA\u0007\t\u0004/\rEGaB\u0012\u0004B\u0012\u0015\rA\u0007\t\u0007!\u0001\u0019Yma4\t\u0017\tE4\u0011\u0019B\u0001B\u0003%11\u001a\u0005\f\u0005k\u001a\tM!A!\u0002\u0013\u0019y\rC\u0006\u0003h\u000e\u0005'\u0011!Q\u0001\n\r-\u0007b\u0003Bv\u0007\u0003\u0014\t\u0011)A\u0005\u0007\u001fD1b!\u0019\u0004B\n\u0005\t\u0015!\u0003\u0004L\"Y1QMBa\u0005\u0003\u0005\u000b\u0011BBh\u0011-\u0019\u0019o!1\u0003\u0002\u0003\u0006Iaa3\u0002\t-,\u0017\u0010\u000e\u0005\f\u0007O\u001c\tM!A!\u0002\u0013\u0019y-\u0001\u0004wC2,X\r\u000e\u0005\t\u0003/\u0019\t\r\"\u0001\u0004lR\u00112Q^Bx\u0007c\u001c\u0019p!>\u0004x\u000ee81`B\u007f!!\tYc!1\u0004L\u000e=\u0007\u0002\u0003B9\u0007S\u0004\raa3\t\u0011\tU4\u0011\u001ea\u0001\u0007\u001fD\u0001Ba:\u0004j\u0002\u000711\u001a\u0005\t\u0005W\u001cI\u000f1\u0001\u0004P\"A1\u0011MBu\u0001\u0004\u0019Y\r\u0003\u0005\u0004f\r%\b\u0019ABh\u0011!\u0019\u0019o!;A\u0002\r-\u0007\u0002CBt\u0007S\u0004\raa4\t\u0011\u0005e8\u0011\u0019C!\u0003wD\u0001B!\u0002\u0004B\u0012\u0005A1\u0001\u000b\u0005\t\u000b!9\u0001E\u0003\r\u0005\u0017\u0019y\rC\u0004r\t\u0003\u0001\raa3\t\u0011\tM1\u0011\u0019C\u0001\t\u0017)\"\u0001\"\u0004\u0011\u000b\u0015\u0012I\u0002b\u0004\u0011\r1!21ZBh\u0011\u001dQ7\u0011\u0019C!\t')B\u0001\"\u0006\u0005\u001cQ1Aq\u0003C\u0010\tC\u0001b\u0001\u0005\u0001\u0004L\u0012e\u0001cA\f\u0005\u001c\u00119!\f\"\u0005C\u0002\u0011u\u0011cABh=!9\u0011\u000f\"\u0005A\u0002\r-\u0007bB:\u0005\u0012\u0001\u0007A\u0011\u0004\u0005\bk\u000e\u0005G\u0011\u0001C\u0013+\u0011!9\u0003\"\f\u0015\t\u0011%Bq\u0006\t\u0007!\u0001\u0019Y\rb\u000b\u0011\u0007]!i\u0003B\u0004[\tG\u0011\r\u0001\"\b\t\u000fq$\u0019\u00031\u0001\u00052A1A\u0002FBf\tWA\u0001\"!.\u0004B\u0012\u0005AQ\u0007\u000b\u0005\u0007'$9\u0004C\u0004r\tg\u0001\raa3\t\u0011\tu6\u0011\u0019C!\tw)B\u0001\"\u0010\u0005FQ\u0019a\u0006b\u0010\t\u0011\t\u0015G\u0011\ba\u0001\t\u0003\u0002b\u0001D0\u0005\u0010\u0011\r\u0003cA\f\u0005F\u00111a\b\"\u000fC\u0002i\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map.class */
public interface Map<A, B> extends Iterable<Tuple2<A, B>>, scala.collection.Map<A, B>, MapLike<A, B, Map<A, B>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$Map1.class */
    public static class Map1<A, B> extends AbstractMap<A, B> implements Serializable {
        private final A key1;
        private final B value1;

        public Map1(A a, B b) {
            this.key1 = a;
            this.value1 = b;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, B> $minus(A a) {
            A a2 = this.key1;
            return a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2) ? Map$.MODULE$.empty() : this;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return updated((Map1<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            function1.apply(new Tuple2<>(this.key1, this.value1));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            A a2 = this.key1;
            return a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2) ? new Some(this.value1) : None$.MODULE$;
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(this.key1, this.value1)}));
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 1;
        }

        @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B1> Map<A, B1> updated(A a, B1 b1) {
            A a2 = this.key1;
            return a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2) ? new Map1(this.key1, b1) : new Map2(this.key1, this.value1, a, b1);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$Map2.class */
    public static class Map2<A, B> extends AbstractMap<A, B> implements Serializable {
        private final A key1;
        private final A key2;
        private final B value1;
        private final B value2;

        public Map2(A a, B b, A a2, B b2) {
            this.key1 = a;
            this.value1 = b;
            this.key2 = a2;
            this.value2 = b2;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, B> $minus(A a) {
            AbstractMap abstractMap;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                abstractMap = new Map1(this.key2, this.value2);
            } else {
                A a3 = this.key2;
                abstractMap = a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3) ? new Map1(this.key1, this.value1) : this;
            }
            return abstractMap;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return updated((Map2<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            function1.apply(new Tuple2<>(this.key1, this.value1));
            function1.apply(new Tuple2<>(this.key2, this.value2));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            Some some;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                some = new Some(this.value1);
            } else {
                A a3 = this.key2;
                some = a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3) ? new Some(this.value2) : None$.MODULE$;
            }
            return some;
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(this.key1, this.value1), new Tuple2(this.key2, this.value2)}));
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 2;
        }

        @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B1> Map<A, B1> updated(A a, B1 b1) {
            Map2 map2;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                map2 = new Map2(this.key1, b1, this.key2, this.value2);
            } else {
                A a3 = this.key2;
                map2 = a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3) ? new Map2(this.key1, this.value1, this.key2, b1) : new Map3(this.key1, this.value1, this.key2, this.value2, a, b1);
            }
            return map2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$Map3.class */
    public static class Map3<A, B> extends AbstractMap<A, B> implements Serializable {
        private final A key1;
        private final A key2;
        private final A key3;
        private final B value1;
        private final B value2;
        private final B value3;

        public Map3(A a, B b, A a2, B b2, A a3, B b3) {
            this.key1 = a;
            this.value1 = b;
            this.key2 = a2;
            this.value2 = b2;
            this.key3 = a3;
            this.value3 = b3;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, B> $minus(A a) {
            AbstractMap abstractMap;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                abstractMap = new Map2(this.key2, this.value2, this.key3, this.value3);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    abstractMap = new Map2(this.key1, this.value1, this.key3, this.value3);
                } else {
                    A a4 = this.key3;
                    abstractMap = a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4) ? new Map2(this.key1, this.value1, this.key2, this.value2) : this;
                }
            }
            return abstractMap;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return updated((Map3<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            function1.apply(new Tuple2<>(this.key1, this.value1));
            function1.apply(new Tuple2<>(this.key2, this.value2));
            function1.apply(new Tuple2<>(this.key3, this.value3));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            Some some;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                some = new Some(this.value1);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    some = new Some(this.value2);
                } else {
                    A a4 = this.key3;
                    some = a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4) ? new Some(this.value3) : None$.MODULE$;
                }
            }
            return some;
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(this.key1, this.value1), new Tuple2(this.key2, this.value2), new Tuple2(this.key3, this.value3)}));
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 3;
        }

        @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B1> Map<A, B1> updated(A a, B1 b1) {
            Map3 map3;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                map3 = new Map3(this.key1, b1, this.key2, this.value2, this.key3, this.value3);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    map3 = new Map3(this.key1, this.value1, this.key2, b1, this.key3, this.value3);
                } else {
                    A a4 = this.key3;
                    map3 = a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4) ? new Map3(this.key1, this.value1, this.key2, this.value2, this.key3, b1) : new Map4(this.key1, this.value1, this.key2, this.value2, this.key3, this.value3, a, b1);
                }
            }
            return map3;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$Map4.class */
    public static class Map4<A, B> extends AbstractMap<A, B> implements Serializable {
        private final A key1;
        private final A key2;
        private final A key3;
        private final A key4;
        private final B value1;
        private final B value2;
        private final B value3;
        private final B value4;

        public Map4(A a, B b, A a2, B b2, A a3, B b3, A a4, B b4) {
            this.key1 = a;
            this.value1 = b;
            this.key2 = a2;
            this.value2 = b2;
            this.key3 = a3;
            this.value3 = b3;
            this.key4 = a4;
            this.value4 = b4;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, B> $minus(A a) {
            AbstractMap abstractMap;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                abstractMap = new Map3(this.key2, this.value2, this.key3, this.value3, this.key4, this.value4);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    abstractMap = new Map3(this.key1, this.value1, this.key3, this.value3, this.key4, this.value4);
                } else {
                    A a4 = this.key3;
                    if (a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4)) {
                        abstractMap = new Map3(this.key1, this.value1, this.key2, this.value2, this.key4, this.value4);
                    } else {
                        A a5 = this.key4;
                        abstractMap = a == a5 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a5) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a5) : a.equals(a5) ? new Map3(this.key1, this.value1, this.key2, this.value2, this.key3, this.value3) : this;
                    }
                }
            }
            return abstractMap;
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return updated((Map4<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            function1.apply(new Tuple2<>(this.key1, this.value1));
            function1.apply(new Tuple2<>(this.key2, this.value2));
            function1.apply(new Tuple2<>(this.key3, this.value3));
            function1.apply(new Tuple2<>(this.key4, this.value4));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            Some some;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                some = new Some(this.value1);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    some = new Some(this.value2);
                } else {
                    A a4 = this.key3;
                    if (a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4)) {
                        some = new Some(this.value3);
                    } else {
                        A a5 = this.key4;
                        some = a == a5 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a5) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a5) : a.equals(a5) ? new Some(this.value4) : None$.MODULE$;
                    }
                }
            }
            return some;
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(this.key1, this.value1), new Tuple2(this.key2, this.value2), new Tuple2(this.key3, this.value3), new Tuple2(this.key4, this.value4)}));
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 4;
        }

        @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B1> Map<A, B1> updated(A a, B1 b1) {
            Map4 map4;
            A a2 = this.key1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                map4 = new Map4(this.key1, b1, this.key2, this.value2, this.key3, this.value3, this.key4, this.value4);
            } else {
                A a3 = this.key2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    map4 = new Map4(this.key1, this.value1, this.key2, b1, this.key3, this.value3, this.key4, this.value4);
                } else {
                    A a4 = this.key3;
                    if (a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4)) {
                        map4 = new Map4(this.key1, this.value1, this.key2, this.value2, this.key3, b1, this.key4, this.value4);
                    } else {
                        A a5 = this.key4;
                        map4 = a == a5 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a5) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a5) : a.equals(a5) ? new Map4(this.key1, this.value1, this.key2, this.value2, this.key3, this.value3, this.key4, b1) : new HashMap().$plus((Tuple2) new Tuple2<>(this.key1, this.value1), (Tuple2) new Tuple2<>(this.key2, this.value2), (Seq) Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(this.key3, this.value3), new Tuple2(this.key4, this.value4), new Tuple2(a, b1)}));
                    }
                }
            }
            return map4;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$WithDefault.class */
    public static class WithDefault<A, B> extends Map.WithDefault<A, B> implements Map<A, B> {

        /* renamed from: d */
        private final Function1<A, B> f1548d;
        private final Map<A, B> underlying;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDefault(Map<A, B> map, Function1<A, B> function1) {
            super(map, function1);
            this.underlying = map;
            this.f1548d = function1;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            MapLike.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public WithDefault<A, B> $minus(A a) {
            return new WithDefault<>((Map) this.underlying.$minus((Map<A, B>) a), this.f1548d);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> WithDefault<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return updated((WithDefault<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
        }

        @Override // scala.collection.AbstractMap, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
            Map<A, B1> $plus$plus;
            $plus$plus = $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus((GenTraversableOnce) seq);
            return $plus$plus;
        }

        @Override // scala.collection.AbstractMap, scala.collection.MapLike
        public <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
            return MapLike.Cclass.$plus$plus(this, genTraversableOnce);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Iterable> companion() {
            return Iterable.Cclass.companion(this);
        }

        @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
        public WithDefault<A, B> empty() {
            return new WithDefault<>(this.underlying.empty(), this.f1548d);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
        public Map<A, B> filterKeys(Function1<A, Object> function1) {
            return MapLike.Cclass.filterKeys(this, function1);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
        public Set<A> keySet() {
            return MapLike.Cclass.keySet(this);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
        public <C> Map<A, C> mapValues(Function1<B, C> function1) {
            return MapLike.Cclass.mapValues(this, function1);
        }

        @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
            return MapLike.Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Map<A, B> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less) {
            return Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.immutable.MapLike
        public <C, That> That transform(Function2<A, B, C> function2, CanBuildFrom<Map<A, B>, Tuple2<A, C>, That> canBuildFrom) {
            return (That) MapLike.Cclass.transform(this, function2, canBuildFrom);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B1> WithDefault<A, B1> updated(A a, B1 b1) {
            return new WithDefault<>(this.underlying.updated((Map<A, B>) a, (A) b1), this.f1548d);
        }

        @Override // scala.collection.immutable.Map
        public <B1> Map<A, B1> withDefault(Function1<A, B1> function1) {
            return new WithDefault(this.underlying, function1);
        }

        @Override // scala.collection.immutable.Map
        public <B1> Map<A, B1> withDefaultValue(B1 b1) {
            return new WithDefault(this.underlying, new Map$WithDefault$$anonfun$withDefaultValue$2(this, b1));
        }
    }

    /* renamed from: scala.collection.immutable.Map$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$class.class */
    public abstract class Cclass {
        public static void $init$(Map map) {
        }

        public static Map empty(Map map) {
            return Map$.MODULE$.empty();
        }

        public static Map seq(Map map) {
            return map;
        }

        public static Map toMap(Map map, Predef$$less$colon$less predef$$less$colon$less) {
            return map;
        }

        public static Map withDefault(Map map, Function1 function1) {
            return new WithDefault(map, function1);
        }

        public static Map withDefaultValue(Map map, Object obj) {
            return new WithDefault(map, new Map$$anonfun$withDefaultValue$1(map, obj));
        }
    }

    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.Map, scala.collection.MapLike
    Map<A, B> empty();

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Map<A, B> seq();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less);

    @Override // scala.collection.GenMap, scala.collection.MapLike
    <B1> Map<A, B1> updated(A a, B1 b1);

    <B1> Map<A, B1> withDefault(Function1<A, B1> function1);

    <B1> Map<A, B1> withDefaultValue(B1 b1);
}
