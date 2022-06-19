package scala.math;

import java.math.MathContext;
import scala.Array$;
import scala.Enumeration;
import scala.Function0;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.SeqLike;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$BigDecimal$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.RichDouble$;
import scala.runtime.RichFloat$;
import scala.runtime.ScalaRunTime$;
import scala.util.hashing.MurmurHash3$;
@ScalaSignature(bytes = "\u0006\u0001\u0015}q!B\u0001\u0003\u0011\u00039\u0011A\u0003\"jO\u0012+7-[7bY*\u00111\u0001B\u0001\u0005[\u0006$\bNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"\u0001C\u0005\u000e\u0003\t1QA\u0003\u0002\t\u0002-\u0011!BQ5h\t\u0016\u001c\u0017.\\1m'\rIA\u0002\u0005\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011a!\u00118z%\u00164\u0007CA\u0007\u0012\u0013\t\u0011BA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003\u0015\u0013\u0011\u0005Q#\u0001\u0004=S:LGO\u0010\u000b\u0002\u000f!9q#\u0003b\u0001\n\u001bA\u0012\u0001E7bq&lW/\u001c%bg\"\u001c6-\u00197f+\u0005Ir\"\u0001\u000e\u001e\u0005M1\u0005B\u0002\u000f\nA\u00035\u0011$A\tnCbLW.^7ICND7kY1mK\u0002BqAH\u0005C\u0002\u00135q$A\niCND7i\u001c3f\u001d>$8i\\7qkR,G-F\u0001!\u001f\u0005\tS\u0004B/QS>AaaI\u0005!\u0002\u001b\u0001\u0013\u0001\u00065bg\"\u001cu\u000eZ3O_R\u001cu.\u001c9vi\u0016$\u0007\u0005C\u0004&\u0013\t\u0007IQ\u0002\u0014\u0002\u0017\u0011,7-\u001b\u001acS:\f'/_\u000b\u0002O=\t\u0001\u0006\t\u0005A\u0015M}\u0015\"_Rs\u0011\u0019Q\u0013\u0002)A\u0007O\u0005aA-Z2je\tLg.\u0019:zA!9A&\u0003b\u0001\n\u0013i\u0013!C7j]\u000e\u000b7\r[3e+\u0005q\u0003CA\u00070\u0013\t\u0001DAA\u0002J]RDaAM\u0005!\u0002\u0013q\u0013AC7j]\u000e\u000b7\r[3eA!9A'\u0003b\u0001\n\u0013i\u0013!C7bq\u000e\u000b7\r[3e\u0011\u00191\u0014\u0002)A\u0005]\u0005QQ.\u0019=DC\u000eDW\r\u001a\u0011\t\u000faJ!\u0019!C\u0001s\u0005\u0011B-\u001a4bk2$X*\u0019;i\u0007>tG/\u001a=u+\u0005Q\u0004CA\u001e@\u001b\u0005a$BA\u0002>\u0015\u0005q\u0014\u0001\u00026bm\u0006L!\u0001\u0011\u001f\u0003\u00175\u000bG\u000f[\"p]R,\u0007\u0010\u001e\u0005\u0007\u0005&\u0001\u000b\u0011\u0002\u001e\u0002'\u0011,g-Y;mi6\u000bG\u000f[\"p]R,\u0007\u0010\u001e\u0011\t\u0011\u0011K\u0001R1A\u0005\n\u0015\u000bQaY1dQ\u0016,\u0012A\u0012\t\u0004\u001b\u001dK\u0015B\u0001%\u0005\u0005\u0015\t%O]1z!\tA!J\u0002\u0003\u000b\u0005\tY5\u0003\u0002&M\u001fB\u0001\"\u0001C'\n\u00059\u0013!aC*dC2\fg*^7cKJ\u0004\"\u0001\u0003)\n\u0005E\u0013!aF*dC2\fg*^7fe&\u001c7i\u001c8wKJ\u001c\u0018n\u001c8t\u0011!\u0019&J!b\u0001\n\u0003!\u0016A\u00032jO\u0012+7-[7bYV\tQ\u000b\u0005\u0002<-&\u0011!\u0002\u0010\u0005\t1*\u0013\t\u0011)A\u0005+\u0006Y!-[4EK\u000eLW.\u00197!\u0011!Q&J!b\u0001\n\u0003I\u0014AA7d\u0011!a&J!A!\u0002\u0013Q\u0014aA7dA!)AC\u0013C\u0001=R\u0019\u0011j\u00181\t\u000bMk\u0006\u0019A+\t\u000bik\u0006\u0019\u0001\u001e\t\u000bQQE\u0011\u00012\u0015\u0005%\u001b\u0007\"B*b\u0001\u0004)\u0006bB3K\u0001\u0004%i!L\u0001\u0011G>l\u0007/\u001e;fI\"\u000b7\u000f[\"pI\u0016Dqa\u001a&A\u0002\u00135\u0001.\u0001\u000bd_6\u0004X\u000f^3e\u0011\u0006\u001c\bnQ8eK~#S-\u001d\u000b\u0003S2\u0004\"!\u00046\n\u0005-$!\u0001B+oSRDq!\u001c4\u0002\u0002\u0003\u0007a&A\u0002yIEBaa\u001c&!B\u001bq\u0013!E2p[B,H/\u001a3ICND7i\u001c3fA!)\u0011O\u0013C\u0007e\u0006y1m\\7qkR,\u0007*Y:i\u0007>$W\rF\u0001j\u0011\u0015!(\n\"\u0011v\u0003!A\u0017m\u001d5D_\u0012,G#\u0001\u0018\t\u000b]TE\u0011\t=\u0002\r\u0015\fX/\u00197t)\tIH\u0010\u0005\u0002\u000eu&\u00111\u0010\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015ih\u000f1\u0001\u007f\u0003\u0011!\b.\u0019;\u0011\u00055y\u0018bAA\u0001\t\t\u0019\u0011I\\=\t\u000f\u0005\u0015!\n\"\u0011\u0002\b\u0005Y\u0011n\u001d,bY&$')\u001f;f+\u0005I\bbBA\u0006\u0015\u0012\u0005\u0013qA\u0001\rSN4\u0016\r\\5e'\"|'\u000f\u001e\u0005\b\u0003\u001fQE\u0011IA\u0004\u0003-I7OV1mS\u0012\u001c\u0005.\u0019:\t\u000f\u0005M!\n\"\u0011\u0002\b\u0005Q\u0011n\u001d,bY&$\u0017J\u001c;\t\u000f\u0005]!\n\"\u0001\u0002\b\u0005Y\u0011n\u001d,bY&$Gj\u001c8h\u0011\u001d\tYB\u0013C\u0001\u0003\u000f\tA\"[:WC2LGM\u00127pCRD\u0003\"!\u0007\u0002 \u0005\u0015\u0012\u0011\u0006\t\u0004\u001b\u0005\u0005\u0012bAA\u0012\t\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0005\u0005\u001d\u0012\u0001[,iCR\u00043m\u001c8ti&$X\u000f^3tAY\fG.\u001b3jif\u0004\u0013n\u001d\u0011v]\u000edW-\u0019:/A\u0001*6/\u001a\u0011aSN,\u00050Y2u\r2|\u0017\r\u001e1-A\u0001L7OQ5oCJLh\t\\8bi\u0002d\u0003e\u001c:!A&\u001cH)Z2j[\u0006dg\t\\8bi\u0002\u0004\u0013N\\:uK\u0006$g&\t\u0002\u0002,\u0005!!GL\u00192\u0011\u001d\tyC\u0013C\u0001\u0003\u000f\tQ\"[:WC2LG\rR8vE2,\u0007\u0006CA\u0017\u0003?\t\u0019$!\u000b\"\u0005\u0005U\u0012!\u001a,bY&$\u0017\u000e^=!Q\u0006\u001c\b\u0005Z5ti&t7\r\u001e\u0011nK\u0006t\u0017N\\4t]\u0001\u0002Sk]3!A&\u001cX\t_1di\u0012{WO\u00197fA2\u0002\u0003-[:CS:\f'/\u001f#pk\ndW\r\u0019\u0017!_J\u0004\u0003-[:EK\u000eLW.\u00197E_V\u0014G.\u001a1!S:\u001cH/Z1e]!9\u0011\u0011\b&\u0005\u0002\u0005\u001d\u0011aD5t\t\u0016\u001c\u0017.\\1m\t>,(\r\\3\t\u000f\u0005u\"\n\"\u0001\u0002\b\u0005q\u0011n\u001d#fG&l\u0017\r\u001c$m_\u0006$\bbBA!\u0015\u0012\u0005\u0011qA\u0001\u000fSN\u0014\u0015N\\1ss\u0012{WO\u00197f\u0011\u001d\t)E\u0013C\u0001\u0003\u000f\tQ\"[:CS:\f'/\u001f$m_\u0006$\bbBA%\u0015\u0012\u0005\u0011qA\u0001\u000eSN,\u00050Y2u\t>,(\r\\3\t\u000f\u00055#\n\"\u0001\u0002\b\u0005a\u0011n]#yC\u000e$h\t\\8bi\"9\u0011\u0011\u000b&\u0005\n\u0005M\u0013!\u00068p\u0003JLG\u000f[7fi&\u001cW\t_2faRLwN\u001c\u000b\u0004s\u0006U\u0003\"CA,\u0003\u001f\"\t\u0019AA-\u0003\u0011\u0011w\u000eZ=\u0011\t5\tY&[\u0005\u0004\u0003;\"!\u0001\u0003\u001fcs:\fW.\u001a \t\u000f\u0005\u0005$\n\"\u0001\u0002d\u00059\u0011n],i_2,G#A=\t\u000f\u0005\u001d$\n\"\u0001\u0002j\u0005QQO\u001c3fe2L\u0018N\\4\u0015\u0003UCaa\u001e&\u0005\u0002\u00055DcA=\u0002p!1Q0a\u001bA\u0002%Cq!a\u001dK\t\u0003\t)(A\u0004d_6\u0004\u0018M]3\u0015\u00079\n9\b\u0003\u0004~\u0003c\u0002\r!\u0013\u0005\b\u0003wRE\u0011AA?\u0003!!C.Z:tI\u0015\fHcA=\u0002��!1Q0!\u001fA\u0002%Cq!a!K\t\u0003\t))A\u0006%OJ,\u0017\r^3sI\u0015\fHcA=\u0002\b\"1Q0!!A\u0002%Cq!a#K\t\u0003\ti)A\u0003%Y\u0016\u001c8\u000fF\u0002z\u0003\u001fCa!`AE\u0001\u0004I\u0005bBAJ\u0015\u0012\u0005\u0011QS\u0001\tI\u001d\u0014X-\u0019;feR\u0019\u00110a&\t\ru\f\t\n1\u0001J\u0011\u001d\tYJ\u0013C\u0001\u0003;\u000bQ\u0001\n9mkN$2!SAP\u0011\u0019i\u0018\u0011\u0014a\u0001\u0013\"9\u00111\u0015&\u0005\u0002\u0005\u0015\u0016A\u0002\u0013nS:,8\u000fF\u0002J\u0003OCa!`AQ\u0001\u0004I\u0005bBAV\u0015\u0012\u0005\u0011QV\u0001\u0007IQLW.Z:\u0015\u0007%\u000by\u000b\u0003\u0004~\u0003S\u0003\r!\u0013\u0005\b\u0003gSE\u0011AA[\u0003\u0011!C-\u001b<\u0015\u0007%\u000b9\f\u0003\u0004~\u0003c\u0003\r!\u0013\u0005\b\u0003wSE\u0011AA_\u00031!C-\u001b<%a\u0016\u00148-\u001a8u)\u0011\ty,!2\u0011\u000b5\t\t-S%\n\u0007\u0005\rGA\u0001\u0004UkBdWM\r\u0005\u0007{\u0006e\u0006\u0019A%\t\u000f\u0005%'\n\"\u0001\u0002L\u0006!\u0011/^8u)\rI\u0015Q\u001a\u0005\u0007{\u0006\u001d\u0007\u0019A%\t\u000f\u0005E'\n\"\u0001\u0002T\u0006\u0019Q.\u001b8\u0015\u0007%\u000b)\u000e\u0003\u0004~\u0003\u001f\u0004\r!\u0013\u0005\b\u00033TE\u0011AAn\u0003\ri\u0017\r\u001f\u000b\u0004\u0013\u0006u\u0007BB?\u0002X\u0002\u0007\u0011\nC\u0004\u0002b*#\t!a9\u0002\u0013I,W.Y5oI\u0016\u0014HcA%\u0002f\"1Q0a8A\u0002%Cq!!;K\t\u0003\tY/\u0001\u0005%a\u0016\u00148-\u001a8u)\rI\u0015Q\u001e\u0005\u0007{\u0006\u001d\b\u0019A%\t\u000f\u0005E(\n\"\u0001\u0002t\u0006\u0019\u0001o\\<\u0015\u0007%\u000b)\u0010C\u0004\u0002x\u0006=\b\u0019\u0001\u0018\u0002\u00039Dq!a?K\t\u0003\ti0\u0001\u0007v]\u0006\u0014\u0018p\u0018\u0013nS:,8/F\u0001J\u0011\u001d\u0011\tA\u0013C\u0001\u0003{\f1!\u00192t\u0011\u0019\u0011)A\u0013C\u0001[\u000511/[4ok6DaA!\u0003K\t\u0003i\u0013!\u00039sK\u000eL7/[8o\u0011\u001d\u0011iA\u0013C\u0001\u0005\u001f\tQA]8v]\u0012$2!\u0013B\t\u0011\u0019Q&1\u0002a\u0001u!9!Q\u0003&\u0005\u0002\u0005u\u0018a\u0002:pk:$W\r\u001a\u0005\u0007\u00053QE\u0011A\u0017\u0002\u000bM\u001c\u0017\r\\3\t\u000f\tu!\n\"\u0001\u0002~\u0006\u0019Q\u000f\u001c9\t\u000f\t\u0005\"\n\"\u0001\u0003$\u0005)\u0011\r\u001d9msR\u0019\u0011J!\n\t\ri\u0013y\u00021\u0001;\u0011\u001d\u0011IC\u0013C\u0001\u0005W\t\u0001b]3u'\u000e\fG.\u001a\u000b\u0004\u0013\n5\u0002b\u0002B\r\u0005O\u0001\rA\f\u0005\b\u0005SQE\u0011\u0001B\u0019)\u0015I%1\u0007B\u001b\u0011\u001d\u0011IBa\fA\u00029B\u0001Ba\u000e\u00030\u0001\u0007!\u0011H\u0001\u0005[>$W\r\u0005\u0003\u0003<\t]c\u0002\u0002B\u001f\u0005\u007fq!\u0001\u0003\u0001\b\u000f\t\u0005\u0013\u0002#\u0001\u0003D\u0005a!k\\;oI&tw-T8eKB!!Q\tB$\u001b\u0005Iaa\u0002B%\u0013!\u0005!1\n\u0002\r%>,h\u000eZ5oO6{G-Z\n\u0005\u0005\u000f\u0012i\u0005E\u0002\u000e\u0005\u001fJ1A!\u0015\u0005\u0005-)e.^7fe\u0006$\u0018n\u001c8\t\u000fQ\u00119\u0005\"\u0001\u0003VQ\u0011!1I\u0003\b\u0005\u0013\u00129\u0005\u0001B-!\u0011\u0011YF!\u0018\u000e\u0005\t\u001d\u0013\u0002\u0002B0\u0005\u001f\u0012QAV1mk\u0016D!Ba\u0019\u0003H\t\u0007I\u0011\u0001B3\u0003\t)\u0006+\u0006\u0002\u0003Z!I!\u0011\u000eB$A\u0003%!\u0011L\u0001\u0004+B\u0003\u0003B\u0003B7\u0005\u000f\u0012\r\u0011\"\u0001\u0003f\u0005!AiT,O\u0011%\u0011\tHa\u0012!\u0002\u0013\u0011I&A\u0003E\u001f^s\u0005\u0005\u0003\u0006\u0003v\t\u001d#\u0019!C\u0001\u0005K\nqaQ#J\u0019&su\tC\u0005\u0003z\t\u001d\u0003\u0015!\u0003\u0003Z\u0005A1)R%M\u0013:;\u0005\u0005\u0003\u0006\u0003~\t\u001d#\u0019!C\u0001\u0005K\nQA\u0012'P\u001fJC\u0011B!!\u0003H\u0001\u0006IA!\u0017\u0002\r\u0019cuj\u0014*!\u0011)\u0011)Ia\u0012C\u0002\u0013\u0005!QM\u0001\b\u0011\u0006ceiX+Q\u0011%\u0011IIa\u0012!\u0002\u0013\u0011I&\u0001\u0005I\u000323u,\u0016)!\u0011)\u0011iIa\u0012C\u0002\u0013\u0005!QM\u0001\n\u0011\u0006cei\u0018#P/:C\u0011B!%\u0003H\u0001\u0006IA!\u0017\u0002\u0015!\u000bEJR0E\u001f^s\u0005\u0005\u0003\u0006\u0003\u0016\n\u001d#\u0019!C\u0001\u0005K\n\u0011\u0002S!M\r~+e+\u0012(\t\u0013\te%q\tQ\u0001\n\te\u0013A\u0003%B\u0019\u001a{VIV#OA!Q!Q\u0014B$\u0005\u0004%\tA!\u001a\u0002\u0017Use*R\"F'N\u000b%+\u0017\u0005\n\u0005C\u00139\u0005)A\u0005\u00053\nA\"\u0016(O\u000b\u000e+5kU!S3\u0002BqA!*K\t\u0003\u00129+A\u0005csR,g+\u00197vKR\u0011!\u0011\u0016\t\u0004\u001b\t-\u0016b\u0001BW\t\t!!)\u001f;f\u0011\u001d\u0011\tL\u0013C!\u0005g\u000b!b\u001d5peR4\u0016\r\\;f)\t\u0011)\fE\u0002\u000e\u0005oK1A!/\u0005\u0005\u0015\u0019\u0006n\u001c:u\u0011\u001d\u0011iL\u0013C\u0001\u0005\u007f\u000b\u0011b\u00195beZ\u000bG.^3\u0016\u0005\t\u0005\u0007cA\u0007\u0003D&\u0019!Q\u0019\u0003\u0003\t\rC\u0017M\u001d\u0005\u0007\u0005\u0013TE\u0011A;\u0002\u0011%tGOV1mk\u0016DqA!4K\t\u0003\u0011y-A\u0005m_:<g+\u00197vKR\u0011!\u0011\u001b\t\u0004\u001b\tM\u0017b\u0001Bk\t\t!Aj\u001c8h\u0011\u001d\u0011IN\u0013C\u0001\u00057\f!B\u001a7pCR4\u0016\r\\;f)\t\u0011i\u000eE\u0002\u000e\u0005?L1A!9\u0005\u0005\u00151En\\1u\u0011\u001d\u0011)O\u0013C\u0001\u0005O\f1\u0002Z8vE2,g+\u00197vKR\u0011!\u0011\u001e\t\u0004\u001b\t-\u0018b\u0001Bw\t\t1Ai\\;cY\u0016DqA!=K\t\u0003\u0011\u00190A\u0006u_\nKH/Z#yC\u000e$XC\u0001BU\u0011\u001d\u00119P\u0013C\u0001\u0005s\fA\u0002^8TQ>\u0014H/\u0012=bGR,\"A!.\t\r\tu(\n\"\u0001.\u0003)!x.\u00138u\u000bb\f7\r\u001e\u0005\b\u0007\u0003QE\u0011AB\u0002\u0003-!x\u000eT8oO\u0016C\u0018m\u0019;\u0016\u0005\tE\u0007bBB\u0004\u0015\u0012\u00051\u0011B\u0001\u0006k:$\u0018\u000e\u001c\u000b\u0005\u0007\u0017\u0019I\u0004E\u0004\u0004\u000e\rm\u0011j!\u000b\u000f\t\r=1Q\u0003\b\u0004\u001b\rE\u0011bAB\n\t\u00059\u0001/Y2lC\u001e,\u0017\u0002BB\f\u00073\tQAU1oO\u0016T1aa\u0005\u0005\u0013\u0011\u0019iba\b\u0003\u000fA\u000b'\u000f^5bY*!1qCB\u0011\u0015\u0011\u0019\u0019c!\n\u0002\u0013%lW.\u001e;bE2,'bAB\u0014\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u0011\u000b\r-21G%\u000f\t\r52qF\u0007\u0003\u0007CIAa!\r\u0004\"\u0005aa*^7fe&\u001c'+\u00198hK&!1QGB\u001c\u0005%)\u0005p\u00197vg&4XM\u0003\u0003\u00042\r\u0005\u0002bBB\u001e\u0007\u000b\u0001\r!S\u0001\u0004K:$\u0007bBB\u0004\u0015\u0012\u00051q\b\u000b\u0007\u0007\u0003\u001a9e!\u0013\u0011\r\r-21GB\"!\u0011\u0019ya!\u0012\n\u0007)\u0019I\u0002C\u0004\u0004<\ru\u0002\u0019A%\t\u000f\r-3Q\ba\u0001\u0013\u0006!1\u000f^3q\u0011\u001d\u0019yE\u0013C\u0001\u0007#\n!\u0001^8\u0015\t\rM31\f\t\b\u0007\u001b\u0019Y\"SB+!\u0015\u0019Yca\u0016J\u0013\u0011\u0019Ifa\u000e\u0003\u0013%s7\r\\;tSZ,\u0007bBB\u001e\u0007\u001b\u0002\r!\u0013\u0005\b\u0007\u001fRE\u0011AB0)\u0019\u0019\tga\u0019\u0004fA111FB,\u0007\u0007Bqaa\u000f\u0004^\u0001\u0007\u0011\nC\u0004\u0004L\ru\u0003\u0019A%\t\u000f\r%$\n\"\u0001\u0004l\u0005AAo\u001c\"jO&sG\u000f\u0006\u0002\u0004nA\u0019\u0001ba\u001c\n\u0007\rE$A\u0001\u0004CS\u001eLe\u000e\u001e\u0005\b\u0007kRE\u0011AB<\u00035!xNQ5h\u0013:$X\t_1diR\u00111\u0011\u0010\t\u0006\u001b\rm4QN\u0005\u0004\u0007{\"!AB(qi&|g\u000eC\u0004\u0004\u0002*#\tea!\u0002\u0011Q|7\u000b\u001e:j]\u001e$\"a!\"\u0011\t\r\u001d5Q\u0012\b\u0004\u001b\r%\u0015bABF\t\u00051\u0001K]3eK\u001aLAaa$\u0004\u0012\n11\u000b\u001e:j]\u001eT1aa#\u0005\u0011%\u0019)*\u0003E\u0001B\u0003&a)\u0001\u0004dC\u000eDW\r\t\u0005\b\u00073KA\u0011ABN\u0003\u001d!WmY5nC2$R!SBO\u0007CC\u0001ba(\u0004\u0018\u0002\u0007!\u0011^\u0001\u0002I\"1!la&A\u0002iBqa!'\n\t\u0003\u0019)\u000bF\u0002J\u0007OC\u0001ba(\u0004$\u0002\u0007!\u0011\u001e\u0005\b\u00073KA\u0011ABV)\u0015I5QVBY\u0011!\u0019yk!+A\u0002\tu\u0017!\u00014\t\ri\u001bI\u000b1\u0001;\u0011\u001d\u0019I*\u0003C\u0001\u0007k#2!SB\\\u0011!\u0019yka-A\u0002\tu\u0007bBBM\u0013\u0011\u000511\u0018\u000b\u0006\u0013\u000eu6\u0011\u0019\u0005\t\u0007\u007f\u001bI\f1\u0001\u0003R\u0006\tA\u000e\u0003\u0004[\u0007s\u0003\rA\u000f\u0005\b\u00073KA\u0011ABc)\rI5q\u0019\u0005\t\u0007\u007f\u001b\u0019\r1\u0001\u0003R\"91\u0011T\u0005\u0005\u0002\r-G#B%\u0004N\u000eE\u0007bBBh\u0007\u0013\u0004\r!V\u0001\u0003E\u0012DaAWBe\u0001\u0004Q\u0004bBBk\u0013\u0011\u00051q[\u0001\u0007E&t\u0017M]=\u0015\u000b%\u001bIna7\t\u0011\r}51\u001ba\u0001\u0005SDaAWBj\u0001\u0004Q\u0004bBBk\u0013\u0011\u00051q\u001c\u000b\u0004\u0013\u000e\u0005\b\u0002CBP\u0007;\u0004\rA!;\t\u000f\r\u0015\u0018\u0002\"\u0001\u0004h\u0006)Q\r_1diR\u0019\u0011j!;\t\u000f\r-81\u001da\u0001+\u0006!!/\u001a9s\u0011\u001d\u0019)/\u0003C\u0001\u0007_$2!SBy\u0011!\u0019yj!<A\u0002\t%\bbBBs\u0013\u0011\u00051Q\u001f\u000b\u0004\u0013\u000e]\b\u0002CB}\u0007g\u0004\ra!\u001c\u0002\u0005\tL\u0007bBBs\u0013\u0011\u00051Q \u000b\u0004\u0013\u000e}\b\u0002CB`\u0007w\u0004\rA!5\t\u000f\r\u0015\u0018\u0002\"\u0001\u0005\u0004Q\u0019\u0011\n\"\u0002\t\u0011\u0011\u001dA\u0011\u0001a\u0001\u0007\u000b\u000b\u0011a\u001d\u0005\b\u0007KLA\u0011\u0001C\u0006)\rIEQ\u0002\u0005\t\t\u001f!I\u00011\u0001\u0005\u0012\u0005\u00111m\u001d\t\u0005\u001b\u001d\u0013\t\rC\u0004\u0005\u0016%!\t\u0001b\u0006\u0002\u000fY\fG.^3PMR\u0019\u0011\n\"\u0007\t\u0011\r}E1\u0003a\u0001\u0005SDq\u0001\"\u0006\n\t\u0003!i\u0002F\u0003J\t?!\t\u0003\u0003\u0005\u0004 \u0012m\u0001\u0019\u0001Bu\u0011\u0019QF1\u0004a\u0001u!BA1DA\u0010\tK\tI#\t\u0002\u0005(\u0005\ty!T1uQ\u000e{g\u000e^3yi\u0002J7\u000f\t8pi\u0002\n\u0007\u000f\u001d7jK\u0012\u0004Co\u001c\u0011E_V\u0014G.Z:!S:\u0004c/\u00197vK>3g\u0006\t\u0011Vg\u0016\u0004#)[4EK\u000eLW.\u00197/I\u0016\u001c\u0017.\\1mAQ|\u0007%^:fAI|WO\u001c3j]\u001ed\u0003e\u001c:!U\u00064\u0018ML7bi\"t#)[4EK\u000eLW.\u00197/m\u0006dW/Z(gAQ|\u0007%\u0019<pS\u0012\u0004\u0013\u000e\u001e\u0018\t\u000f\u0011U\u0011\u0002\"\u0001\u0005,Q\u0019\u0011\n\"\f\t\u0011\u0011=B\u0011\u0006a\u0001\u0005#\f\u0011\u0001\u001f\u0005\b\t+IA\u0011\u0001C\u001a)\rIEQ\u0007\u0005\t\u0007_#\t\u00041\u0001\u0003^\"BA\u0011GA\u0010\ts\tI#\t\u0002\u0005<\u0005If\t\\8bi\u0002\n'oZ;nK:$8\u000f\t;pAY\fG.^3PM\u0002j\u0017-\u001f\u0011o_R\u0004Cm\u001c\u0011xQ\u0006$\b%_8vA]L7\u000f\u001b\u0018!AU\u001bX\r\t3fG&l\u0017\r\u001c\u0011pe\u00022\u0018\r\\;f\u001f\u001aDcM\f;p\t>,(\r\\3*]!9AQC\u0005\u0005\u0002\u0011}B#B%\u0005B\u0011\r\u0003\u0002CBX\t{\u0001\rA!8\t\ri#i\u00041\u0001;Q!!i$a\b\u0005:\u0005%\u0002b\u0002B\u0011\u0013\u0011\u0005A\u0011\n\u000b\u0004\u0013\u0012-\u0003b\u0002C'\t\u000f\u0002\rAL\u0001\u0002S\"9!\u0011E\u0005\u0005\u0002\u0011EC#B%\u0005T\u0011U\u0003b\u0002C'\t\u001f\u0002\rA\f\u0005\u00075\u0012=\u0003\u0019\u0001\u001e\t\u000f\t\u0005\u0012\u0002\"\u0001\u0005ZQ\u0019\u0011\nb\u0017\t\u0011\r}Fq\u000ba\u0001\u0005#DqA!\t\n\t\u0003!y\u0006F\u0003J\tC\"\u0019\u0007\u0003\u0005\u0004@\u0012u\u0003\u0019\u0001Bi\u0011\u0019QFQ\fa\u0001u!9!\u0011E\u0005\u0005\u0002\u0011\u001dD#B%\u0005j\u00115\u0004\u0002\u0003C6\tK\u0002\rA!5\u0002\u0017Ut7oY1mK\u00124\u0016\r\u001c\u0005\b\u00053!)\u00071\u0001/\u0011\u001d\u0011\t#\u0003C\u0001\tc\"r!\u0013C:\tk\"9\b\u0003\u0005\u0005l\u0011=\u0004\u0019\u0001Bi\u0011\u001d\u0011I\u0002b\u001cA\u00029BaA\u0017C8\u0001\u0004Q\u0004b\u0002B\u0011\u0013\u0011\u0005A1\u0010\u000b\u0004\u0013\u0012u\u0004\u0002CBP\ts\u0002\rA!;\t\u000f\t\u0005\u0012\u0002\"\u0001\u0005\u0002R)\u0011\nb!\u0005\u0006\"A1q\u0014C@\u0001\u0004\u0011I\u000f\u0003\u0004[\t\u007f\u0002\rA\u000f\u0005\b\u0005CIA\u0011\u0001CE)\rIE1\u0012\u0005\t\t_!9\t1\u0001\u0003^\"BAqQA\u0010\t\u001f\u000bI#\t\u0002\u0005\u0012\u0006\t\t\u0005\u00165fA\u0011,g-Y;mi\u0002\u001awN\u001c<feNLwN\u001c\u0011ge>l\u0007E\u00127pCR\u0004S.Y=!]>$\b\u0005Z8!o\"\fG\u000fI=pk\u0002:\u0018M\u001c;/A\u0001*6/\u001a\u0011CS\u001e$UmY5nC2tC-Z2j[\u0006d\u0007EZ8sA\u0005\u00043\u000b\u001e:j]\u001e\u0004#/\u001a9sKN,g\u000e^1uS>tG\u0006I8sA\u0015D\b\u000f\\5dSRd\u0017\u0010I2p]Z,'\u000f\u001e\u0011uQ\u0016\u0004c\t\\8bi\u0002:\u0018\u000e\u001e5!]Q|Gi\\;cY\u0016t\u0003b\u0002B\u0011\u0013\u0011\u0005AQ\u0013\u000b\u0006\u0013\u0012]E\u0011\u0014\u0005\t\t_!\u0019\n1\u0001\u0003^\"1!\fb%A\u0002iB\u0003\u0002b%\u0002 \u0011=\u0015\u0011\u0006\u0005\b\u0005CIA\u0011\u0001CP)\rIE\u0011\u0015\u0005\t\t_!i\n1\u0001\u0005\u0012!9!\u0011E\u0005\u0005\u0002\u0011\u0015F#B%\u0005(\u0012%\u0006\u0002\u0003C\u0018\tG\u0003\r\u0001\"\u0005\t\ri#\u0019\u000b1\u0001;\u0011\u001d\u0011\t#\u0003C\u0001\t[#2!\u0013CX\u0011!!y\u0003b+A\u0002\r\u0015\u0005b\u0002B\u0011\u0013\u0011\u0005A1\u0017\u000b\u0006\u0013\u0012UFq\u0017\u0005\t\t_!\t\f1\u0001\u0004\u0006\"1!\f\"-A\u0002iBqA!\t\n\t\u0003!Y\fF\u0002J\t{C\u0001\u0002b\f\u0005:\u0002\u00071Q\u000e\u0005\b\u0005CIA\u0011\u0001Ca)\u0015IE1\u0019Cc\u0011!!y\u0003b0A\u0002\r5\u0004B\u0002.\u0005@\u0002\u0007!\bC\u0004\u0003\"%!\t\u0001\"3\u0015\u000b%#Y\r\"4\t\u0011\u0011-Dq\u0019a\u0001\u0007[BqA!\u0007\u0005H\u0002\u0007a\u0006C\u0004\u0003\"%!\t\u0001\"5\u0015\u000f%#\u0019\u000e\"6\u0005X\"AA1\u000eCh\u0001\u0004\u0019i\u0007C\u0004\u0003\u001a\u0011=\u0007\u0019\u0001\u0018\t\ri#y\r1\u0001;\u0011\u001d\u0011\t#\u0003C\u0001\t7$2!\u0013Co\u0011\u001d\u0019y\r\"7A\u0002UCqA!\t\n\t\u0003!\t\u000fF\u0003J\tG$)\u000fC\u0004\u0004P\u0012}\u0007\u0019A+\t\ri#y\u000e1\u0001;Q!!y.a\b\u0005j\u0006%\u0012E\u0001Cv\u0003\u0005UC\u000b[5tA5,G\u000f[8eA\u0005\u0004\b/Z1sg\u0002\"x\u000e\t:pk:$\u0007%\u0019\u0011kCZ\fg&\\1uQ:\u0012\u0015n\u001a#fG&l\u0017\r\u001c\u0011ckR\u0004\u0013m\u0019;vC2d\u0017\u0010\t3pKNtw\u0005\u001e\u0018!AU\u001bX\r\t8fo\u0002\u0012\u0015n\u001a#fG&l\u0017\r\u001c\u0015cI2\u0002SnY\u0015!S:\u001cH/Z1eA\u0019|'\u000f\t8pAI|WO\u001c3j]\u001ed\u0003e\u001c:!\u0005&<G)Z2j[\u0006dg\u0006Z3dS6\fG\u000e\u000b2eY\u0001j7-\u000b\u0011g_J\u0004#o\\;oI&twM\f\u0005\b\t_LA1\u0001Cy\u00039Ig\u000e\u001e\u001acS\u001e$UmY5nC2$2!\u0013Cz\u0011\u001d!i\u0005\"<A\u00029Bq\u0001b>\n\t\u0007!I0A\bm_:<'GY5h\t\u0016\u001c\u0017.\\1m)\rIE1 \u0005\t\u0007\u007f#)\u00101\u0001\u0003R\"9Aq`\u0005\u0005\u0004\u0015\u0005\u0011!\u00053pk\ndWM\r2jO\u0012+7-[7bYR\u0019\u0011*b\u0001\t\u0011\r}EQ a\u0001\u0005SDq!b\u0002\n\t\u0007)I!A\rkCZ\f')[4EK\u000eLW.\u001973E&<G)Z2j[\u0006dGcA%\u0006\f!9AqFC\u0003\u0001\u0004)\u0006\"CC\b\u0013\u0005\u0005I\u0011BC\t\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0015M\u0001\u0003BC\u000b\u000b7i!!b\u0006\u000b\u0007\u0015eQ(\u0001\u0003mC:<\u0017\u0002BC\u000f\u000b/\u0011aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal.class */
public final class BigDecimal extends ScalaNumber implements ScalaNumericConversions, Serializable {
    private final java.math.BigDecimal bigDecimal;
    private int computedHashCode;

