package scala.sys.process;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.Seq;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Stream;
import scala.collection.mutable.StringBuilder;
import scala.concurrent.SyncVar;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.sys.package$;
import scala.sys.process.BasicIO;
import scala.sys.process.ProcessBuilder;
import scala.sys.process.ProcessImpl;
@ScalaSignature(bytes = "\u0006\u0001\refAC\u0001\u0003!\u0003\r\tA\u0001\u0005\u00046\n\u0011\u0002K]8dKN\u001c()^5mI\u0016\u0014\u0018*\u001c9m\u0015\t\u0019A!A\u0004qe>\u001cWm]:\u000b\u0005\u00151\u0011aA:zg*\tq!A\u0003tG\u0006d\u0017m\u0005\u0002\u0001\u0013A\u0011!bC\u0007\u0002\r%\u0011AB\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b9\u0001A\u0011\u0001\t\u0002\r\u0011Jg.\u001b;%\u0007\u0001!\u0012!\u0005\t\u0003\u0015II!a\u0005\u0004\u0003\tUs\u0017\u000e\u001e\u0004\u0006+\u0001\u0001!A\u0006\u0002\u000e\t\u0006,Wn\u001c8Ck&dG-\u001a:\u0014\u0005Q9\u0002C\u0001\r\u001a\u001b\u0005\u0001aA\u0002\u000e\u0001\u0003\u000311DA\bBEN$(/Y2u\u0005VLG\u000eZ3s'\u0015I\u0012\u0002\b\u0011&!\tib$D\u0001\u0003\u0013\ty\"A\u0001\bQe>\u001cWm]:Ck&dG-\u001a:\u0011\u0005a\t\u0013B\u0001\u0012$\u0005\u0011\u0019\u0016N\\6\u000b\u0005\u0011\u0012\u0011A\u0004)s_\u000e,7o\u001d\"vS2$WM\u001d\t\u00031\u0019J!aJ\u0012\u0003\rM{WO]2f\u0011\u0015I\u0013\u0004\"\u0001+\u0003\u0019a\u0014N\\5u}Q\tq\u0003C\u0003-3\u0011EQ&\u0001\u0005u_N{WO]2f+\u00059\u0002\"B\u0018\u001a\t#i\u0013A\u0002;p'&t7\u000eC\u000323\u0011\u0005!'A\u0005%Q\u0006\u001c\b\u000e\n2beR\u0011Ad\r\u0005\u0006iA\u0002\r\u0001H\u0001\u0006_RDWM\u001d\u0005\u0006me!\taN\u0001\u000eI!\f7\u000f\u001b\u0013cCJ$#-\u0019:\u0015\u0005qA\u0004\"\u0002\u001b6\u0001\u0004a\u0002\"\u0002\u001e\u001a\t\u0003Y\u0014!\u0004\u0013iCNDG%Y7qI\u0005l\u0007\u000f\u0006\u0002\u001dy!)A'\u000fa\u00019!)a(\u0007C\u0001\u007f\u0005yA\u0005[1tQ\u0012B\u0017m\u001d5%Q\u0006\u001c\b\u000e\u0006\u0002\u001d\u0001\")A'\u0010a\u00019!)!)\u0007C\u0001\u0007\u0006\u0019!/\u001e8\u0015\u0003\u0011\u0003\"!H#\n\u0005\u0019\u0013!a\u0002)s_\u000e,7o\u001d\u0005\u0006\u0005f!\t\u0001\u0013\u000b\u0003\t&CQAS$A\u0002-\u000bAbY8o]\u0016\u001cG/\u00138qkR\u0004\"A\u0003'\n\u000553!a\u0002\"p_2,\u0017M\u001c\u0005\u0006\u0005f!\ta\u0014\u000b\u0003\tBCQ!\u0015(A\u0002I\u000b1\u0001\\8h!\ti2+\u0003\u0002U\u0005\ti\u0001K]8dKN\u001cHj\\4hKJDQAQ\r\u0005\u0002Y#2\u0001R,Y\u0011\u0015\tV\u000b1\u0001S\u0011\u0015QU\u000b1\u0001L\u0011\u0015Q\u0016\u0004\"\u0001\\\u0003)!#-\u00198hI\t\fgnZ\u000b\u00029B\u0011Q\f\u0019\b\u0003\u0015yK!a\u0018\u0004\u0002\rA\u0013X\rZ3g\u0013\t\t'M\u0001\u0004TiJLgn\u001a\u0006\u0003?\u001aAQAW\r\u0005\u0002\u0011$\"\u0001X3\t\u000bE\u001b\u0007\u0019\u0001*\t\u000b\u001dLB\u0011A.\u0002\u001f\u0011\u0012\u0017M\\4%E\u0006tw\r\n7fgNDQaZ\r\u0005\u0002%$\"\u0001\u00186\t\u000bEC\u0007\u0019\u0001*\t\u000b1LB\u0011A7\u0002\u00151Lg.Z*ue\u0016\fW.F\u0001o!\ry'\u000f\u0018\b\u0003\u0015AL!!\u001d\u0004\u0002\u000fA\f7m[1hK&\u00111\u000f\u001e\u0002\u0007'R\u0014X-Y7\u000b\u0005E4\u0001\"\u00027\u001a\t\u00031HC\u00018x\u0011\u0015\tV\u000f1\u0001S\u0011\u0015I\u0018\u0004\"\u0001n\u0003Aa\u0017N\\3TiJ,\u0017-\\0%E\u0006tw\rC\u0003z3\u0011\u00051\u0010\u0006\u0002oy\")\u0011K\u001fa\u0001%\")a0\u0007C\u0001\u007f\u0006)AEY1oOV\u0011\u0011\u0011\u0001\t\u0004\u0015\u0005\r\u0011bAA\u0003\r\t\u0019\u0011J\u001c;\t\ryLB\u0011AA\u0005)\u0011\t\t!a\u0003\t\u0011\u00055\u0011q\u0001a\u0001\u0003\u001f\t!![8\u0011\u0007u\t\t\"C\u0002\u0002\u0014\t\u0011\u0011\u0002\u0015:pG\u0016\u001c8/S(\t\ryLB\u0011AA\f)\u0011\t\t!!\u0007\t\rE\u000b)\u00021\u0001S\u0011\u0019\ti\"\u0007C\u0001\u007f\u0006QAEY1oO\u0012bWm]:\t\u000f\u0005u\u0011\u0004\"\u0001\u0002\"Q!\u0011\u0011AA\u0012\u0011\u0019\t\u0016q\u0004a\u0001%\"9\u0011qE\r\u0005\u0002\u0005%\u0012A\u00033bK6|g.\u001b>fIR\tA\u0004\u0003\u0005\u0002.e\u0001K\u0011BA\u0018\u0003\u0015\u0019H.\u001e:q)\u0015a\u0016\u0011GA\u001d\u0011\u001d\t\u00161\u0006a\u0001\u0003g\u0001BACA\u001b%&\u0019\u0011q\u0007\u0004\u0003\r=\u0003H/[8o\u0011\u001d\tY$a\u000bA\u0002-\u000baa^5uQ&s\u0007b\u00027\u001aA\u0013%\u0011q\b\u000b\b]\u0006\u0005\u0013QIA%\u0011\u001d\t\u0019%!\u0010A\u0002-\u000b\u0011b^5uQ&s\u0007/\u001e;\t\u000f\u0005\u001d\u0013Q\ba\u0001\u0017\u0006\u0001bn\u001c8[KJ|W\t_2faRLwN\u001c\u0005\b#\u0006u\u0002\u0019AA\u001a\u0011!\ti%\u0007Q\u0005\n\u0005=\u0013a\u0003:v]\n+hMZ3sK\u0012$b!!\u0001\u0002R\u0005M\u0003BB)\u0002L\u0001\u0007!\u000b\u0003\u0004K\u0003\u0017\u0002\ra\u0013\u0005\b\u0003/JB\u0011AA-\u0003%\u0019\u0017M\u001c)ja\u0016$v.F\u0001L\u0011\u001d\ti&\u0007C\u0001\u00033\nA\u0002[1t\u000bbLGOV1mk\u0016D\u0011\"!\u0019\u0015\u0005\u0003\u0005\u000b\u0011\u0002\u000f\u0002\u0015UtG-\u001a:ms&tw\r\u0003\u0004*)\u0011\u0005\u0011Q\r\u000b\u0005\u0003O\nI\u0007\u0005\u0002\u0019)!9\u0011\u0011MA2\u0001\u0004a\u0002B\u0002\"\u0015\t\u000b\ti\u0007F\u0002E\u0003_B\u0001\"!\u0004\u0002l\u0001\u0007\u0011q\u0002\u0004\b\u0003g\u0002\u0001AAA;\u0005\u0015!U/\\7z'\r\t\th\u0006\u0005\u000b\u0003s\n\tH!b\u0001\n\u0003Z\u0016\u0001\u0003;p'R\u0014\u0018N\\4\t\u0015\u0005u\u0014\u0011\u000fB\u0001B\u0003%A,A\u0005u_N#(/\u001b8hA!Y\u0011\u0011QA9\u0005\u0003%\u000b\u0011BAB\u0003%)\u00070\u001b;WC2,X\rE\u0003\u000b\u0003\u000b\u000b\t!C\u0002\u0002\b\u001a\u0011\u0001\u0002\u00102z]\u0006lWM\u0010\u0005\bS\u0005ED\u0011AAF)\u0019\ti)a$\u0002\u0012B\u0019\u0001$!\u001d\t\u000f\u0005e\u0014\u0011\u0012a\u00019\"I\u0011\u0011QAE\t\u0003\u0007\u00111\u0011\u0005\b\u0005\u0006ED\u0011IAK)\r!\u0015q\u0013\u0005\t\u0003\u001b\t\u0019\n1\u0001\u0002\u0010!A\u0011qKA9\t\u0003\nIFB\u0004\u0002\u001e\u0002\u0001!!a(\u0003\u0011U\u0013F*\u00138qkR\u001cB!a'\u0002\"B\u0019\u0001$a)\u0007\u000f\u0005\u0015\u0006\u0001\u0001\u0002\u0002(\nq\u0011j\u0015;sK\u0006l')^5mI\u0016\u00148\u0003BAR\u0003S\u00032\u0001GAV\r!\ti\u000bAA\u0001\u0005\u0005=&!\u0004+ie\u0016\fGMQ;jY\u0012,'oE\u0002\u0002,^A!\"!\u001f\u0002,\n\u0015\r\u0011\"\u0011\\\u0011)\ti(a+\u0003\u0002\u0003\u0006I\u0001\u0018\u0005\f\u0003o\u000bYK!A!\u0002\u0013\tI,A\u0004sk:LU\u000e\u001d7\u0011\r)\tY,a\u0004\u0012\u0013\r\tiL\u0002\u0002\n\rVt7\r^5p]FBq!KAV\t\u0003\t\t\r\u0006\u0004\u0002*\u0006\r\u0017Q\u0019\u0005\b\u0003s\ny\f1\u0001]\u0011!\t9,a0A\u0002\u0005e\u0006b\u0002\"\u0002,\u0012\u0005\u0013\u0011\u001a\u000b\u0004\t\u0006-\u0007\u0002CA\u0007\u0003\u000f\u0004\r!a\u0004\t\u0017\u0005=\u00171\u0015B\u0001J\u0003%\u0011\u0011[\u0001\u0007gR\u0014X-Y7\u0011\u000b)\t))a5\u0011\t\u0005U\u00171\u001c\b\u0004;\u0005]\u0017bAAm\u0005\u0005y\u0001O]8dKN\u001c\u0018J\u001c;fe:\fG.\u0003\u0003\u0002^\u0006}'aC%oaV$8\u000b\u001e:fC6T1!!7\u0003\u00111\t\u0019/a)\u0003\u0002\u0003\u0006I\u0001XAY\u0003\u0015a\u0017MY3m\u0011\u001dI\u00131\u0015C\u0001\u0003O$b!!)\u0002j\u0006-\b\"CAh\u0003K$\t\u0019AAi\u0011\u001d\t\u0019/!:A\u0002qC\u0001\"!\u0018\u0002$\u0012\u0005\u0013\u0011\f\u0005\f\u0003c\fYJ!A!\u0002\u0013\t\u00190A\u0002ve2\u0004B!!6\u0002v&!\u0011q_Ap\u0005\r)&\u000b\u0014\u0005\bS\u0005mE\u0011AA~)\u0011\ti0a@\u0011\u0007a\tY\n\u0003\u0005\u0002r\u0006e\b\u0019AAz\r\u001d\u0011\u0019\u0001\u0001\u0001\u0003\u0005\u000b\u0011\u0011BR5mK&s\u0007/\u001e;\u0014\t\t\u0005\u0011\u0011\u0015\u0005\f\u0005\u0013\u0011\tA!A!\u0002\u0013\u0011Y!\u0001\u0003gS2,\u0007\u0003BAk\u0005\u001bIAAa\u0004\u0002`\n!a)\u001b7f\u0011\u001dI#\u0011\u0001C\u0001\u0005'!BA!\u0006\u0003\u0018A\u0019\u0001D!\u0001\t\u0011\t%!\u0011\u0003a\u0001\u0005\u00171qAa\u0007\u0001\u0001\t\u0011iB\u0001\u0006GS2,w*\u001e;qkR\u001cBA!\u0007\u0003 A\u0019\u0001D!\t\u0007\u000f\t\r\u0002\u0001\u0001\u0002\u0003&\tqqj\u0015;sK\u0006l')^5mI\u0016\u00148\u0003\u0002B\u0011\u0003SC1\"a4\u0003\"\t\u0005I\u0015!\u0003\u0003*A)!\"!\"\u0003,A!\u0011Q\u001bB\u0017\u0013\u0011\u0011y#a8\u0003\u0019=+H\u000f];u'R\u0014X-Y7\t\u0019\u0005\r(\u0011\u0005B\u0001B\u0003%A,!-\t\u000f%\u0012\t\u0003\"\u0001\u00036Q1!q\u0004B\u001c\u0005sA\u0011\"a4\u00034\u0011\u0005\rA!\u000b\t\u000f\u0005\r(1\u0007a\u00019\"A\u0011Q\fB\u0011\t\u0003\nI\u0006C\u0006\u0003\n\te!\u0011!Q\u0001\n\t-\u0001B\u0003B!\u00053\u0011\t\u0011)A\u0005\u0017\u00061\u0011\r\u001d9f]\u0012Dq!\u000bB\r\t\u0003\u0011)\u0005\u0006\u0004\u0003H\t%#1\n\t\u00041\te\u0001\u0002\u0003B\u0005\u0005\u0007\u0002\rAa\u0003\t\u000f\t\u0005#1\ta\u0001\u0017\u001a9!q\n\u0001\u0001\u0005\tE#AB*j[BdWmE\u0002\u0003N]A1B!\u0016\u0003N\t\u0005\t\u0015!\u0003\u0003X\u0005\t\u0001\u000f\u0005\u0003\u0002V\ne\u0013\u0002\u0002B.\u0003?\u0014qB\u0013)s_\u000e,7o\u001d\"vS2$WM\u001d\u0005\bS\t5C\u0011\u0001B0)\u0011\u0011\tGa\u0019\u0011\u0007a\u0011i\u0005\u0003\u0005\u0003V\tu\u0003\u0019\u0001B,\u0011\u001d\u0011%Q\nC!\u0005O\"2\u0001\u0012B5\u0011!\tiA!\u001aA\u0002\u0005=\u0001\u0002CA=\u0005\u001b\"\tE!\u001c\u0015\u0005\t=\u0004\u0003\u0002B9\u0005wj!Aa\u001d\u000b\t\tU$qO\u0001\u0005Y\u0006twM\u0003\u0002\u0003z\u0005!!.\u0019<b\u0013\r\t'1\u000f\u0005\t\u0003/\u0012i\u0005\"\u0011\u0002Z\u00199!\u0011\u0011\u0001\u0001\u0005\t\r%aB+S\u0019&k\u0007\u000f\\\n\u0007\u0005\u007fJ!QQ\u0013\u0011\u0007a\u00119)C\u0002\u0003\n\u000e\u0012!\"\u0016*M\u0005VLG\u000eZ3s\u0011-\t\tPa \u0003\u0002\u0003\u0006I!a=\t\u000f%\u0012y\b\"\u0001\u0003\u0010R!!\u0011\u0013BJ!\rA\"q\u0010\u0005\t\u0003c\u0014i\t1\u0001\u0002t\"9AFa \u0005\u0012\t]UCAA\u007f\r\u001d\u0011Y\n\u0001\u0001\u0003\u0005;\u0013\u0001BR5mK&k\u0007\u000f\\\n\b\u00053K!q\u0014\u0011&!\rA\"\u0011U\u0005\u0004\u0005G\u001b#a\u0003$jY\u0016\u0014U/\u001b7eKJD1Ba*\u0003\u001a\n\u0005\t\u0015!\u0003\u0003\f\u0005!!-Y:f\u0011\u001dI#\u0011\u0014C\u0001\u0005W#BA!,\u00030B\u0019\u0001D!'\t\u0011\t\u001d&\u0011\u0016a\u0001\u0005\u0017Aq\u0001\fBM\t#\u0011\u0019,\u0006\u0002\u0003\u0016!9qF!'\u0005\u0012\t]VC\u0001B$\u0011!\u0011YL!'\u0005\u0002\tu\u0016a\u0004\u0013iCNDG\u0005\\3tg\u0012bWm]:\u0015\u0007q\u0011y\f\u0003\u0005\u0003B\ne\u0006\u0019\u0001B\u0006\u0003\u00051\u0007\u0002\u0003B^\u00053#\tA!2\u0015\u0007q\u00119\r\u0003\u0005\u0003J\n\r\u0007\u0019AAz\u0003\u0005)\b\u0002\u0003B^\u00053#\tA!4\u0015\u0007q\u0011y\rC\u0005\u0003R\n-G\u00111\u0001\u0002R\u0006\t1\u000f\u0003\u0005\u0003<\neE\u0011\u0001Bk)\ra\"q\u001b\u0005\b\u00053\u0014\u0019\u000e1\u0001\u001d\u0003\u0005\u0011g\u0001\u0003Bo\u0001\u0005\u0005!Aa8\u0003\u0019\t\u000b7/[2Ck&dG-\u001a:\u0014\u0007\tmw\u0003C\u0004*\u00057$\tAa9\u0015\u0005\t\u0015\bc\u0001\r\u0003\\\"I!\u0011\u001eBnA\u0013E!1^\u0001\rG\",7m\u001b(piRC\u0017n\u001d\u000b\u0004#\t5\bb\u0002Bx\u0005O\u0004\r\u0001H\u0001\u0002C\"9!Ia7\u0005\u0006\tMHc\u0001#\u0003v\"A\u0011Q\u0002By\u0001\u0004\ty\u0001C\u0005\u0003z\nm\u0007U\"\u0005\u0003|\u0006i1M]3bi\u0016\u0004&o\\2fgN$BA!@\u0004\u000eA!!q`B\u0003\u001d\ri2\u0011A\u0005\u0004\u0007\u0007\u0011\u0011a\u0002)s_\u000e,7o]\u0005\u0005\u0007\u000f\u0019IA\u0001\u0007CCNL7\r\u0015:pG\u0016\u001c8/C\u0002\u0004\f\t\u00111\u0002\u0015:pG\u0016\u001c8/S7qY\"A\u0011Q\u0002B|\u0001\u0004\tyA\u0002\u0005\u0004\u0012\u0001\t\tAAB\n\u0005E\u0019V-];f]RL\u0017\r\u001c\"vS2$WM]\n\u0005\u0007\u001f\u0011)\u000f\u0003\u0006\u0003p\u000e=!\u0011!Q\u0001\nqA!B!7\u0004\u0010\t\u0005\t\u0015!\u0003\u001d\u0011)\u0019Yba\u0004\u0003\u0002\u0003\u0006I\u0001X\u0001\u000f_B,'/\u0019;peN#(/\u001b8h\u0011\u001dI3q\u0002C\u0001\u0007?!\u0002b!\t\u0004$\r\u00152q\u0005\t\u00041\r=\u0001b\u0002Bx\u0007;\u0001\r\u0001\b\u0005\b\u00053\u001ci\u00021\u0001\u001d\u0011\u001d\u0019Yb!\bA\u0002qC\u0001\"!\u001f\u0004\u0010\u0011\u0005#Q\u000e\u0004\b\u0007[\u0001\u0001AAB\u0018\u00051\u0001\u0016\u000e]3e\u0005VLG\u000eZ3s'\u0011\u0019Yc!\t\t\u0015\rM21\u0006B\u0001B\u0003%A$A\u0003gSJ\u001cH\u000f\u0003\u0006\u00048\r-\"\u0011!Q\u0001\nq\taa]3d_:$\u0007BCB\u001e\u0007W\u0011\t\u0011)A\u0005\u0017\u00069Ao\\#se>\u0014\bbB\u0015\u0004,\u0011\u00051q\b\u000b\t\u0007\u0003\u001a\u0019e!\u0012\u0004HA\u0019\u0001da\u000b\t\u000f\rM2Q\ba\u00019!91qGB\u001f\u0001\u0004a\u0002bBB\u001e\u0007{\u0001\ra\u0013\u0005\t\u0005s\u001cY\u0003\"\u0011\u0004LQ!1QJB*!\u0011\u0011ypa\u0014\n\t\rE3\u0011\u0002\u0002\u000f!&\u0004X\r\u001a)s_\u000e,7o]3t\u0011!\tia!\u0013A\u0002\u0005=aaBB,\u0001\u0001\u00111\u0011\f\u0002\u000b\u0003:$')^5mI\u0016\u00148\u0003BB+\u0007CA!ba\r\u0004V\t\u0005\t\u0015!\u0003\u001d\u0011)\u00199d!\u0016\u0003\u0002\u0003\u0006I\u0001\b\u0005\bS\rUC\u0011AB1)\u0019\u0019\u0019g!\u001a\u0004hA\u0019\u0001d!\u0016\t\u000f\rM2q\fa\u00019!91qGB0\u0001\u0004a\u0002\u0002\u0003B}\u0007+\"\tea\u001b\u0015\t\r541\u000f\t\u0005\u0005\u007f\u001cy'\u0003\u0003\u0004r\r%!AC!oIB\u0013xnY3tg\"A\u0011QBB5\u0001\u0004\tyAB\u0004\u0004x\u0001\u0001!a!\u001f\u0003\u0013=\u0013()^5mI\u0016\u00148\u0003BB;\u0007CA!ba\r\u0004v\t\u0005\t\u0015!\u0003\u001d\u0011)\u00199d!\u001e\u0003\u0002\u0003\u0006I\u0001\b\u0005\bS\rUD\u0011ABA)\u0019\u0019\u0019i!\"\u0004\bB\u0019\u0001d!\u001e\t\u000f\rM2q\u0010a\u00019!91qGB@\u0001\u0004a\u0002\u0002\u0003B}\u0007k\"\tea#\u0015\t\r551\u0013\t\u0005\u0005\u007f\u001cy)\u0003\u0003\u0004\u0012\u000e%!!C(s!J|7-Z:t\u0011!\tia!#A\u0002\u0005=aaBBL\u0001\u0001\u00111\u0011\u0014\u0002\u0010'\u0016\fX/\u001a8dK\n+\u0018\u000e\u001c3feN!1QSB\u0011\u0011)\u0019\u0019d!&\u0003\u0002\u0003\u0006I\u0001\b\u0005\u000b\u0007o\u0019)J!A!\u0002\u0013a\u0002bB\u0015\u0004\u0016\u0012\u00051\u0011\u0015\u000b\u0007\u0007G\u001b)ka*\u0011\u0007a\u0019)\nC\u0004\u00044\r}\u0005\u0019\u0001\u000f\t\u000f\r]2q\u0014a\u00019!A!\u0011`BK\t\u0003\u001aY\u000b\u0006\u0003\u0004.\u000eM\u0006\u0003\u0002B��\u0007_KAa!-\u0004\n\ty\u0001K]8dKN\u001c8+Z9vK:\u001cW\r\u0003\u0005\u0002\u000e\r%\u0006\u0019AA\b\u001d\ri2qW\u0005\u0003I\t\u0001")
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl.class */
public interface ProcessBuilderImpl {

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$AbstractBuilder.class */
    public abstract class AbstractBuilder implements ProcessBuilder {
        public final /* synthetic */ ProcessBuilder$ $outer;

