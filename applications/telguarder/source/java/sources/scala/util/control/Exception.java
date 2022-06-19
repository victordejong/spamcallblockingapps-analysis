package scala.util.control;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Some;
import scala.collection.Seq;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
import scala.util.Either;
import scala.util.Try;
import scala.util.control.Exception;
@ScalaSignature(bytes = "\u0006\u0001\u0011Es!B\u0001\u0003\u0011\u0003I\u0011!C#yG\u0016\u0004H/[8o\u0015\t\u0019A!A\u0004d_:$(o\u001c7\u000b\u0005\u00151\u0011\u0001B;uS2T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001!\tQ1\"D\u0001\u0003\r\u0015a!\u0001#\u0001\u000e\u0005%)\u0005pY3qi&|gn\u0005\u0002\f\u001dA\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bMYA\u0011\u0001\u000b\u0002\rqJg.\u001b;?)\u0005IQ\u0001\u0002\f\f\u0001]\u0011qaQ1uG\",'/\u0006\u0002\u0019IA!q\"G\u000e#\u0013\tQbAA\bQCJ$\u0018.\u00197Gk:\u001cG/[8o!\tarD\u0004\u0002\u0010;%\u0011aDB\u0001\ba\u0006\u001c7.Y4f\u0013\t\u0001\u0013EA\u0005UQJ|w/\u00192mK*\u0011aD\u0002\t\u0003G\u0011b\u0001\u0001\u0002\u0004&+\u0011\u0015\rA\n\u0002\u0002)F\u0011qE\u000b\t\u0003\u001f!J!!\u000b\u0004\u0003\u000f9{G\u000f[5oOB\u0011qbK\u0005\u0003Y\u0019\u00111!\u00118z\u0011\u0015q3\u0002\"\u00010\u0003%i7nQ1uG\",'/F\u00021\u0005b\"2!M#N)\t\u0011\u0014HE\u00024\u001dU2A\u0001N\u0017\u0001e\taAH]3gS:,W.\u001a8u}A\u0019a'F\u001c\u000e\u0003-\u0001\"a\t\u001d\u0005\u000b\u0015j#\u0019\u0001\u0014\t\u000fij\u0013\u0011!a\u0002w\u0005QQM^5eK:\u001cW\rJ\u0019\u0011\u0007qz\u0014)D\u0001>\u0015\tqd!A\u0004sK\u001adWm\u0019;\n\u0005\u0001k$\u0001C\"mCN\u001cH+Y4\u0011\u0005\r\u0012E!B\".\u0005\u0004!%AA#y#\t93\u0004C\u0003G[\u0001\u0007q)A\u0003jg\u0012+g\r\u0005\u0003\u0010\u0011\u0006S\u0015BA%\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u0010\u0017&\u0011AJ\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015qU\u00061\u0001P\u0003\u00051\u0007\u0003B\bI\u0003^BQ!U\u0006\u0005\u0002I\u000b!#\\6UQJ|w/\u00192mK\u000e\u000bGo\u00195feV\u00111\u000b\u0017\u000b\u0004)f[&cA+\u000f-\u001a!A'\f\u0001U!\r1Tc\u0016\t\u0003Ga#Q!\n)C\u0002\u0019BQA\u0012)A\u0002i\u0003Ba\u0004%\u001c\u0015\")a\n\u0015a\u00019B!q\u0002S\u000eX\u0011\u0015q6\u0002b\u0001`\u0003e!\bN]8xC\ndWmU;cif\u0004X\rV8DCR\u001c\u0007.\u001a:\u0016\u0007\u0001\\g\r\u0006\u0002bYR\u0011!m\u001a\n\u0004G:!g\u0001\u0002\u001b.\u0001\t\u00042AN\u000bf!\t\u0019c\rB\u0003&;\n\u0007a\u0005C\u0004i;\u0006\u0005\t9A5\u0002\u0015\u00154\u0018\u000eZ3oG\u0016$#\u0007E\u0002=\u007f)\u0004\"aI6\u0005\u000b\rk&\u0019\u0001#\t\u000b5l\u0006\u0019\u00018\u0002\u0005A4\u0007\u0003B\b\u001aU\u0016DQ\u0001]\u0006\u0005\u0002E\fQb\u001d5pk2$'+\u001a;ie><HC\u0001&s\u0011\u0015\u0019x\u000e1\u0001\u001c\u0003\u0005AhaB;\f!\u0003\r\tA\u001e\u0002\n\t\u0016\u001c8M]5cK\u0012\u001c\"\u0001\u001e\b\t\u000ba$H\u0011A=\u0002\r\u0011Jg.\u001b;%)\u0005Q\bCA\b|\u0013\tahA\u0001\u0003V]&$\bb\u0002@u\u0005\u00045\tb`\u0001\u0005]\u0006lW-\u0006\u0002\u0002\u0002A!\u00111AA\u0005\u001d\ry\u0011QA\u0005\u0004\u0003\u000f1\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0002\f\u00055!AB*ue&twMC\u0002\u0002\b\u0019A\u0001\"!\u0005u\u0001\u0004%Ia`\u0001\u0006?\u0012,7o\u0019\u0005\n\u0003+!\b\u0019!C\u0005\u0003/\t\u0011b\u00183fg\u000e|F%Z9\u0015\u0007i\fI\u0002\u0003\u0006\u0002\u001c\u0005M\u0011\u0011!a\u0001\u0003\u0003\t1\u0001\u001f\u00132\u0011!\ty\u0002\u001eQ!\n\u0005\u0005\u0011AB0eKN\u001c\u0007\u0005\u0003\u0004\u0002$Q$\ta`\u0001\u0005I\u0016\u001c8\rC\u0004\u0002(Q$\t!!\u000b\u0002\u0011]LG\u000f\u001b#fg\u000e$B!a\u000b\u0002.5\tA\u000f\u0003\u0005\u00020\u0005\u0015\u0002\u0019AA\u0001\u0003\u0005\u0019\bbBA\u001ai\u0012\u0005\u0013QG\u0001\ti>\u001cFO]5oOR\u0011\u0011q\u0007\t\u0005\u0003s\t\u0019%\u0004\u0002\u0002<)!\u0011QHA \u0003\u0011a\u0017M\\4\u000b\u0005\u0005\u0005\u0013\u0001\u00026bm\u0006LA!a\u0003\u0002<\u00191\u0011qI\u0006\u0001\u0003\u0013\u0012qAR5oC2d\u0017pE\u0003\u0002F9\tY\u0005\u0005\u00027i\"Y\u0011qJA#\u0005\u0003%\u000b\u0011BA)\u0003\u0011\u0011w\u000eZ=\u0011\t=\t\u0019F_\u0005\u0004\u0003+2!\u0001\u0003\u001fcs:\fW.\u001a \t\u0011M\t)\u0005\"\u0001\f\u00033\"B!a\u0017\u0002^A\u0019a'!\u0012\t\u0013\u0005=\u0013q\u000bCA\u0002\u0005E\u0003\"\u0003@\u0002F\t\u0007I\u0011CA1+\t\t9\u0004C\u0005\u0002f\u0005\u0015\u0003\u0015!\u0003\u00028\u0005)a.Y7fA!A\u0011\u0011NA#\t\u0003\tY'A\u0002b]\u0012$B!a\u0017\u0002n!I\u0011qNA4\t\u0003\u0007\u0011\u0011K\u0001\u0006_RDWM\u001d\u0005\b\u0003g\n)\u0005\"\u0001z\u0003\u0019IgN^8lK\u001a1\u0011qO\u0006\u0001\u0003s\u0012QaQ1uG\",B!a\u001f\u0002\u0006N)\u0011Q\u000f\b\u0002L!QQ.!\u001e\u0003\u0006\u0004%\t!a \u0016\u0005\u0005\u0005\u0005\u0003\u0002\u001c\u0016\u0003\u0007\u00032aIAC\t\u001d)\u0013Q\u000fCC\u0002\u0019B1\"!#\u0002v\t\u0005\t\u0015!\u0003\u0002\u0002\u0006\u0019\u0001O\u001a\u0011\t\u0017\u00055\u0015Q\u000fBC\u0002\u0013\u0005\u0011qR\u0001\u0004M&tWCAAI!\u0015y\u00111SA.\u0013\r\t)J\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u0017\u0005e\u0015Q\u000fB\u0001B\u0003%\u0011\u0011S\u0001\u0005M&t\u0007\u0005C\u0006\u0002\u001e\u0006U$Q1A\u0005\u0002\u0005}\u0015a\u0002:fi\"\u0014xn^\u000b\u00025\"Q\u00111UA;\u0005\u0003\u0005\u000b\u0011\u0002.\u0002\u0011I,G\u000f\u001b:po\u0002BqaEA;\t\u0003\t9\u000b\u0006\u0005\u0002*\u0006-\u0016QVAX!\u00151\u0014QOAB\u0011\u001di\u0017Q\u0015a\u0001\u0003\u0003C!\"!$\u0002&B\u0005\t\u0019AAI\u0011%\ti*!*\u0011\u0002\u0003\u0007!\fC\u0005\u007f\u0003k\u0012\r\u0011\"\u0005\u0002b!I\u0011QMA;A\u0003%\u0011q\u0007\u0005\t\u0003o\u000b)\b\"\u0001\u0002:\u0006\u0011qN]\u000b\u0005\u0003w\u000b\t\r\u0006\u0003\u0002>\u0006\u001d\u0007#\u0002\u001c\u0002v\u0005}\u0006cA\u0012\u0002B\u0012A\u00111YA[\u0005\u0004\t)MA\u0001V#\r\t\u0019I\u000b\u0005\t\u0003\u0013\f)\f1\u0001\u0002L\u0006\u0019\u0001O\u001a\u001a\u0011\tY*\u0012q\u0018\u0005\t\u0003o\u000b)\b\"\u0001\u0002PV!\u0011\u0011[Al)\u0011\t\u0019.!7\u0011\u000bY\n)(!6\u0011\u0007\r\n9\u000e\u0002\u0005\u0002D\u00065'\u0019AAc\u0011!\ty'!4A\u0002\u0005M\u0007\u0002CAo\u0003k\"\t!a8\u0002\u000b\u0005\u0004\b\u000f\\=\u0016\t\u0005\u0005\u0018Q\u001d\u000b\u0005\u0003G\f9\u000fE\u0002$\u0003K$\u0001\"a1\u0002\\\n\u0007\u0011Q\u0019\u0005\n\u0003\u001f\nY\u000e\"a\u0001\u0003S\u0004RaDA*\u0003GD\u0001\"!<\u0002v\u0011\u0005\u0011q^\u0001\u000bC:$g)\u001b8bY2LH\u0003BAU\u0003cD\u0011\"a\u0014\u0002l\u0012\u0005\r!!\u0015\t\u0011\u0005U\u0018Q\u000fC\u0001\u0003o\f1a\u001c9u+\u0011\tI0a@\u0015\t\u0005m(\u0011\u0001\t\u0006\u001f\u0005M\u0015Q \t\u0004G\u0005}H\u0001CAb\u0003g\u0014\r!!2\t\u0013\u0005=\u00131\u001fCA\u0002\t\r\u0001#B\b\u0002T\u0005u\b\u0002\u0003B\u0004\u0003k\"\tA!\u0003\u0002\r\u0015LG\u000f[3s+\u0011\u0011YAa\u0006\u0015\t\t5!\u0011\u0004\t\b\u0005\u001f\u0011\tb\u0007B\u000b\u001b\u0005!\u0011b\u0001B\n\t\t1Q)\u001b;iKJ\u00042a\tB\f\t!\t\u0019M!\u0002C\u0002\u0005\u0015\u0007\"CA(\u0005\u000b!\t\u0019\u0001B\u000e!\u0015y\u00111\u000bB\u000b\u0011!\u0011y\"!\u001e\u0005\u0002\t\u0005\u0012aB<ji\"$&/_\u000b\u0005\u0005G\u0011i\u0003\u0006\u0003\u0003&\t=\u0002C\u0002B\b\u0005O\u0011Y#C\u0002\u0003*\u0011\u00111\u0001\u0016:z!\r\u0019#Q\u0006\u0003\t\u0003\u0007\u0014iB1\u0001\u0002F\"I\u0011q\nB\u000f\t\u0003\u0007!\u0011\u0007\t\u0006\u001f\u0005M#1\u0006\u0005\t\u0005k\t)\b\"\u0001\u00038\u0005Iq/\u001b;i\u0003B\u0004H._\u000b\u0005\u0005s\u0011y\u0004\u0006\u0003\u0003<\t\u0005\u0003#\u0002\u001c\u0002v\tu\u0002cA\u0012\u0003@\u00119\u00111\u0019B\u001a\u0005\u00041\u0003b\u0002(\u00034\u0001\u0007!1\t\t\u0006\u001f![\"Q\b\u0005\t\u0005\u000f\n)\b\"\u0001\u0003J\u0005AAo\\(qi&|g.\u0006\u0002\u0003LA)a'!\u001e\u0003NA)q\"a%\u0002\u0004\"A!\u0011KA;\t\u0003\u0011\u0019&\u0001\u0005u_\u0016KG\u000f[3s+\t\u0011)\u0006E\u00037\u0003k\u00129\u0006E\u0004\u0003\u0010\tE1$a!\t\u0011\tm\u0013Q\u000fC\u0001\u0005;\nQ\u0001^8Uef,\"Aa\u0018\u0011\u000bY\n)H!\u0019\u0011\r\t=!qEAB\u000f%\u0011)gCA\u0001\u0012\u0003\u00119'A\u0003DCR\u001c\u0007\u000eE\u00027\u0005S2\u0011\"a\u001e\f\u0003\u0003E\tAa\u001b\u0014\u0007\t%d\u0002C\u0004\u0014\u0005S\"\tAa\u001c\u0015\u0005\t\u001d\u0004B\u0003B:\u0005S\n\n\u0011\"\u0001\u0003v\u0005YB\u0005\\3tg&t\u0017\u000e\u001e\u0013he\u0016\fG/\u001a:%I\u00164\u0017-\u001e7uII*BAa\u001e\u0003\u000eV\u0011!\u0011\u0010\u0016\u0005\u0003#\u0013Yh\u000b\u0002\u0003~A!!q\u0010BE\u001b\t\u0011\tI\u0003\u0003\u0003\u0004\n\u0015\u0015!C;oG\",7m[3e\u0015\r\u00119IB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002\u0002BF\u0005\u0003\u0013\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\t\u0019)#\u0011\u000fb\u0001M!Q!\u0011\u0013B5#\u0003%\tAa%\u00027\u0011bWm]:j]&$He\u001a:fCR,'\u000f\n3fM\u0006,H\u000e\u001e\u00134+\u0011\u0011)J!'\u0016\u0005\t]%f\u0001.\u0003|\u00111QEa$C\u0002\u0019B\u0011B!(\f\u0005\u0004%)Aa(\u0002\u001d9|G\u000f[5oO\u000e\u000bGo\u00195feV\u0011!\u0011\u0015\t\u0004mU9\u0003\u0002\u0003BS\u0017\u0001\u0006iA!)\u0002\u001f9|G\u000f[5oO\u000e\u000bGo\u00195fe\u0002BqA!+\f\t\u000b\u0011Y+A\bo_:4\u0015\r^1m\u0007\u0006$8\r[3s+\u0011\u0011iKa-\u0016\u0005\t=\u0006\u0003\u0002\u001c\u0016\u0005c\u00032a\tBZ\t\u0019)#q\u0015b\u0001M!9!qW\u0006\u0005\u0006\te\u0016AC1mY\u000e\u000bGo\u00195feV!!1\u0018Ba+\t\u0011i\f\u0005\u00037+\t}\u0006cA\u0012\u0003B\u00121QE!.C\u0002\u0019B\u0011B!2\f\u0005\u0004%)Aa2\u0002\u000f9|7)\u0019;dQV\u0011!\u0011\u001a\t\u0005m\u0005Ut\u0005\u0003\u0005\u0003N.\u0001\u000bQ\u0002Be\u0003!qwnQ1uG\"\u0004\u0003b\u0002Bi\u0017\u0011\u0015!1[\u0001\tC2d7)\u0019;dQV!!Q\u001bBn+\t\u00119\u000eE\u00037\u0003k\u0012I\u000eE\u0002$\u00057$a!\nBh\u0005\u00041\u0003b\u0002Bp\u0017\u0011\u0015!\u0011]\u0001\u000e]>tg)\u0019;bY\u000e\u000bGo\u00195\u0016\t\t\r(\u0011^\u000b\u0003\u0005K\u0004RANA;\u0005O\u00042a\tBu\t\u0019)#Q\u001cb\u0001M!9!Q^\u0006\u0005\u0002\t=\u0018\u0001C2bi\u000eD\u0017N\\4\u0016\t\tE(q\u001f\u000b\u0005\u0005g\u0014I\u0010E\u00037\u0003k\u0012)\u0010E\u0002$\u0005o$a!\nBv\u0005\u00041\u0003\u0002\u0003B~\u0005W\u0004\rA!@\u0002\u0015\u0015D8-\u001a9uS>t7\u000fE\u0003\u0010\u0005\u007f\u001c\u0019!C\u0002\u0004\u0002\u0019\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?a\u0011\u0019)a!\u0004\u0011\r\u0005\r1qAB\u0006\u0013\u0011\u0019I!!\u0004\u0003\u000b\rc\u0017m]:\u0011\u0007\r\u001ai\u0001B\u0006\u0004\u0010\te\u0018\u0011!A\u0001\u0006\u00031#aA0%c!9!Q^\u0006\u0005\u0002\rMQ\u0003BB\u000b\u00077!Baa\u0006\u0004\u001eA)a'!\u001e\u0004\u001aA\u00191ea\u0007\u0005\r\u0015\u001a\tB1\u0001'\u0011!\u0019yb!\u0005A\u0002\r\u0005\u0012!A2\u0011\tY*2\u0011\u0004\u0005\b\u0007KYA\u0011AB\u0014\u0003U\u0019\u0017\r^2iS:<\u0007K]8nSN\u001cWo\\;tYf,Ba!\u000b\u00040Q!11FB\u0019!\u00151\u0014QOB\u0017!\r\u00193q\u0006\u0003\u0007K\r\r\"\u0019\u0001\u0014\t\u0011\tm81\u0005a\u0001\u0007g\u0001Ra\u0004B��\u0007k\u0001Daa\u000e\u0004<A1\u00111AB\u0004\u0007s\u00012aIB\u001e\t-\u0019id!\r\u0002\u0002\u0003\u0005)\u0011\u0001\u0014\u0003\u0007}##\u0007C\u0004\u0004&-!\ta!\u0011\u0016\t\r\r3\u0011\n\u000b\u0005\u0007\u000b\u001aY\u0005E\u00037\u0003k\u001a9\u0005E\u0002$\u0007\u0013\"a!JB \u0005\u00041\u0003\u0002CB\u0010\u0007\u007f\u0001\ra!\u0014\u0011\tY*2q\t\u0005\b\u0007#ZA\u0011AB*\u0003!IwM\\8sS:<G\u0003BB+\u0007/\u0002BANA;u\"A!1`B(\u0001\u0004\u0019I\u0006E\u0003\u0010\u0005\u007f\u001cY\u0006\r\u0003\u0004^\r\u0005\u0004CBA\u0002\u0007\u000f\u0019y\u0006E\u0002$\u0007C\"1ba\u0019\u0004X\u0005\u0005\t\u0011!B\u0001M\t\u0019q\fJ\u001a\t\u000f\r\u001d4\u0002\"\u0001\u0004j\u00059a-Y5mS:<W\u0003BB6\u0007g\"Ba!\u001c\u0004vA)a'!\u001e\u0004pA)q\"a%\u0004rA\u00191ea\u001d\u0005\r\u0015\u001a)G1\u0001'\u0011!\u0011Yp!\u001aA\u0002\r]\u0004#B\b\u0003��\u000ee\u0004\u0007BB>\u0007\u007f\u0002b!a\u0001\u0004\b\ru\u0004cA\u0012\u0004��\u0011Y1\u0011QB;\u0003\u0003\u0005\tQ!\u0001'\u0005\ryF\u0005\u000e\u0005\b\u0007\u000b[A\u0011ABD\u0003-1\u0017-\u001b7BgZ\u000bG.^3\u0016\t\r%5\u0011\u0013\u000b\u0005\u0007\u0017\u001bI\n\u0006\u0003\u0004\u000e\u000eM\u0005#\u0002\u001c\u0002v\r=\u0005cA\u0012\u0004\u0012\u00121Qea!C\u0002\u0019B\u0011b!&\u0004\u0004\u0012\u0005\raa&\u0002\u000bY\fG.^3\u0011\u000b=\t\u0019fa$\t\u0011\tm81\u0011a\u0001\u00077\u0003Ra\u0004B��\u0007;\u0003Daa(\u0004$B1\u00111AB\u0004\u0007C\u00032aIBR\t-\u0019)k!'\u0002\u0002\u0003\u0005)\u0011\u0001\u0014\u0003\u0007}#SG\u0002\u0004\u0004*.\u000111\u0016\u0002\u0003\u0005f,ba!,\u00046\u000ee6cABT\u001d!Qaja*\u0003\u0002\u0003\u0006Ia!-\u0011\r=A51WB\\!\r\u00193Q\u0017\u0003\u0007K\r\u001d&\u0019\u0001\u0014\u0011\u0007\r\u001aI\fB\u0004\u0004<\u000e\u001d&\u0019\u0001\u0014\u0003\u0003ICqaEBT\t\u0003\u0019y\f\u0006\u0003\u0004B\u000e\r\u0007c\u0002\u001c\u0004(\u000eM6q\u0017\u0005\b\u001d\u000eu\u0006\u0019ABY\u0011!\u00199ma*\u0005\u0002\r%\u0017A\u00012z)\u0011\u00199la3\t\u000fM\u001c)\r1\u0001\u00044\"91qZ\u0006\u0005\u0002\rE\u0017\u0001\u00035b]\u0012d\u0017N\\4\u0016\t\rM71\u001c\u000b\u0005\u0007+\u001cy\u000eE\u00047\u0007O\u001b9n!8\u0011\u000b=A5d!7\u0011\u0007\r\u001aY\u000e\u0002\u0004&\u0007\u001b\u0014\rA\n\t\u0006m\u0005U4\u0011\u001c\u0005\t\u0005w\u001ci\r1\u0001\u0004bB)qBa@\u0004dB\"1Q]Bu!\u0019\t\u0019aa\u0002\u0004hB\u00191e!;\u0005\u0017\r-8q\\A\u0001\u0002\u0003\u0015\tA\n\u0002\u0004?\u00122\u0004bBBx\u0017\u0011\u00051\u0011_\u0001\u000bk2$\u0018.\\1uK2LX\u0003BBz\u0007s$Ba!>\u0004|B)a'!\u001e\u0004xB\u00191e!?\u0005\r\u0015\u001aiO1\u0001'\u0011%\tye!<\u0005\u0002\u0004\t\t\u0006C\u0004\u0004��.!\t\u0001\"\u0001\u0002\u0015UtwO]1qa&tw-\u0006\u0003\u0005\u0004\u0011%A\u0003\u0002C\u0003\t\u0017\u0001RANA;\t\u000f\u00012a\tC\u0005\t\u0019)3Q b\u0001M!A!1`B\u007f\u0001\u0004!i\u0001E\u0003\u0010\u0005\u007f$y\u0001\r\u0003\u0005\u0012\u0011U\u0001CBA\u0002\u0007\u000f!\u0019\u0002E\u0002$\t+!1\u0002b\u0006\u0005\f\u0005\u0005\t\u0011!B\u0001M\t\u0019q\fJ\u001c\t\u000f\u0011m1\u0002\"\u0003\u0005\u001e\u0005Qqo\\;mI6\u000bGo\u00195\u0015\u000b)#y\u0002\"\t\t\rM$I\u00021\u0001\u001c\u0011!!\u0019\u0003\"\u0007A\u0002\u0011\u0015\u0012aB2mCN\u001cXm\u001d\t\u0007\tO!i\u0003\"\r\u000e\u0005\u0011%\"b\u0001C\u0016\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\u0011=B\u0011\u0006\u0002\u0004'\u0016\f\b\u0007\u0002C\u001a\to\u0001b!a\u0001\u0004\b\u0011U\u0002cA\u0012\u00058\u0011YA\u0011\bC\u0011\u0003\u0003\u0005\tQ!\u0001'\u0005\ryF\u0005\u000f\u0005\b\t{YA\u0011\u0002C \u0003A\u0001hM\u0012:p[\u0016C8-\u001a9uS>t7\u000f\u0006\u0003\u0005B\u0011\r\u0003\u0003B\b\u001a7\u001dB\u0001Ba?\u0005<\u0001\u0007AQ\t\t\u0006\u001f\t}Hq\t\u0019\u0005\t\u0013\"i\u0005\u0005\u0004\u0002\u0004\r\u001dA1\n\t\u0004G\u00115Ca\u0003C(\t\u0007\n\t\u0011!A\u0003\u0002\u0019\u00121a\u0018\u0013:\u0001")
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception.class */
public final class Exception {

