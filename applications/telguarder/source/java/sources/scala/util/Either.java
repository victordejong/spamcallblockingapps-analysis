package scala.util;

import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Product;
import scala.Serializable;
import scala.Some;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0011mc!B\u0001\u0003\u0003C9!AB#ji\",'O\u0003\u0002\u0004\t\u0005!Q\u000f^5m\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0004\u0011Qq2C\u0001\u0001\n!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001d\u0001!\taD\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003A\u0001B!\u0005\u0001\u0013;5\t!\u0001\u0005\u0002\u0014)1\u0001AAB\u000b\u0001\t\u000b\u0007aCA\u0001B#\t9\"\u0004\u0005\u0002\u000b1%\u0011\u0011\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ1$\u0003\u0002\u001d\t\t\u0019\u0011I\\=\u0011\u0005MqBAB\u0010\u0001\t\u000b\u0007aCA\u0001C\u0011\u0015\t\u0003\u0001\"\u0001#\u0003\u0011aWM\u001a;\u0016\u0003\r\u0002B\u0001J.\u0013;9\u0011\u0011#J\u0004\u0006M\tA\taJ\u0001\u0007\u000b&$\b.\u001a:\u0011\u0005EAc!B\u0001\u0003\u0011\u0003I3C\u0001\u0015\n\u0011\u0015q\u0001\u0006\"\u0001,)\u00059c\u0001B\u0017)\u00079\u0012q\"T3sO\u0016\f'\r\\3FSRDWM]\u000b\u0003_a\u001a\"\u0001\f\u0019\u0011\u0005)\t\u0014B\u0001\u001a\u0005\u0005\u0019\te.\u001f,bY\"aA\u0007\fC\u0001\u0002\u000b\u0015)\u0019!C\u0005k\u0005!3oY1mC\u0012*H/\u001b7%\u000b&$\b.\u001a:%\u001b\u0016\u0014x-Z1cY\u0016,\u0015\u000e\u001e5fe\u0012\"\u00030F\u00017!\u0011\t\u0002aN\u001c\u0011\u0005MAD!B\u000b-\u0005\u00041\u0002\"\u0003\u001e-\u0005\u000b\u0005\t\u0015!\u00037\u0003\u0015\u001a8-\u00197bIU$\u0018\u000e\u001c\u0013FSRDWM\u001d\u0013NKJ<W-\u00192mK\u0016KG\u000f[3sI\u0011B\b\u0005C\u0003\u000fY\u0011\u0005A\b\u0006\u0002>\u007fA\u0019a\bL\u001c\u000e\u0003!BQ\u0001Q\u001eA\u0002Y\n\u0011\u0001\u001f\u0005\u0006\u00052\"\taQ\u0001\u0006[\u0016\u0014x-Z\u000b\u0002o!9Q\tLA\u0001\n\u00032\u0015\u0001\u00035bg\"\u001cu\u000eZ3\u0015\u0003\u001d\u0003\"A\u0003%\n\u0005%#!aA%oi\"91\nLA\u0001\n\u0003b\u0015AB3rk\u0006d7\u000f\u0006\u0002N!B\u0011!BT\u0005\u0003\u001f\u0012\u0011qAQ8pY\u0016\fg\u000eC\u0004R\u0015\u0006\u0005\t\u0019\u0001\u000e\u0002\u0007a$\u0013\u0007C\u0004TQ\u0005\u0005I1\u0001+\u0002\u001f5+'oZ3bE2,W)\u001b;iKJ,\"!\u0016-\u0015\u0005YK\u0006c\u0001 -/B\u00111\u0003\u0017\u0003\u0006+I\u0013\rA\u0006\u0005\u0006\u0001J\u0003\rA\u0017\t\u0005#\u00019vK\u0002\u0003]Q\tk&A\u0004'fMR\u0004&o\u001c6fGRLwN\\\u000b\u0004=*d7\u0003B.\n?\n\u0004\"A\u00031\n\u0005\u0005$!a\u0002)s_\u0012,8\r\u001e\t\u0003\u0015\rL!\u0001\u001a\u0003\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011\u0019\\&Q3A\u0005\u0002\u001d\f\u0011!Z\u000b\u0002QB!\u0011\u0003A5l!\t\u0019\"\u000e\u0002\u0004\u00167\u0012\u0015\rA\u0006\t\u0003'1$aaH.\u0005\u0006\u00041\u0002\u0002\u00038\\\u0005#\u0005\u000b\u0011\u00025\u0002\u0005\u0015\u0004\u0003\"\u0002\b\\\t\u0003\u0001HCA9s!\u0011q4,[6\t\u000b\u0019|\u0007\u0019\u00015\t\u000bQ\\F\u0011A;\u0002\u0007\u001d,G/F\u0001j\u0011\u001598\f\"\u0001y\u0003\u001d1wN]3bG\",2!_A\u0001)\tQ\"\u0010C\u0003|m\u0002\u0007A0A\u0001g!\u0011QQ0[@\n\u0005y$!!\u0003$v]\u000e$\u0018n\u001c82!\r\u0019\u0012\u0011\u0001\u0003\u0007\u0003\u00071(\u0019\u0001\f\u0003\u0003UCq!a\u0002\\\t\u0003\tI!A\u0005hKR|%/\u00127tKV!\u00111BA\b)\u0011\ti!!\u0006\u0011\u0007M\ty\u0001\u0002\u0005\u0002\u0012\u0005\u0015!\u0019AA\n\u0005\t\t\u0015)\u0005\u0002j5!I\u0011qCA\u0003\t\u0003\u0007\u0011\u0011D\u0001\u0003_J\u0004RACA\u000e\u0003\u001bI1!!\b\u0005\u0005!a$-\u001f8b[\u0016t\u0004bBA\u00117\u0012\u0005\u00111E\u0001\u0007M>\u0014\u0018\r\u001c7\u0015\u00075\u000b)\u0003C\u0004|\u0003?\u0001\r!a\n\u0011\t)i\u0018.\u0014\u0005\b\u0003WYF\u0011AA\u0017\u0003\u0019)\u00070[:ugR\u0019Q*a\f\t\u000fm\fI\u00031\u0001\u0002(!9\u00111G.\u0005\u0002\u0005U\u0012a\u00024mCRl\u0015\r]\u000b\u0007\u0003o\t\u0019%!\u0010\u0015\t\u0005e\u0012\u0011\n\t\u0007#\u0001\tY$!\u0011\u0011\u0007M\ti\u0004B\u0004\u0002@\u0005E\"\u0019\u0001\f\u0003\u0003a\u00032aEA\"\t!\t)%!\rC\u0002\u0005\u001d#A\u0001\"C#\tY'\u0004C\u0004|\u0003c\u0001\r!a\u0013\u0011\u000b)i\u0018.!\u000f\t\u000f\u0005=3\f\"\u0001\u0002R\u0005\u0019Q.\u00199\u0016\t\u0005M\u0013q\f\u000b\u0005\u0003+\n\tG\u0005\u0004\u0002X}\u0013\u00171\f\u0004\u0007\u00033\u0002\u0001!!\u0016\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u000bE\u0001\u0011QL6\u0011\u0007M\ty\u0006B\u0004\u0002@\u00055#\u0019\u0001\f\t\u000fm\fi\u00051\u0001\u0002dA)!\"`5\u0002^!9\u0011qM.\u0005\u0002\u0005%\u0014A\u00024jYR,'/\u0006\u0003\u0002l\u0005]D\u0003BA7\u0003w\u0002RACA8\u0003gJ1!!\u001d\u0005\u0005\u0019y\u0005\u000f^5p]B)\u0011\u0003A5\u0002vA\u00191#a\u001e\u0005\u000f\u0005e\u0014Q\rb\u0001-\t\t\u0011\f\u0003\u0005\u0002~\u0005\u0015\u0004\u0019AA\u0014\u0003\u0005\u0001\bbBAA7\u0012\u0005\u00111Q\u0001\u0006i>\u001cV-]\u000b\u0003\u0003\u000b\u0003R!a\"\u0002\u000e&l!!!#\u000b\u0007\u0005-E!\u0001\u0006d_2dWm\u0019;j_:LA!a$\u0002\n\n\u00191+Z9\t\u000f\u0005M5\f\"\u0001\u0002\u0016\u0006AAo\\(qi&|g.\u0006\u0002\u0002\u0018B!!\"a\u001cj\u0011%\tYjWA\u0001\n\u0003\ti*\u0001\u0003d_BLXCBAP\u0003K\u000bI\u000b\u0006\u0003\u0002\"\u0006-\u0006C\u0002 \\\u0003G\u000b9\u000bE\u0002\u0014\u0003K#a!FAM\u0005\u00041\u0002cA\n\u0002*\u00121q$!'C\u0002YA\u0011BZAM!\u0003\u0005\r!!,\u0011\rE\u0001\u00111UAT\u0011%\t\tlWI\u0001\n\u0003\t\u0019,\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\r\u0005U\u00161ZAg+\t\t9LK\u0002i\u0003s[#!a/\u0011\t\u0005u\u0016qY\u0007\u0003\u0003\u007fSA!!1\u0002D\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0004\u0003\u000b$\u0011AC1o]>$\u0018\r^5p]&!\u0011\u0011ZA`\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0003\u0007+\u0005=&\u0019\u0001\f\u0005\r}\tyK1\u0001\u0017\u0011%\t\tnWA\u0001\n\u0003\n\u0019.A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0003\u0003+\u0004B!a6\u0002b6\u0011\u0011\u0011\u001c\u0006\u0005\u00037\fi.\u0001\u0003mC:<'BAAp\u0003\u0011Q\u0017M^1\n\t\u0005\r\u0018\u0011\u001c\u0002\u0007'R\u0014\u0018N\\4\t\u0013\u0005\u001d8,!A\u0005\u0002\u0005%\u0018\u0001\u00049s_\u0012,8\r^!sSRLX#A$\t\u0013\u000558,!A\u0005\u0002\u0005=\u0018A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u00045\u0005E\b\u0002C)\u0002l\u0006\u0005\t\u0019A$\t\u0013\u0005U8,!A\u0005B\u0005]\u0018a\u00049s_\u0012,8\r^%uKJ\fGo\u001c:\u0016\u0005\u0005e\b#BAD\u0003wT\u0012\u0002BA\u007f\u0003\u0013\u0013\u0001\"\u0013;fe\u0006$xN\u001d\u0005\n\u0005\u0003Y\u0016\u0011!C\u0001\u0005\u0007\t\u0001bY1o\u000bF,\u0018\r\u001c\u000b\u0004\u001b\n\u0015\u0001\u0002C)\u0002��\u0006\u0005\t\u0019\u0001\u000e\t\u000f\u0015[\u0016\u0011!C!\r\"I!1B.\u0002\u0002\u0013\u0005#QB\u0001\ti>\u001cFO]5oOR\u0011\u0011Q\u001b\u0005\t\u0017n\u000b\t\u0011\"\u0011\u0003\u0012Q\u0019QJa\u0005\t\u0011E\u0013y!!AA\u0002i9\u0011Ba\u0006)\u0003\u0003E\tA!\u0007\u0002\u001d1+g\r\u001e)s_*,7\r^5p]B\u0019aHa\u0007\u0007\u0011qC\u0013\u0011!E\u0001\u0005;\u0019BAa\u0007\nE\"9aBa\u0007\u0005\u0002\t\u0005BC\u0001B\r\u0011)\u0011YAa\u0007\u0002\u0002\u0013\u0015#Q\u0002\u0005\u000b\u0005O\u0011Y\"!A\u0005\u0002\n%\u0012!B1qa2LXC\u0002B\u0016\u0005c\u0011)\u0004\u0006\u0003\u0003.\t]\u0002C\u0002 \\\u0005_\u0011\u0019\u0004E\u0002\u0014\u0005c!a!\u0006B\u0013\u0005\u00041\u0002cA\n\u00036\u00111qD!\nC\u0002YAqA\u001aB\u0013\u0001\u0004\u0011I\u0004\u0005\u0004\u0012\u0001\t=\"1\u0007\u0005\u000b\u0005{\u0011Y\"!A\u0005\u0002\n}\u0012aB;oCB\u0004H._\u000b\u0007\u0005\u0003\u0012IE!\u0014\u0015\t\t\r#q\n\t\u0006\u0015\u0005=$Q\t\t\u0007#\u0001\u00119Ea\u0013\u0011\u0007M\u0011I\u0005\u0002\u0004\u0016\u0005w\u0011\rA\u0006\t\u0004'\t5CAB\u0010\u0003<\t\u0007a\u0003\u0003\u0006\u0003R\tm\u0012\u0011!a\u0001\u0005'\n1\u0001\u001f\u00131!\u0019q4La\u0012\u0003L!Q!q\u000bB\u000e\u0003\u0003%IA!\u0017\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u00057\u0002B!a6\u0003^%!!qLAm\u0005\u0019y%M[3di\u001a1!1\r\u0015C\u0005K\u0012qBU5hQR\u0004&o\u001c6fGRLwN\\\u000b\u0007\u0005O\u0012\tH!\u001e\u0014\u000b\t\u0005\u0014b\u00182\t\u0015\u0019\u0014\tG!f\u0001\n\u0003\u0011Y'\u0006\u0002\u0003nA1\u0011\u0003\u0001B8\u0005g\u00022a\u0005B9\t\u001d)\"\u0011\rCC\u0002Y\u00012a\u0005B;\t\u001dy\"\u0011\rCC\u0002YA!B\u001cB1\u0005#\u0005\u000b\u0011\u0002B7\u0011\u001dq!\u0011\rC\u0001\u0005w\"BA! \u0003��A9aH!\u0019\u0003p\tM\u0004b\u00024\u0003z\u0001\u0007!Q\u000e\u0005\bi\n\u0005D\u0011\u0001BB+\t\u0011\u0019\bC\u0004x\u0005C\"\tAa\"\u0016\t\t%%\u0011\u0013\u000b\u00045\t-\u0005bB>\u0003\u0006\u0002\u0007!Q\u0012\t\u0007\u0015u\u0014\u0019Ha$\u0011\u0007M\u0011\t\nB\u0004\u0002\u0004\t\u0015%\u0019\u0001\f\t\u0011\u0005\u001d!\u0011\rC\u0001\u0005++BAa&\u0003\u001cR!!\u0011\u0014BP!\r\u0019\"1\u0014\u0003\t\u0003\u000b\u0012\u0019J1\u0001\u0003\u001eF\u0019!1\u000f\u000e\t\u0013\u0005]!1\u0013CA\u0002\t\u0005\u0006#\u0002\u0006\u0002\u001c\te\u0005\u0002CA\u0011\u0005C\"\tA!*\u0015\u00075\u00139\u000bC\u0004|\u0005G\u0003\rA!+\u0011\u000b)i(1O'\t\u0011\u0005-\"\u0011\rC\u0001\u0005[#2!\u0014BX\u0011\u001dY(1\u0016a\u0001\u0005SC\u0001\"a\r\u0003b\u0011\u0005!1W\u000b\u0007\u0005k\u0013YL!1\u0015\t\t]&1\u0019\t\u0007#\u0001\u0011ILa0\u0011\u0007M\u0011Y\f\u0002\u0005\u0002\u0012\tE&\u0019\u0001B_#\r\u0011yG\u0007\t\u0004'\t\u0005GaBA=\u0005c\u0013\rA\u0006\u0005\bw\nE\u0006\u0019\u0001Bc!\u0019QQPa\u001d\u00038\"A\u0011q\nB1\t\u0003\u0011I-\u0006\u0003\u0003L\nUG\u0003\u0002Bg\u0005/\u0014bAa4`E\nEgABA-\u0001\u0001\u0011i\r\u0005\u0004\u0012\u0001\t=$1\u001b\t\u0004'\tUGaBA=\u0005\u000f\u0014\rA\u0006\u0005\bw\n\u001d\u0007\u0019\u0001Bm!\u0019QQPa\u001d\u0003T\"A\u0011q\rB1\t\u0003\u0011i.\u0006\u0003\u0003`\n\u001dH\u0003\u0002Bq\u0005S\u0004RACA8\u0005G\u0004b!\u0005\u0001\u0003f\nM\u0004cA\n\u0003h\u00129\u0011q\bBn\u0005\u00041\u0002\u0002CA?\u00057\u0004\rA!+\t\u0011\u0005\u0005%\u0011\rC\u0001\u0005[,\"Aa<\u0011\r\u0005\u001d\u0015Q\u0012B:\u0011!\t\u0019J!\u0019\u0005\u0002\tMXC\u0001B{!\u0015Q\u0011q\u000eB:\u0011)\tYJ!\u0019\u0002\u0002\u0013\u0005!\u0011`\u000b\u0007\u0005w\u001c\ta!\u0002\u0015\t\tu8q\u0001\t\b}\t\u0005$q`B\u0002!\r\u00192\u0011\u0001\u0003\u0007+\t](\u0019\u0001\f\u0011\u0007M\u0019)\u0001\u0002\u0004 \u0005o\u0014\rA\u0006\u0005\nM\n]\b\u0013!a\u0001\u0007\u0013\u0001b!\u0005\u0001\u0003��\u000e\r\u0001BCAY\u0005C\n\n\u0011\"\u0001\u0004\u000eU11qBB\n\u0007+)\"a!\u0005+\t\t5\u0014\u0011\u0018\u0003\u0007+\r-!\u0019\u0001\f\u0005\r}\u0019YA1\u0001\u0017\u0011)\t\tN!\u0019\u0002\u0002\u0013\u0005\u00131\u001b\u0005\u000b\u0003O\u0014\t'!A\u0005\u0002\u0005%\bBCAw\u0005C\n\t\u0011\"\u0001\u0004\u001eQ\u0019!da\b\t\u0011E\u001bY\"!AA\u0002\u001dC!\"!>\u0003b\u0005\u0005I\u0011IA|\u0011)\u0011\tA!\u0019\u0002\u0002\u0013\u00051Q\u0005\u000b\u0004\u001b\u000e\u001d\u0002\u0002C)\u0004$\u0005\u0005\t\u0019\u0001\u000e\t\u0011\u0015\u0013\t'!A\u0005B\u0019C!Ba\u0003\u0003b\u0005\u0005I\u0011\tB\u0007\u0011%Y%\u0011MA\u0001\n\u0003\u001ay\u0003F\u0002N\u0007cA\u0001\"UB\u0017\u0003\u0003\u0005\rAG\u0004\n\u0007kA\u0013\u0011!E\u0001\u0007o\tqBU5hQR\u0004&o\u001c6fGRLwN\u001c\t\u0004}\reb!\u0003B2Q\u0005\u0005\t\u0012AB\u001e'\u0011\u0019I$\u00032\t\u000f9\u0019I\u0004\"\u0001\u0004@Q\u00111q\u0007\u0005\u000b\u0005\u0017\u0019I$!A\u0005F\t5\u0001B\u0003B\u0014\u0007s\t\t\u0011\"!\u0004FU11qIB'\u0007#\"Ba!\u0013\u0004TA9aH!\u0019\u0004L\r=\u0003cA\n\u0004N\u00111Qca\u0011C\u0002Y\u00012aEB)\t\u0019y21\tb\u0001-!9ama\u0011A\u0002\rU\u0003CB\t\u0001\u0007\u0017\u001ay\u0005\u0003\u0006\u0003>\re\u0012\u0011!CA\u00073*baa\u0017\u0004d\r\u001dD\u0003BB/\u0007S\u0002RACA8\u0007?\u0002b!\u0005\u0001\u0004b\r\u0015\u0004cA\n\u0004d\u00111Qca\u0016C\u0002Y\u00012aEB4\t\u0019y2q\u000bb\u0001-!Q!\u0011KB,\u0003\u0003\u0005\raa\u001b\u0011\u000fy\u0012\tg!\u0019\u0004f!Q!qKB\u001d\u0003\u0003%IA!\u0017\t\u000f\rE\u0004\u0006\"\u0001\u0004t\u0005!1m\u001c8e+\u0019\u0019)ha\u001f\u0004��QA1qOBA\u0007\u000b\u001bY\t\u0005\u0004\u0012\u0001\re4Q\u0010\t\u0004'\rmDAB\u000b\u0004p\t\u0007a\u0003E\u0002\u0014\u0007\u007f\"aaHB8\u0005\u00041\u0002bBBB\u0007_\u0002\r!T\u0001\u0005i\u0016\u001cH\u000fC\u0005\u0004\b\u000e=D\u00111\u0001\u0004\n\u0006)!/[4iiB)!\"a\u0007\u0004~!A\u0011ea\u001c\u0005\u0002\u0004\u0019i\tE\u0003\u000b\u00037\u0019Ih\u0002\u0005TQ\u0005\u0005\t\u0012ABI!\rq41\u0013\u0004\t[!\n\t\u0011#\u0001\u0004\u0016N\u001911S\u0005\t\u000f9\u0019\u0019\n\"\u0001\u0004\u001aR\u00111\u0011\u0013\u0005\t\u0007;\u001b\u0019\n\"\u0002\u0004 \u0006yQ.\u001a:hK\u0012*\u0007\u0010^3og&|g.\u0006\u0003\u0004\"\u000e\u0015F\u0003BBR\u0007O\u00032aEBS\t\u0019)21\u0014b\u0001-!A1\u0011VBN\u0001\u0004\u0019Y+A\u0003%i\"L7\u000f\u0005\u0003?Y\r\r\u0006BCBX\u0007'\u000b\t\u0011\"\u0002\u00042\u0006\u0011\u0002.Y:i\u0007>$W\rJ3yi\u0016t7/[8o+\u0011\u0019\u0019la/\u0015\u0007\u0019\u001b)\f\u0003\u0005\u0004*\u000e5\u0006\u0019AB\\!\u0011qDf!/\u0011\u0007M\u0019Y\f\u0002\u0004\u0016\u0007[\u0013\rA\u0006\u0005\u000b\u0007\u007f\u001b\u0019*!A\u0005\u0006\r\u0005\u0017\u0001E3rk\u0006d7\u000fJ3yi\u0016t7/[8o+\u0011\u0019\u0019ma4\u0015\t\r\u00157\u0011\u001a\u000b\u0004\u001b\u000e\u001d\u0007\u0002C)\u0004>\u0006\u0005\t\u0019\u0001\u000e\t\u0011\r%6Q\u0018a\u0001\u0007\u0017\u0004BA\u0010\u0017\u0004NB\u00191ca4\u0005\rU\u0019iL1\u0001\u0017\u0011\u001d\u00199\t\u0001C\u0001\u0007',\"a!6\u0011\u000b\u0011\u0012\tGE\u000f\t\u000f\re\u0007\u0001\"\u0001\u0004\\\u0006!am\u001c7e+\u0011\u0019in!9\u0015\r\r}71]Bu!\r\u00192\u0011\u001d\u0003\b\u0003\u007f\u00199N1\u0001\u0017\u0011!\u0019)oa6A\u0002\r\u001d\u0018A\u00014b!\u0015QQPEBp\u0011!\u0019Yoa6A\u0002\r5\u0018A\u00014c!\u0015QQ0HBp\u0011\u001d\u0019\t\u0010\u0001C\u0001\u0007g\fAa]<baV\u00111Q\u001f\n\u0007\u0007o|&m!?\u0007\r\u0005e\u0003\u0001AB{!\u0011\t\u0002!\b\n\t\u000f\ru\b\u0001\"\u0001\u0004��\u0006I!n\\5o%&<\u0007\u000e^\u000b\t\t\u0003!9\u0001b\n\u0005\u0010Q!A1\u0001C\n!\u0019\t\u0002\u0001\"\u0002\u0005\u000eA\u00191\u0003b\u0002\u0005\u0011\u0011%11 b\u0001\t\u0017\u0011!!Q\u0019\u0012\u0005IQ\u0002cA\n\u0005\u0010\u00119A\u0011CB~\u0005\u00041\"!A\"\t\u0011\u0011U11 a\u0002\t/\t!!\u001a<\u0011\u0011\u0011eAq\u0004C\u0013\t\u0007q1A\u0003C\u000e\u0013\r!i\u0002B\u0001\u0007!J,G-\u001a4\n\t\u0011\u0005B1\u0005\u0002\u0011I1,7o\u001d\u0013d_2|g\u000e\n7fgNT1\u0001\"\b\u0005!\r\u0019Bq\u0005\u0003\t\tS\u0019YP1\u0001\u0005,\t\u0011!)M\t\u0003;iAq\u0001b\f\u0001\t\u0003!\t$\u0001\u0005k_&tG*\u001a4u+!!\u0019\u0004\"\u0012\u0005>\u0011eB\u0003\u0002C\u001b\t\u007f\u0001b!\u0005\u0001\u00058\u0011m\u0002cA\n\u0005:\u00119A\u0011\u0003C\u0017\u0005\u00041\u0002cA\n\u0005>\u0011AA\u0011\u0006C\u0017\u0005\u0004!Y\u0003\u0003\u0005\u0005\u0016\u00115\u00029\u0001C!!!!I\u0002b\b\u0005D\u0011U\u0002cA\n\u0005F\u0011AA\u0011\u0002C\u0017\u0005\u0004!Y\u0001C\u0004\u0005J\u00011\t\u0001b\u0013\u0002\r%\u001cH*\u001a4u+\u0005i\u0005b\u0002C(\u0001\u0019\u0005A1J\u0001\bSN\u0014\u0016n\u001a5uS\u0015\u0001A1\u000bC,\u0013\r!)F\u0001\u0002\u0005\u0019\u00164G/C\u0002\u0005Z\t\u0011QAU5hQR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/util/Either.class */
public abstract class Either<A, B> {