    /* renamed from: mc */
    private final MathContext f1624mc;

    public BigDecimal(java.math.BigDecimal bigDecimal) {
        this(bigDecimal, BigDecimal$.MODULE$.defaultMathContext());
    }

    public BigDecimal(java.math.BigDecimal bigDecimal, MathContext mathContext) {
        this.bigDecimal = bigDecimal;
        this.f1624mc = mathContext;
        ScalaNumericAnyConversions.Cclass.$init$(this);
        if (bigDecimal != null) {
            if (mathContext == null) {
                throw new IllegalArgumentException("null MathContext for BigDecimal");
            }
            this.computedHashCode = 1565550863;
            return;
        }
        throw new IllegalArgumentException("null value for BigDecimal");
    }

    public static BigDecimal binary(double d) {
        return BigDecimal$.MODULE$.binary(d);
    }

    public static BigDecimal binary(double d, MathContext mathContext) {
        return BigDecimal$.MODULE$.binary(d, mathContext);
    }

    private final void computeHashCode() {
        int i;
        if (isWhole() && precision() - scale() < 4934) {
            i = toBigInt().hashCode();
        } else if (isDecimalDouble()) {
            i = ScalaRunTime$.MODULE$.hash(doubleValue());
        } else {
            java.math.BigDecimal stripTrailingZeros = bigDecimal().stripTrailingZeros();
            i = MurmurHash3$.MODULE$.mixLast(stripTrailingZeros.scaleByPowerOfTen(stripTrailingZeros.scale()).toBigInteger().hashCode(), stripTrailingZeros.scale());
        }
        computedHashCode_$eq(i);
    }