    /* renamed from: scala.util.control.Exception$By */
    /* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$By.class */
    public static class C2598By<T, R> {

        /* renamed from: f */
        private final Function1<T, R> f1648f;

        public C2598By(Function1<T, R> function1) {
            this.f1648f = function1;
        }

        /* renamed from: by */
        public R m7by(T t) {
            return this.f1648f.apply(t);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch.class */
    public static class Catch<T> implements Described {
        private final Option<Finally> fin;
        private final String name = "Catch";

        /* renamed from: pf */
        private final PartialFunction<Throwable, T> f1649pf;
        private final Function1<Throwable, Object> rethrow;
        private String scala$util$control$Exception$Described$$_desc;

        public Catch(PartialFunction<Throwable, T> partialFunction, Option<Finally> option, Function1<Throwable, Object> function1) {
            this.f1649pf = partialFunction;
            this.fin = option;
            this.rethrow = function1;
            scala$util$control$Exception$Described$$_desc_$eq("");
        }

        public Catch<T> andFinally(Function0<BoxedUnit> function0) {
            Catch<T> r10;
            Option<Finally> fin = fin();
            if (None$.MODULE$.equals(fin)) {
                r10 = new Catch<>(m4pf(), new Some(new Finally(function0)), rethrow());
            } else if (!(fin instanceof Some)) {
                throw new MatchError(fin);
            } else {
                r10 = new Catch<>(m4pf(), new Some(((Finally) ((Some) fin).m362x()).and(function0)), rethrow());
            }
            return r10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.Object] */
        public <U> U apply(Function0<U> function0) {
            U u;
            Throwable th;
            Option<Finally> option;
            Option<Finally> fin;
            try {
                u = function0.apply();
            } catch (Throwable th2) {
                try {
                    if (!BoxesRunTime.unboxToBoolean(rethrow().apply(th2)) && m4pf().isDefinedAt(th2)) {
                        u = m4pf().apply(th2);
                    }
                    fin = fin();
                    option = fin;
                    th = th2;
                } catch (Throwable th3) {
                    option = fin();
                    th = th3;
                    if (!option.isEmpty()) {
                        th = th3;
                        option.get().invoke();
                        new Some(BoxedUnit.UNIT);
                        throw th;
                    }
                    None$ none$ = None$.MODULE$;
                    throw th;
                }
                if (fin.isEmpty()) {
                    th = th2;
                    None$ none$2 = None$.MODULE$;
                    throw th;
                }
                option.get().invoke();
                new Some(BoxedUnit.UNIT);
                throw th;
            }
            Option<Finally> fin2 = fin();
            if (fin2.isEmpty()) {
                None$ none$3 = None$.MODULE$;
            } else {
                fin2.get().invoke();
                new Some(BoxedUnit.UNIT);
            }
            return u;
        }

        @Override // scala.util.control.Exception.Described
        public String desc() {
            return Described.Cclass.desc(this);
        }

        public <U> Either<Throwable, U> either(Function0<U> function0) {
            return (Either) toEither().apply(new Exception$Catch$$anonfun$either$1(this, function0));
        }

        public Option<Finally> fin() {
            return this.fin;
        }

        @Override // scala.util.control.Exception.Described
        public String name() {
            return this.name;
        }

        public <U> Option<U> opt(Function0<U> function0) {
            return (Option) toOption().apply(new Exception$Catch$$anonfun$opt$1(this, function0));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: or */
        public <U> Catch<U> m6or(PartialFunction<Throwable, U> partialFunction) {
            return new Catch<>(m4pf().orElse(partialFunction), fin(), rethrow());
        }

        /* renamed from: or */
        public <U> Catch<U> m5or(Catch<U> r4) {
            return m6or(r4.m4pf());
        }

        /* renamed from: pf */
        public PartialFunction<Throwable, T> m4pf() {
            return this.f1649pf;
        }

        public Function1<Throwable, Object> rethrow() {
            return this.rethrow;
        }

        @Override // scala.util.control.Exception.Described
        public String scala$util$control$Exception$Described$$_desc() {
            return this.scala$util$control$Exception$Described$$_desc;
        }

        @Override // scala.util.control.Exception.Described
        @TraitSetter
        public void scala$util$control$Exception$Described$$_desc_$eq(String str) {
            this.scala$util$control$Exception$Described$$_desc = str;
        }

        public Catch<Either<Throwable, T>> toEither() {
            return (Catch<Either<Throwable, T>>) withApply(new Exception$Catch$$anonfun$toEither$1(this));
        }

        public Catch<Option<T>> toOption() {
            return (Catch<Option<T>>) withApply(new Exception$Catch$$anonfun$toOption$1(this));
        }

        @Override // scala.util.control.Exception.Described
        public String toString() {
            return Described.Cclass.toString(this);
        }

        public Catch<Try<T>> toTry() {
            return (Catch<Try<T>>) withApply(new Exception$Catch$$anonfun$toTry$1(this));
        }

        public <U> Catch<U> withApply(Function1<Throwable, U> function1) {
            return new Catch<>(new PartialFunction<Throwable, U>(this, function1) { // from class: scala.util.control.Exception$Catch$$anon$2
                private final /* synthetic */ Exception.Catch $outer;
                private final Function1 f$2;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(this);
                    this.$outer = this;
                    this.f$2 = function1;
                    Function1.Cclass.$init$(this);
                    PartialFunction.Cclass.$init$(this);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<Throwable, C> andThen(Function1<U, C> function12) {
                    return PartialFunction.Cclass.andThen(this, function12);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [U, java.lang.Object] */
                public U apply(Throwable th) {
                    return this.f$2.apply(th);
                }

                @Override // scala.Function1
                public double apply$mcDD$sp(double d) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$Catch$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToBoolean;
                }

                @Override // scala.PartialFunction
                public Object applyOrElse(Object obj, Function1 function12) {
                    return PartialFunction.Cclass.applyOrElse(this, obj, function12);
                }

                @Override // scala.Function1
                public <A> Function1<A, U> compose(Function1<A, Throwable> function12) {
                    return Function1.Cclass.compose(this, function12);
                }

                public boolean isDefinedAt(Throwable th) {
                    return this.$outer.m4pf().isDefinedAt(th);
                }

                @Override // scala.PartialFunction
                public Function1<Throwable, Option<U>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.PartialFunction
                public <A1 extends Throwable, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
                    return PartialFunction.Cclass.orElse(this, partialFunction);
                }

                @Override // scala.PartialFunction
                public <U> Function1<Throwable, Object> runWith(Function1<U, U> function12) {
                    return PartialFunction.Cclass.runWith(this, function12);
                }

                @Override // scala.Function1
                public String toString() {
                    return Function1.Cclass.toString(this);
                }
            }, fin(), rethrow());
        }

        @Override // scala.util.control.Exception.Described
        public Described withDesc(String str) {
            return Described.Cclass.withDesc(this, str);
        }

        public <U> Try<U> withTry(Function0<U> function0) {
            return (Try) toTry().apply(new Exception$Catch$$anonfun$withTry$1(this, function0));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Described.class */
    public interface Described {

        /* renamed from: scala.util.control.Exception$Described$class */
        /* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Described$class.class */
        public abstract class Cclass {
            public static String desc(Described described) {
                return described.scala$util$control$Exception$Described$$_desc();
            }

            public static String toString(Described described) {
                return new StringBuilder().append((Object) described.name()).append((Object) "(").append((Object) described.desc()).append((Object) ")").toString();
            }

            public static Described withDesc(Described described, String str) {
                described.scala$util$control$Exception$Described$$_desc_$eq(str);
                return described;
            }
        }

        String desc();

        String name();

        String scala$util$control$Exception$Described$$_desc();

        @TraitSetter
        void scala$util$control$Exception$Described$$_desc_$eq(String str);

        String toString();

        Described withDesc(String str);
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Finally.class */
    public static class Finally implements Described {
        private final String name = "Finally";
        private String scala$util$control$Exception$Described$$_desc;
        public final Function0<BoxedUnit> scala$util$control$Exception$Finally$$body;

        public Finally(Function0<BoxedUnit> function0) {
            this.scala$util$control$Exception$Finally$$body = function0;
            scala$util$control$Exception$Described$$_desc_$eq("");
        }

        public Finally and(Function0<BoxedUnit> function0) {
            return new Finally(new Exception$Finally$$anonfun$and$1(this, function0));
        }

        @Override // scala.util.control.Exception.Described
        public String desc() {
            return Described.Cclass.desc(this);
        }

        public void invoke() {
            this.scala$util$control$Exception$Finally$$body.apply$mcV$sp();
        }

        @Override // scala.util.control.Exception.Described
        public String name() {
            return this.name;
        }

        @Override // scala.util.control.Exception.Described
        public String scala$util$control$Exception$Described$$_desc() {
            return this.scala$util$control$Exception$Described$$_desc;
        }

        @Override // scala.util.control.Exception.Described
        @TraitSetter
        public void scala$util$control$Exception$Described$$_desc_$eq(String str) {
            this.scala$util$control$Exception$Described$$_desc = str;
        }

        @Override // scala.util.control.Exception.Described
        public String toString() {
            return Described.Cclass.toString(this);
        }

        @Override // scala.util.control.Exception.Described
        public Described withDesc(String str) {
            return Described.Cclass.withDesc(this, str);
        }
    }

    public static <T> Catch<T> allCatch() {
        return Exception$.MODULE$.allCatch();
    }

    public static <T> PartialFunction<Throwable, T> allCatcher() {
        return Exception$.MODULE$.allCatcher();
    }

    public static <T> Catch<T> catching(PartialFunction<Throwable, T> partialFunction) {
        return Exception$.MODULE$.catching(partialFunction);
    }

    public static <T> Catch<T> catching(Seq<Class<?>> seq) {
        return Exception$.MODULE$.catching(seq);
    }

    public static <T> Catch<T> catchingPromiscuously(PartialFunction<Throwable, T> partialFunction) {
        return Exception$.MODULE$.catchingPromiscuously(partialFunction);
    }

    public static <T> Catch<T> catchingPromiscuously(Seq<Class<?>> seq) {
        return Exception$.MODULE$.catchingPromiscuously(seq);
    }

    public static <T> Catch<T> failAsValue(Seq<Class<?>> seq, Function0<T> function0) {
        return Exception$.MODULE$.failAsValue(seq, function0);
    }

    public static <T> Catch<Option<T>> failing(Seq<Class<?>> seq) {
        return Exception$.MODULE$.failing(seq);
    }

    public static <T> C2598By<Function1<Throwable, T>, Catch<T>> handling(Seq<Class<?>> seq) {
        return Exception$.MODULE$.handling(seq);
    }

    public static Catch<BoxedUnit> ignoring(Seq<Class<?>> seq) {
        return Exception$.MODULE$.ignoring(seq);
    }

    public static <Ex extends Throwable, T> Object mkCatcher(Function1<Ex, Object> function1, Function1<Ex, T> function12, ClassTag<Ex> classTag) {
        return Exception$.MODULE$.mkCatcher(function1, function12, classTag);
    }

    public static <T> Object mkThrowableCatcher(Function1<Throwable, Object> function1, Function1<Throwable, T> function12) {
        return Exception$.MODULE$.mkThrowableCatcher(function1, function12);
    }

    public static Catch<Nothing$> noCatch() {
        return Exception$.MODULE$.noCatch();
    }

    public static <T> Catch<T> nonFatalCatch() {
        return Exception$.MODULE$.nonFatalCatch();
    }

    public static <T> PartialFunction<Throwable, T> nonFatalCatcher() {
        return Exception$.MODULE$.nonFatalCatcher();
    }

    public static PartialFunction<Throwable, Nothing$> nothingCatcher() {
        return Exception$.MODULE$.nothingCatcher();
    }

    public static boolean shouldRethrow(Throwable th) {
        return Exception$.MODULE$.shouldRethrow(th);
    }

    public static <Ex extends Throwable, T> Object throwableSubtypeToCatcher(PartialFunction<Ex, T> partialFunction, ClassTag<Ex> classTag) {
        return Exception$.MODULE$.throwableSubtypeToCatcher(partialFunction, classTag);
    }

    public static <T> Catch<T> ultimately(Function0<BoxedUnit> function0) {
        return Exception$.MODULE$.ultimately(function0);
    }

    public static <T> Catch<T> unwrapping(Seq<Class<?>> seq) {
        return Exception$.MODULE$.unwrapping(seq);
    }
}