    /* loaded from: classes3-dex2jar.jar:scala/util/Either$LeftProjection.class */
    public static final class LeftProjection<A, B> implements Product, Serializable {

        /* renamed from: e */
        private final Either<A, B> f1644e;

        public LeftProjection(Either<A, B> either) {
            this.f1644e = either;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof LeftProjection;
        }

        public <A, B> LeftProjection<A, B> copy(Either<A, B> either) {
            return new LeftProjection<>(either);
        }

        public <A, B> Either<A, B> copy$default$1() {
            return m11e();
        }

        /* renamed from: e */
        public Either<A, B> m11e() {
            return this.f1644e;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
            if ((r0 != null ? r0.equals(r0) : r0 == null) != false) goto L16;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L47
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.util.Either.LeftProjection
                if (r0 == 0) goto L49
                r0 = r4
                scala.util.Either$LeftProjection r0 = (scala.util.Either.LeftProjection) r0
                r7 = r0
                r0 = r3
                scala.util.Either r0 = r0.m11e()
                r4 = r0
                r0 = r7
                scala.util.Either r0 = r0.m11e()
                r7 = r0
                r0 = r4
                if (r0 != 0) goto L2e
                r0 = r7
                if (r0 == 0) goto L37
                goto L3d
            L2e:
                r0 = r4
                r1 = r7
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L3d
            L37:
                r0 = 1
                r8 = r0
                goto L40
            L3d:
                r0 = 0
                r8 = r0
            L40:
                r0 = r5
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L49
            L47:
                r0 = 1
                r6 = r0
            L49:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.util.Either.LeftProjection.equals(java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean exists(Function1<A, Object> function1) {
            boolean z;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                z = BoxesRunTime.unboxToBoolean(function1.apply(((Left) m11e).m9a()));
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <Y> Option<Either<A, Y>> filter(Function1<A, Object> function1) {
            Some some;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                Left left = (Left) m11e;
                some = BoxesRunTime.unboxToBoolean(function1.apply(left.m9a())) ? new Some(new Left(left.m9a())) : None$.MODULE$;
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                some = None$.MODULE$;
            }
            return some;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <BB, X> Either<X, BB> flatMap(Function1<A, Either<X, BB>> function1) {
            Right right;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                right = (Either) function1.apply(((Left) m11e).m9a());
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                right = new Right(((Right) m11e).m8b());
            }
            return right;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean forall(Function1<A, Object> function1) {
            boolean z;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                z = BoxesRunTime.unboxToBoolean(function1.apply(((Left) m11e).m9a()));
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                z = true;
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <U> Object foreach(Function1<A, U> function1) {
            BoxedUnit boxedUnit;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                boxedUnit = function1.apply(((Left) m11e).m9a());
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                boxedUnit = BoxedUnit.UNIT;
            }
            return boxedUnit;
        }

        public A get() {
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                return (A) ((Left) m11e).m9a();
            }
            if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            }
            throw new NoSuchElementException("Either.left.value on Right");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <AA> AA getOrElse(Function0<AA> function0) {
            AA aa;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                aa = ((Left) m11e).m9a();
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                aa = function0.apply();
            }
            return aa;
        }

        public int hashCode() {
            return ScalaRunTime$.MODULE$._hashCode(this);
        }

        public Either map(Function1 function1) {
            Left left;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                left = new Left(function1.apply(((Left) m11e).m9a()));
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                left = new Right(((Right) m11e).m8b());
            }
            return left;
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return m11e();
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "LeftProjection";
        }