    private final int computedHashCode() {
        return this.computedHashCode;
    }

    private final void computedHashCode_$eq(int i) {
        this.computedHashCode = i;
    }

    public static BigDecimal decimal(double d) {
        return BigDecimal$.MODULE$.decimal(d);
    }

    public static BigDecimal decimal(double d, MathContext mathContext) {
        return BigDecimal$.MODULE$.decimal(d, mathContext);
    }

    public static BigDecimal decimal(float f) {
        return BigDecimal$.MODULE$.decimal(f);
    }

    public static BigDecimal decimal(float f, MathContext mathContext) {
        return BigDecimal$.MODULE$.decimal(f, mathContext);
    }

    public static BigDecimal decimal(long j) {
        return BigDecimal$.MODULE$.decimal(j);
    }

    public static BigDecimal decimal(long j, MathContext mathContext) {
        return BigDecimal$.MODULE$.decimal(j, mathContext);
    }

    public static BigDecimal decimal(java.math.BigDecimal bigDecimal, MathContext mathContext) {
        return BigDecimal$.MODULE$.decimal(bigDecimal, mathContext);
    }

    public static MathContext defaultMathContext() {
        return BigDecimal$.MODULE$.defaultMathContext();
    }

    public static BigDecimal double2bigDecimal(double d) {
        return BigDecimal$.MODULE$.double2bigDecimal(d);
    }