        public AbstractBuilder(ProcessBuilder$ processBuilder$) {
            Objects.requireNonNull(processBuilder$);
            this.$outer = processBuilder$;
            ProcessBuilder.Source.Cclass.$init$(this);
            ProcessBuilder.Sink.Cclass.$init$(this);
            ProcessBuilder.Cclass.$init$(this);
        }

        private Stream<String> lineStream(boolean z, boolean z2, Option<ProcessLogger> option) {
            BasicIO.Streamed apply = BasicIO$Streamed$.MODULE$.apply(z2);
            BasicIO$ basicIO$ = BasicIO$.MODULE$;
            ProcessImpl$Spawn$$anon$1 processImpl$Spawn$$anon$1 = new ProcessImpl$Spawn$$anon$1(Process$.MODULE$.Spawn(), new ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1(this, apply, run(new ProcessIO(new BasicIO$$anonfun$input$1(z), new BasicIO$$anonfun$processFully$1(apply.process()), basicIO$.getErr(option)))));
            processImpl$Spawn$$anon$1.setDaemon(false);
            processImpl$Spawn$$anon$1.start();
            return (Stream) apply.stream().apply();
        }

        private int runBuffered(ProcessLogger processLogger, boolean z) {
            return BoxesRunTime.unboxToInt(processLogger.buffer(new ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1(this, processLogger, z)));
        }