        public Option<A> toOption() {
            Some some;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                some = new Some(((Left) m11e).m9a());
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                some = None$.MODULE$;
            }
            return some;
        }

        public Seq<A> toSeq() {
            Seq<A> seq;
            Either<A, B> m11e = m11e();
            if (m11e instanceof Left) {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{((Left) m11e).m9a()}));
            } else if (!(m11e instanceof Right)) {
                throw new MatchError(m11e);
            } else {
                seq = (Seq) Seq$.MODULE$.empty();
            }
            return seq;
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/Either$MergeableEither.class */
    public static final class MergeableEither<A> {
        private final Either<A, A> scala$util$Either$MergeableEither$$x;

        public MergeableEither(Either<A, A> either) {
            this.scala$util$Either$MergeableEither$$x = either;
        }

        public boolean equals(Object obj) {
            return Either$MergeableEither$.MODULE$.equals$extension(scala$util$Either$MergeableEither$$x(), obj);
        }

        public int hashCode() {
            return Either$MergeableEither$.MODULE$.hashCode$extension(scala$util$Either$MergeableEither$$x());
        }

        public A merge() {
            return (A) Either$MergeableEither$.MODULE$.merge$extension(scala$util$Either$MergeableEither$$x());
        }

        public Either<A, A> scala$util$Either$MergeableEither$$x() {
            return this.scala$util$Either$MergeableEither$$x;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/Either$RightProjection.class */
    public static final class RightProjection<A, B> implements Product, Serializable {

        /* renamed from: e */
        private final Either<A, B> f1645e;

        public RightProjection(Either<A, B> either) {
            this.f1645e = either;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof RightProjection;
        }

        public <A, B> RightProjection<A, B> copy(Either<A, B> either) {
            return new RightProjection<>(either);
        }

        public <A, B> Either<A, B> copy$default$1() {
            return m10e();
        }

        /* renamed from: e */
        public Either<A, B> m10e() {
            return this.f1645e;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
            if ((r0 != null ? r0.equals(r0) : r0 == null) != false) goto L16;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L47
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.util.Either.RightProjection
                if (r0 == 0) goto L49
                r0 = r4
                scala.util.Either$RightProjection r0 = (scala.util.Either.RightProjection) r0
                r7 = r0
                r0 = r3
                scala.util.Either r0 = r0.m10e()
                r4 = r0
                r0 = r7
                scala.util.Either r0 = r0.m10e()
                r7 = r0
                r0 = r4
                if (r0 != 0) goto L2e
                r0 = r7
                if (r0 == 0) goto L37
                goto L3d
            L2e:
                r0 = r4
                r1 = r7
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L3d
            L37:
                r0 = 1
                r8 = r0
                goto L40
            L3d:
                r0 = 0
                r8 = r0
            L40:
                r0 = r5
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L49
            L47:
                r0 = 1
                r6 = r0
            L49:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.util.Either.RightProjection.equals(java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean exists(Function1<B, Object> function1) {
            boolean z;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                z = false;
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                z = BoxesRunTime.unboxToBoolean(function1.apply(((Right) m10e).m8b()));
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <X> Option<Either<X, B>> filter(Function1<B, Object> function1) {
            None$ none$;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                none$ = None$.MODULE$;
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                Right right = (Right) m10e;
                none$ = BoxesRunTime.unboxToBoolean(function1.apply(right.m8b())) ? new Some(new Right(right.m8b())) : None$.MODULE$;
            }
            return none$;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <AA, Y> Either<AA, Y> flatMap(Function1<B, Either<AA, Y>> function1) {
            Left left;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                left = new Left(((Left) m10e).m9a());
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                left = (Either) function1.apply(((Right) m10e).m8b());
            }
            return left;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean forall(Function1<B, Object> function1) {
            boolean z;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                z = true;
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                z = BoxesRunTime.unboxToBoolean(function1.apply(((Right) m10e).m8b()));
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <U> Object foreach(Function1<B, U> function1) {
            BoxedUnit boxedUnit;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                boxedUnit = BoxedUnit.UNIT;
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                boxedUnit = function1.apply(((Right) m10e).m8b());
            }
            return boxedUnit;
        }

        public B get() {
            Either<A, B> m10e = m10e();
            if (!(m10e instanceof Left)) {
                if (!(m10e instanceof Right)) {
                    throw new MatchError(m10e);
                }
                return (B) ((Right) m10e).m8b();
            }
            throw new NoSuchElementException("Either.right.value on Left");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <BB> BB getOrElse(Function0<BB> function0) {
            BB bb;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                bb = function0.apply();
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                bb = ((Right) m10e).m8b();
            }
            return bb;
        }

        public int hashCode() {
            return ScalaRunTime$.MODULE$._hashCode(this);
        }

        public Either map(Function1 function1) {
            Left left;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                left = new Left(((Left) m10e).m9a());
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                left = new Right(function1.apply(((Right) m10e).m8b()));
            }
            return left;
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return m10e();
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "RightProjection";
        }

        public Option<B> toOption() {
            None$ none$;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                none$ = None$.MODULE$;
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                none$ = new Some(((Right) m10e).m8b());
            }
            return none$;
        }

        public Seq<B> toSeq() {
            Seq<B> seq;
            Either<A, B> m10e = m10e();
            if (m10e instanceof Left) {
                seq = (Seq) Seq$.MODULE$.empty();
            } else if (!(m10e instanceof Right)) {
                throw new MatchError(m10e);
            } else {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{((Right) m10e).m8b()}));
            }
            return seq;
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    public static Either MergeableEither(Either either) {
        return Either$.MODULE$.MergeableEither(either);
    }

    public static <A, B> Either<A, B> cond(boolean z, Function0<B> function0, Function0<A> function02) {
        return Either$.MODULE$.cond(z, function0, function02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <X> X fold(Function1<A, X> function1, Function1<B, X> function12) {
        X x;
        if (this instanceof Left) {
            x = function1.apply(((Left) this).m9a());
        } else if (!(this instanceof Right)) {
            throw new MatchError(this);
        } else {
            x = function12.apply(((Right) this).m8b());
        }
        return x;
    }

    public abstract boolean isLeft();

    public abstract boolean isRight();

    public <A1, B1, C> Either<C, B1> joinLeft(Predef$$less$colon$less<A1, Either<C, B1>> predef$$less$colon$less) {
        Right right;
        if (this instanceof Left) {
            right = predef$$less$colon$less.apply(((Left) this).m9a());
        } else if (!(this instanceof Right)) {
            throw new MatchError(this);
        } else {
            right = new Right(((Right) this).m8b());
        }
        return right;
    }

    public <A1, B1, C> Either<A1, C> joinRight(Predef$$less$colon$less<B1, Either<A1, C>> predef$$less$colon$less) {
        Left left;
        if (this instanceof Left) {
            left = new Left(((Left) this).m9a());
        } else if (!(this instanceof Right)) {
            throw new MatchError(this);
        } else {
            left = predef$$less$colon$less.apply(((Right) this).m8b());
        }
        return left;
    }

    public LeftProjection<A, B> left() {
        return new LeftProjection<>(this);
    }

    public RightProjection<A, B> right() {
        return new RightProjection<>(this);
    }

    public Either swap() {
        Right right;
        if (this instanceof Left) {
            right = new Right(((Left) this).m9a());
        } else if (!(this instanceof Right)) {
            throw new MatchError(this);
        } else {
            right = new Left(((Right) this).m8b());
        }
        return right;
    }
}