    public static BigDecimal exact(double d) {
        return BigDecimal$.MODULE$.exact(d);
    }

    public static BigDecimal exact(long j) {
        return BigDecimal$.MODULE$.exact(j);
    }

    public static BigDecimal exact(String str) {
        return BigDecimal$.MODULE$.exact(str);
    }

    public static BigDecimal exact(java.math.BigDecimal bigDecimal) {
        return BigDecimal$.MODULE$.exact(bigDecimal);
    }

    public static BigDecimal exact(BigInt bigInt) {
        return BigDecimal$.MODULE$.exact(bigInt);
    }

    public static BigDecimal exact(char[] cArr) {
        return BigDecimal$.MODULE$.exact(cArr);
    }

    public static BigDecimal int2bigDecimal(int i) {
        return BigDecimal$.MODULE$.int2bigDecimal(i);
    }

    public static BigDecimal javaBigDecimal2bigDecimal(java.math.BigDecimal bigDecimal) {
        return BigDecimal$.MODULE$.javaBigDecimal2bigDecimal(bigDecimal);
    }

    public static BigDecimal long2bigDecimal(long j) {
        return BigDecimal$.MODULE$.long2bigDecimal(j);
    }

    private boolean noArithmeticException(Function0<BoxedUnit> function0) {
        boolean z;
        try {
            function0.apply$mcV$sp();
            z = true;
        } catch (ArithmeticException e) {
            z = false;
        }
        return z;
    }