        private String slurp(Option<ProcessLogger> option, boolean z) {
            StringBuffer stringBuffer = new StringBuffer();
            int $bang = $bang(BasicIO$.MODULE$.apply(z, stringBuffer, option));
            if ($bang == 0) {
                return stringBuffer.toString();
            }
            throw package$.MODULE$.error(new StringBuilder().append((Object) "Nonzero exit value: ").append(BoxesRunTime.boxToInteger($bang)).toString());
        }

        @Override // scala.sys.process.ProcessBuilder
        public int $bang() {
            return run(false).exitValue();
        }

        public int $bang(ProcessIO processIO) {
            return run(processIO).exitValue();
        }

        @Override // scala.sys.process.ProcessBuilder
        public int $bang(ProcessLogger processLogger) {
            return runBuffered(processLogger, false);
        }

        @Override // scala.sys.process.ProcessBuilder
        public String $bang$bang() {
            return slurp(None$.MODULE$, false);
        }

        @Override // scala.sys.process.ProcessBuilder
        public String $bang$bang(ProcessLogger processLogger) {
            return slurp(new Some(processLogger), false);
        }

        @Override // scala.sys.process.ProcessBuilder
        public String $bang$bang$less() {
            return slurp(None$.MODULE$, true);
        }

        @Override // scala.sys.process.ProcessBuilder
        public String $bang$bang$less(ProcessLogger processLogger) {
            return slurp(new Some(processLogger), true);
        }