    public static BigDecimal valueOf(double d) {
        return BigDecimal$.MODULE$.valueOf(d);
    }

    public static BigDecimal valueOf(double d, MathContext mathContext) {
        return BigDecimal$.MODULE$.valueOf(d, mathContext);
    }

    public static BigDecimal valueOf(float f) {
        return BigDecimal$.MODULE$.valueOf(f);
    }

    public static BigDecimal valueOf(float f, MathContext mathContext) {
        return BigDecimal$.MODULE$.valueOf(f, mathContext);
    }

    public static BigDecimal valueOf(long j) {
        return BigDecimal$.MODULE$.valueOf(j);
    }

    public BigDecimal $div(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().divide(bigDecimal.bigDecimal(), m56mc()), m56mc());
    }

    public Tuple2<BigDecimal, BigDecimal> $div$percent(BigDecimal bigDecimal) {
        java.math.BigDecimal[] divideAndRemainder = bigDecimal().divideAndRemainder(bigDecimal.bigDecimal());
        Option unapplySeq = Array$.MODULE$.unapplySeq(divideAndRemainder);
        if (unapplySeq.isEmpty() || unapplySeq.get() == null || ((SeqLike) unapplySeq.get()).lengthCompare(2) != 0) {
            throw new MatchError(divideAndRemainder);
        }
        return new Tuple2<>(new BigDecimal((java.math.BigDecimal) ((SeqLike) unapplySeq.get()).apply(0), m56mc()), new BigDecimal((java.math.BigDecimal) ((SeqLike) unapplySeq.get()).apply(1), m56mc()));
    }

    public boolean $greater(BigDecimal bigDecimal) {
        return compare(bigDecimal) > 0;
    }

    public boolean $greater$eq(BigDecimal bigDecimal) {
        return compare(bigDecimal) >= 0;
    }

    public boolean $less(BigDecimal bigDecimal) {
        return compare(bigDecimal) < 0;
    }

    public boolean $less$eq(BigDecimal bigDecimal) {
        return compare(bigDecimal) <= 0;
    }

    public BigDecimal $minus(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().subtract(bigDecimal.bigDecimal()), m56mc());
    }

    public BigDecimal $percent(BigDecimal bigDecimal) {
        return remainder(bigDecimal);
    }

    public BigDecimal $plus(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().add(bigDecimal.bigDecimal()), m56mc());
    }

    public BigDecimal $times(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().multiply(bigDecimal.bigDecimal(), m56mc()), m56mc());
    }

    public BigDecimal abs() {
        return signum() < 0 ? unary_$minus() : this;
    }

    public BigDecimal apply(MathContext mathContext) {
        return new BigDecimal(bigDecimal().round(mathContext), mathContext);
    }

    public java.math.BigDecimal bigDecimal() {
        return this.bigDecimal;
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return (byte) intValue();
    }

    public char charValue() {
        return (char) intValue();
    }

    public int compare(BigDecimal bigDecimal) {
        return bigDecimal().compareTo(bigDecimal.bigDecimal());
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public double doubleValue() {
        return bigDecimal().doubleValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0075, code lost:
        if (r11 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d5, code lost:
        if (r11 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x012f, code lost:
        if (r11 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0151, code lost:
        if (scala.math.ScalaNumericAnyConversions.Cclass.unifiedPrimitiveEquals(r7, r8) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.math.BigDecimal.equals(java.lang.Object):boolean");
    }

    public boolean equals(BigDecimal bigDecimal) {
        return compare(bigDecimal) == 0;
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return bigDecimal().floatValue();
    }

    public int hashCode() {
        if (computedHashCode() == 1565550863) {
            computeHashCode();
        }
        return computedHashCode();
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return bigDecimal().intValue();
    }

    public boolean isBinaryDouble() {
        double d = toDouble();
        RichDouble$ richDouble$ = RichDouble$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richDouble$.isInfinity$extension(d) && equals(BigDecimal$.MODULE$.binary(d, m56mc()));
    }

    public boolean isBinaryFloat() {
        float f = toFloat();
        RichFloat$ richFloat$ = RichFloat$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richFloat$.isInfinity$extension(f) && equals(BigDecimal$.MODULE$.binary((double) f, m56mc()));
    }

    public boolean isDecimalDouble() {
        double d = toDouble();
        RichDouble$ richDouble$ = RichDouble$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richDouble$.isInfinity$extension(d) && equals(BigDecimal$.MODULE$.decimal(d));
    }

    public boolean isDecimalFloat() {
        float f = toFloat();
        RichFloat$ richFloat$ = RichFloat$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richFloat$.isInfinity$extension(f) && equals(BigDecimal$.MODULE$.decimal(f));
    }

    public boolean isExactDouble() {
        double d = toDouble();
        RichDouble$ richDouble$ = RichDouble$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richDouble$.isInfinity$extension(d) && equals(BigDecimal$.MODULE$.exact(d));
    }

    public boolean isExactFloat() {
        float f = toFloat();
        RichFloat$ richFloat$ = RichFloat$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richFloat$.isInfinity$extension(f) && equals(BigDecimal$.MODULE$.exact((double) f));
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return noArithmeticException(new BigDecimal$$anonfun$isValidByte$1(this));
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return isValidInt() && toIntExact() >= 0 && toIntExact() <= 65535;
    }

    public boolean isValidDouble() {
        double d = toDouble();
        RichDouble$ richDouble$ = RichDouble$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richDouble$.isInfinity$extension(d) && bigDecimal().compareTo(new java.math.BigDecimal(d)) == 0;
    }

    public boolean isValidFloat() {
        float f = toFloat();
        RichFloat$ richFloat$ = RichFloat$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return !richFloat$.isInfinity$extension(f) && bigDecimal().compareTo(new java.math.BigDecimal((double) f)) == 0;
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return noArithmeticException(new BigDecimal$$anonfun$isValidInt$1(this));
    }

    public boolean isValidLong() {
        return noArithmeticException(new BigDecimal$$anonfun$isValidLong$1(this));
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return noArithmeticException(new BigDecimal$$anonfun$isValidShort$1(this));
    }

    @Override // scala.math.ScalaNumber, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return scale() <= 0 || bigDecimal().stripTrailingZeros().scale() <= 0;
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return bigDecimal().longValue();
    }

    public BigDecimal max(BigDecimal bigDecimal) {
        BigDecimal bigDecimal2 = bigDecimal;
        if (compare(bigDecimal) >= 0) {
            bigDecimal2 = this;
        }
        return bigDecimal2;
    }

    /* renamed from: mc */
    public MathContext m56mc() {
        return this.f1624mc;
    }

    public BigDecimal min(BigDecimal bigDecimal) {
        BigDecimal bigDecimal2 = bigDecimal;
        if (compare(bigDecimal) <= 0) {
            bigDecimal2 = this;
        }
        return bigDecimal2;
    }

    public BigDecimal pow(int i) {
        return new BigDecimal(bigDecimal().pow(i, m56mc()), m56mc());
    }

    public int precision() {
        return bigDecimal().precision();
    }

    public BigDecimal quot(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().divideToIntegralValue(bigDecimal.bigDecimal()), m56mc());
    }

    public BigDecimal remainder(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal().remainder(bigDecimal.bigDecimal()), m56mc());
    }

    public BigDecimal round(MathContext mathContext) {
        java.math.BigDecimal round = bigDecimal().round(mathContext);
        return round == bigDecimal() ? this : new BigDecimal(round, m56mc());
    }

    public BigDecimal rounded() {
        java.math.BigDecimal round = bigDecimal().round(m56mc());
        return round == bigDecimal() ? this : new BigDecimal(round, m56mc());
    }

    public int scale() {
        return bigDecimal().scale();
    }

    public BigDecimal setScale(int i) {
        return scale() == i ? this : new BigDecimal(bigDecimal().setScale(i), m56mc());
    }

    public BigDecimal setScale(int i, Enumeration.Value value) {
        return scale() == i ? this : new BigDecimal(bigDecimal().setScale(i, value.mo365id()), m56mc());
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return (short) intValue();
    }

    public int signum() {
        return bigDecimal().signum();
    }

    /* renamed from: to */
    public NumericRange.Inclusive<BigDecimal> m54to(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Range$BigDecimal$.MODULE$.inclusive(this, bigDecimal, bigDecimal2);
    }

    /* renamed from: to */
    public Range.Partial<BigDecimal, NumericRange.Inclusive<BigDecimal>> m55to(BigDecimal bigDecimal) {
        return new Range.Partial<>(new BigDecimal$$anonfun$to$1(this, bigDecimal));
    }

    public BigInt toBigInt() {
        return new BigInt(bigDecimal().toBigInteger());
    }

    public Option<BigInt> toBigIntExact() {
        Option<BigInt> option;
        if (isWhole()) {
            try {
                option = new Some<>(new BigInt(bigDecimal().toBigIntegerExact()));
            } catch (ArithmeticException e) {
                option = None$.MODULE$;
            }
        } else {
            option = None$.MODULE$;
        }
        return option;
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public byte toByte() {
        return ScalaNumericAnyConversions.Cclass.toByte(this);
    }

    public byte toByteExact() {
        return bigDecimal().byteValueExact();
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

    public int toIntExact() {
        return bigDecimal().intValueExact();
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
    }

    public long toLongExact() {
        return bigDecimal().longValueExact();
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public short toShort() {
        return ScalaNumericAnyConversions.Cclass.toShort(this);
    }

    public short toShortExact() {
        return bigDecimal().shortValueExact();
    }

    public String toString() {
        return bigDecimal().toString();
    }

    public BigDecimal ulp() {
        return new BigDecimal(bigDecimal().ulp(), m56mc());
    }

    public BigDecimal unary_$minus() {
        return new BigDecimal(bigDecimal().negate(), m56mc());
    }

    @Override // scala.math.ScalaNumber, scala.math.ScalaNumericConversions, scala.math.ScalaNumericAnyConversions
    public java.math.BigDecimal underlying() {
        return bigDecimal();
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean unifiedPrimitiveEquals(Object obj) {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveEquals(this, obj);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int unifiedPrimitiveHashcode() {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveHashcode(this);
    }

    public NumericRange.Exclusive<BigDecimal> until(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Range$BigDecimal$.MODULE$.apply(this, bigDecimal, bigDecimal2);
    }

    public Range.Partial<BigDecimal, NumericRange.Exclusive<BigDecimal>> until(BigDecimal bigDecimal) {
        return new Range.Partial<>(new BigDecimal$$anonfun$until$1(this, bigDecimal));
    }
}