        @Override // scala.sys.process.ProcessBuilder
        public int $bang$less() {
            return run(true).exitValue();
        }

        @Override // scala.sys.process.ProcessBuilder
        public int $bang$less(ProcessLogger processLogger) {
            return runBuffered(processLogger, true);
        }

        @Override // scala.sys.process.ProcessBuilder
        public ProcessBuilder $hash$amp$amp(ProcessBuilder processBuilder) {
            return new AndBuilder(scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer(), this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder
        public ProcessBuilder $hash$bar(ProcessBuilder processBuilder) {
            Predef$ predef$ = Predef$.MODULE$;
            if (processBuilder.canPipeTo()) {
                return new PipedBuilder(scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer(), this, processBuilder, false);
            }
            throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "Piping to multiple processes is not supported.").toString());
        }

        @Override // scala.sys.process.ProcessBuilder
        public ProcessBuilder $hash$bar$bar(ProcessBuilder processBuilder) {
            return new OrBuilder(scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer(), this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, false);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(Function0<OutputStream> function0) {
            ProcessBuilder $hash$greater;
            $hash$greater = $hash$greater(new OStreamBuilder(ProcessBuilder$.MODULE$, function0, "<output stream>"));
            return $hash$greater;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(ProcessBuilder processBuilder) {
            return ProcessBuilder.Source.Cclass.$hash$greater(this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, true);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder
        public ProcessBuilder $hash$hash$hash(ProcessBuilder processBuilder) {
            return new SequenceBuilder(scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer(), this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(File file) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new FileInput(ProcessBuilder$.MODULE$, file));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(URL url) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new URLInput(ProcessBuilder$.MODULE$, url));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(Function0<InputStream> function0) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new IStreamBuilder(ProcessBuilder$.MODULE$, function0, "<input stream>"));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(ProcessBuilder processBuilder) {
            return ProcessBuilder.Sink.Cclass.$hash$less(this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder
        public boolean canPipeTo() {
            return false;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder cat() {
            return ProcessBuilder.Source.Cclass.cat(this);
        }

        public ProcessBuilder daemonized() {
            return new DaemonBuilder(scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer(), this);
        }

        @Override // scala.sys.process.ProcessBuilder
        public boolean hasExitValue() {
            return true;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lineStream() {
            return lineStream(false, true, None$.MODULE$);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lineStream(ProcessLogger processLogger) {
            return lineStream(false, true, new Some(processLogger));
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lineStream_$bang() {
            return lineStream(false, false, None$.MODULE$);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lineStream_$bang(ProcessLogger processLogger) {
            return lineStream(false, false, new Some(processLogger));
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lines() {
            return ProcessBuilder.Cclass.lines(this);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lines(ProcessLogger processLogger) {
            return ProcessBuilder.Cclass.lines(this, processLogger);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lines_$bang() {
            Stream<String> lineStream_$bang;
            lineStream_$bang = lineStream_$bang();
            return lineStream_$bang;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Stream<String> lines_$bang(ProcessLogger processLogger) {
            Stream<String> lineStream_$bang;
            lineStream_$bang = lineStream_$bang(processLogger);
            return lineStream_$bang;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run() {
            return run(false);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(ProcessLogger processLogger) {
            return run(processLogger, false);
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(ProcessLogger processLogger, boolean z) {
            return run(BasicIO$.MODULE$.apply(z, processLogger));
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(boolean z) {
            return run(BasicIO$.MODULE$.standard(z));
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer() {
            return this.$outer;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public AbstractBuilder toSink() {
            return this;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public AbstractBuilder toSource() {
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$AndBuilder.class */
    public class AndBuilder extends SequentialBuilder {
        private final ProcessBuilder first;
        private final ProcessBuilder second;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AndBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2) {
            super(processBuilder$, processBuilder, processBuilder2, "#&&");
            this.first = processBuilder;
            this.second = processBuilder2;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.BasicBuilder
        public ProcessImpl.AndProcess createProcess(ProcessIO processIO) {
            return new ProcessImpl.AndProcess(Process$.MODULE$, this.first, this.second, processIO);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$AndBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$BasicBuilder.class */
    public abstract class BasicBuilder extends AbstractBuilder {
        public BasicBuilder(ProcessBuilder$ processBuilder$) {
            super(processBuilder$);
        }

        public void checkNotThis(ProcessBuilder processBuilder) {
            Predef$ predef$ = Predef$.MODULE$;
            if (processBuilder == null || !processBuilder.equals(this)) {
                return;
            }
            throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) new StringBuilder().append((Object) "Compound process '").append(processBuilder).append((Object) "' cannot contain itself.").toString()).toString());
        }

        public abstract ProcessImpl.BasicProcess createProcess(ProcessIO processIO);

        @Override // scala.sys.process.ProcessBuilder
        public final Process run(ProcessIO processIO) {
            ProcessImpl.BasicProcess createProcess = createProcess(processIO);
            createProcess.start();
            return createProcess;
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$BasicBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$DaemonBuilder.class */
    public class DaemonBuilder extends AbstractBuilder {
        private final ProcessBuilder underlying;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DaemonBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder) {
            super(processBuilder$);
            this.underlying = processBuilder;
        }

        @Override // scala.sys.process.ProcessBuilder
        public final Process run(ProcessIO processIO) {
            return this.underlying.run(processIO.daemonized());
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$DaemonBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$Dummy.class */
    public class Dummy extends AbstractBuilder {
        private final Function0<Object> exitValue;
        private final String toString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Dummy(ProcessBuilder$ processBuilder$, String str, Function0<Object> function0) {
            super(processBuilder$);
            this.toString = str;
            this.exitValue = function0;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.AbstractBuilder, scala.sys.process.ProcessBuilder
        public boolean canPipeTo() {
            return true;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(ProcessIO processIO) {
            return new ProcessImpl.DummyProcess(Process$.MODULE$, this.exitValue);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$Dummy$$$outer() {
            return this.$outer;
        }

        public String toString() {
            return this.toString;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$FileImpl.class */
    public class FileImpl implements ProcessBuilder.FileBuilder {
        public final /* synthetic */ ProcessBuilder$ $outer;
        private final File base;

        public FileImpl(ProcessBuilder$ processBuilder$, File file) {
            this.base = file;
            Objects.requireNonNull(processBuilder$);
            this.$outer = processBuilder$;
            ProcessBuilder.Sink.Cclass.$init$(this);
            ProcessBuilder.Source.Cclass.$init$(this);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, false);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(Function0<OutputStream> function0) {
            ProcessBuilder $hash$greater;
            $hash$greater = $hash$greater(new OStreamBuilder(ProcessBuilder$.MODULE$, function0, "<output stream>"));
            return $hash$greater;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(ProcessBuilder processBuilder) {
            return ProcessBuilder.Source.Cclass.$hash$greater(this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, true);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(File file) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new FileInput(ProcessBuilder$.MODULE$, file));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(URL url) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new URLInput(ProcessBuilder$.MODULE$, url));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(Function0<InputStream> function0) {
            ProcessBuilder $hash$less;
            $hash$less = $hash$less(new IStreamBuilder(ProcessBuilder$.MODULE$, function0, "<input stream>"));
            return $hash$less;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public ProcessBuilder $hash$less(ProcessBuilder processBuilder) {
            return ProcessBuilder.Sink.Cclass.$hash$less(this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.FileBuilder
        public ProcessBuilder $hash$less$less(File file) {
            return $hash$less$less(new FileInput(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), file));
        }

        @Override // scala.sys.process.ProcessBuilder.FileBuilder
        public ProcessBuilder $hash$less$less(URL url) {
            return $hash$less$less(new URLInput(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), url));
        }

        @Override // scala.sys.process.ProcessBuilder.FileBuilder
        public ProcessBuilder $hash$less$less(Function0<InputStream> function0) {
            return $hash$less$less(new IStreamBuilder(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), function0, "<input stream>"));
        }

        @Override // scala.sys.process.ProcessBuilder.FileBuilder
        public ProcessBuilder $hash$less$less(ProcessBuilder processBuilder) {
            return new PipedBuilder(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), processBuilder, new FileOutput(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), this.base, true), false);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder cat() {
            return ProcessBuilder.Source.Cclass.cat(this);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer() {
            return this.$outer;
        }

        @Override // scala.sys.process.ProcessBuilder.Sink
        public FileOutput toSink() {
            return new FileOutput(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), this.base, false);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public FileInput toSource() {
            return new FileInput(scala$sys$process$ProcessBuilderImpl$FileImpl$$$outer(), this.base);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$FileInput.class */
    public class FileInput extends IStreamBuilder {
        public FileInput(ProcessBuilder$ processBuilder$, File file) {
            super(processBuilder$, new ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2(processBuilder$, file), file.getAbsolutePath());
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$FileInput$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$FileOutput.class */
    public class FileOutput extends OStreamBuilder {
        public FileOutput(ProcessBuilder$ processBuilder$, File file, boolean z) {
            super(processBuilder$, new ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3(processBuilder$, file, z), file.getAbsolutePath());
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$FileOutput$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$IStreamBuilder.class */
    public class IStreamBuilder extends ThreadBuilder {
        public IStreamBuilder(ProcessBuilder$ processBuilder$, Function0<InputStream> function0, String str) {
            super(processBuilder$, str, new ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5(processBuilder$, function0));
        }

        @Override // scala.sys.process.ProcessBuilderImpl.AbstractBuilder, scala.sys.process.ProcessBuilder
        public boolean hasExitValue() {
            return false;
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$IStreamBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$OStreamBuilder.class */
    public class OStreamBuilder extends ThreadBuilder {
        public OStreamBuilder(ProcessBuilder$ processBuilder$, Function0<OutputStream> function0, String str) {
            super(processBuilder$, str, new ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4(processBuilder$, function0));
        }

        @Override // scala.sys.process.ProcessBuilderImpl.AbstractBuilder, scala.sys.process.ProcessBuilder
        public boolean hasExitValue() {
            return false;
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$OStreamBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$OrBuilder.class */
    public class OrBuilder extends SequentialBuilder {
        private final ProcessBuilder first;
        private final ProcessBuilder second;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OrBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2) {
            super(processBuilder$, processBuilder, processBuilder2, "#||");
            this.first = processBuilder;
            this.second = processBuilder2;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.BasicBuilder
        public ProcessImpl.OrProcess createProcess(ProcessIO processIO) {
            return new ProcessImpl.OrProcess(Process$.MODULE$, this.first, this.second, processIO);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$OrBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$PipedBuilder.class */
    public class PipedBuilder extends SequentialBuilder {
        private final ProcessBuilder first;
        private final ProcessBuilder second;
        private final boolean toError;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PipedBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, boolean z) {
            super(processBuilder$, processBuilder, processBuilder2, z ? "#|!" : "#|");
            this.first = processBuilder;
            this.second = processBuilder2;
            this.toError = z;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.BasicBuilder
        public ProcessImpl.PipedProcesses createProcess(ProcessIO processIO) {
            return new ProcessImpl.PipedProcesses(Process$.MODULE$, this.first, this.second, processIO, this.toError);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$PipedBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$SequenceBuilder.class */
    public class SequenceBuilder extends SequentialBuilder {
        private final ProcessBuilder first;
        private final ProcessBuilder second;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SequenceBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2) {
            super(processBuilder$, processBuilder, processBuilder2, "###");
            this.first = processBuilder;
            this.second = processBuilder2;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.BasicBuilder
        public ProcessImpl.ProcessSequence createProcess(ProcessIO processIO) {
            return new ProcessImpl.ProcessSequence(Process$.MODULE$, this.first, this.second, processIO);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$SequenceBuilder$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$SequentialBuilder.class */
    public abstract class SequentialBuilder extends BasicBuilder {

        /* renamed from: a */
        private final ProcessBuilder f1635a;

        /* renamed from: b */
        private final ProcessBuilder f1636b;
        private final String operatorString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SequentialBuilder(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, String str) {
            super(processBuilder$);
            this.f1635a = processBuilder;
            this.f1636b = processBuilder2;
            this.operatorString = str;
            checkNotThis(processBuilder);
            checkNotThis(processBuilder2);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$SequentialBuilder$$$outer() {
            return this.$outer;
        }

        public String toString() {
            return new StringBuilder().append((Object) " ( ").append(this.f1635a).append((Object) " ").append((Object) this.operatorString).append((Object) " ").append(this.f1636b).append((Object) " ) ").toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$Simple.class */
    public class Simple extends AbstractBuilder {

        /* renamed from: p */
        private final ProcessBuilder f1637p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simple(ProcessBuilder$ processBuilder$, ProcessBuilder processBuilder) {
            super(processBuilder$);
            this.f1637p = processBuilder;
        }

        @Override // scala.sys.process.ProcessBuilderImpl.AbstractBuilder, scala.sys.process.ProcessBuilder
        public boolean canPipeTo() {
            return true;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(ProcessIO processIO) {
            Process start = this.f1637p.start();
            return new ProcessImpl.SimpleProcess(Process$.MODULE$, start, Process$.MODULE$.Spawn().apply(new ProcessBuilderImpl$Simple$$anonfun$2(this, processIO, start), true), (this.f1637p.redirectErrorStream() ? Nil$.MODULE$ : List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new Thread[]{Process$.MODULE$.Spawn().apply(new ProcessBuilderImpl$Simple$$anonfun$4(this, processIO, start), processIO.daemonizeThreads())}))).$colon$colon(Process$.MODULE$.Spawn().apply(new ProcessBuilderImpl$Simple$$anonfun$3(this, processIO, start), processIO.daemonizeThreads())));
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$Simple$$$outer() {
            return this.$outer;
        }

        public String toString() {
            return this.f1637p.command().toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$ThreadBuilder.class */
    public abstract class ThreadBuilder extends AbstractBuilder {
        public final Function1<ProcessIO, BoxedUnit> scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl;
        private final String toString;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ThreadBuilder(ProcessBuilder$ processBuilder$, String str, Function1<ProcessIO, BoxedUnit> function1) {
            super(processBuilder$);
            this.toString = str;
            this.scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl = function1;
        }

        @Override // scala.sys.process.ProcessBuilder
        public Process run(ProcessIO processIO) {
            SyncVar syncVar = new SyncVar();
            syncVar.put(BoxesRunTime.boxToBoolean(false));
            return new ProcessImpl.ThreadProcess(Process$.MODULE$, Process$.MODULE$.Spawn().apply(new ProcessBuilderImpl$ThreadBuilder$$anonfun$1(this, processIO, syncVar), processIO.daemonizeThreads()), syncVar);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$$outer() {
            return this.$outer;
        }

        public String toString() {
            return this.toString;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$URLImpl.class */
    public class URLImpl implements ProcessBuilder.URLBuilder {
        public final /* synthetic */ ProcessBuilder$ $outer;
        private final URL url;

        public URLImpl(ProcessBuilder$ processBuilder$, URL url) {
            this.url = url;
            Objects.requireNonNull(processBuilder$);
            this.$outer = processBuilder$;
            ProcessBuilder.Source.Cclass.$init$(this);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, false);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(Function0<OutputStream> function0) {
            ProcessBuilder $hash$greater;
            $hash$greater = $hash$greater(new OStreamBuilder(ProcessBuilder$.MODULE$, function0, "<output stream>"));
            return $hash$greater;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater(ProcessBuilder processBuilder) {
            return ProcessBuilder.Source.Cclass.$hash$greater(this, processBuilder);
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder $hash$greater$greater(File file) {
            ProcessBuilder file2;
            file2 = ProcessBuilder.Source.Cclass.toFile(this, file, true);
            return file2;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public ProcessBuilder cat() {
            return ProcessBuilder.Source.Cclass.cat(this);
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$URLImpl$$$outer() {
            return this.$outer;
        }

        @Override // scala.sys.process.ProcessBuilder.Source
        public URLInput toSource() {
            return new URLInput(scala$sys$process$ProcessBuilderImpl$URLImpl$$$outer(), this.url);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$URLInput.class */
    public class URLInput extends IStreamBuilder {
        public URLInput(ProcessBuilder$ processBuilder$, URL url) {
            super(processBuilder$, new ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1(processBuilder$, url), url.toString());
        }

        public /* synthetic */ ProcessBuilder$ scala$sys$process$ProcessBuilderImpl$URLInput$$$outer() {
            return this.$outer;
        }
    }

    /* renamed from: scala.sys.process.ProcessBuilderImpl$class */
    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$class.class */
    public abstract class Cclass {
        public static void $init$(ProcessBuilder$ processBuilder$) {
        }
    }
}
