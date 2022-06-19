.class public final Lscala/collection/immutable/Vector;
.super Lscala/collection/AbstractSeq;
.source "Vector.scala"

# interfaces
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/collection/immutable/VectorPointer;
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/immutable/IndexedSeq<",
        "TA;>;",
        "Lscala/collection/immutable/VectorPointer<",
        "TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable<",
        "TA;",
        "Lscala/collection/parallel/immutable/ParVector<",
        "TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rut!B\u0001\u0003\u0011\u0003I\u0011A\u0002,fGR|\'O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u0007-\u0016\u001cGo\u001c:\u0014\u0007-qq\u0008E\u0002\u0010%Qi\u0011\u0001\u0005\u0006\u0003#\u0011\tqaZ3oKJL7-\u0003\u0002\u0014!\t\t\u0012J\u001c3fq\u0016$7+Z9GC\u000e$xN]=\u0011\u0005))b!\u0002\u0007\u0003\u0005Y\tTCA\u000c\u001f\'!)\u0002\u0004K\u0016/e}\u0012\u0005cA\r\u001b95\tA!\u0003\u0002\u001c\t\tY\u0011IY:ue\u0006\u001cGoU3r!\tib\u0004\u0004\u0001\u0005\r})BQ1\u0001!\u0005\u0005\t\u0015CA\u0011&!\t\u00113%D\u0001\u0007\u0013\t!cAA\u0004O_RD\u0017N\\4\u0011\u0005\t2\u0013BA\u0014\u0007\u0005\r\te.\u001f\t\u0004\u0015%b\u0012B\u0001\u0016\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0005\u001f1bB#\u0003\u0002.!\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB!\u0011d\u000c\u000f2\u0013\t\u0001DA\u0001\u0008J]\u0012,\u00070\u001a3TKFd\u0015n[3\u0011\u0007))B\u0004E\u0002\u000bgUJ!\u0001\u000e\u0002\u0003\u001bY+7\r^8s!>Lg\u000e^3sU\tabgK\u00018!\tAT(D\u0001:\u0015\tQ4(A\u0005v]\u000eDWmY6fI*\u0011AHB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001 :\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\t\u0003E\u0001K!!\u0011\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\u0011\te\u0019E$R\u0005\u0003\t\u0012\u0011AcQ;ti>l\u0007+\u0019:bY2,G.\u001b>bE2,\u0007c\u0001$K95\tqI\u0003\u0002\u0004\u0011*\u0011\u0011\nB\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u00111j\u0012\u0002\n!\u0006\u0014h+Z2u_JD\u0011\"T\u000b\u0003\u0006\u0004%\t\u0001\u0002(\u0002\u0015M$\u0018M\u001d;J]\u0012,\u00070F\u0001P!\t\u0011\u0003+\u0003\u0002R\r\t\u0019\u0011J\u001c;\t\u0011M+\"\u0011!Q\u0001\n=\u000b1b\u001d;beRLe\u000eZ3yA!IQ+\u0006BC\u0002\u0013\u0005AAT\u0001\tK:$\u0017J\u001c3fq\"Aq+\u0006B\u0001B\u0003%q*A\u0005f]\u0012Le\u000eZ3yA!A\u0011,\u0006B\u0001B\u0003%q*A\u0003g_\u000e,8\u000f\u0003\u0004\\+\u0011\u0005!\u0001X\u0001\u0007y%t\u0017\u000e\u001e \u0015\tEjfl\u0018\u0005\u0006\u001bj\u0003\ra\u0014\u0005\u0006+j\u0003\ra\u0014\u0005\u00063j\u0003\ra\u0014\u0005\u0006CV!\tEY\u0001\nG>l\u0007/\u00198j_:,\u0012a\u0019\t\u0004\u001f\u0011$\u0012BA3\u0011\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000e\u0003\u0005h+\u0001\u0007I\u0011\u0001\u0002i\u0003\u0015!\u0017N\u001d;z+\u0005I\u0007C\u0001\u0012k\u0013\tYgAA\u0004C_>dW-\u00198\t\u00115,\u0002\u0019!C\u0001\u00059\u000c\u0011\u0002Z5sif|F%Z9\u0015\u0005=\u0014\u0008C\u0001\u0012q\u0013\t\thA\u0001\u0003V]&$\u0008bB:m\u0003\u0003\u0005\r![\u0001\u0004q\u0012\n\u0004BB;\u0016A\u0003&\u0011.\u0001\u0004eSJ$\u0018\u0010\t\u0005\u0006oV!\tAT\u0001\u0007Y\u0016tw\r\u001e5\t\u000be,B\u0011\t>\u0002\u0007A\u000c\'/F\u0001F\u0011\u0015aX\u0003\"\u0011~\u0003!!xNV3di>\u0014X#A\u0019\t\r},B\u0011IA\u0001\u00035aWM\\4uQ\u000e{W\u000e]1sKR\u0019q*a\u0001\t\r\u0005\u0015a\u00101\u0001P\u0003\raWM\u001c\u0005\t\u0003\u0013)BQ\u0001\u0003\u0002\u000c\u0005a\u0011N\\5u\u0013R,\'/\u0019;peV!\u0011QBA\u000e)\ry\u0017q\u0002\u0005\t\u0003#\t9\u00011\u0001\u0002\u0014\u0005\t1\u000fE\u0003\u000b\u0003+\tI\"C\u0002\u0002\u0018\t\u0011aBV3di>\u0014\u0018\n^3sCR|\'\u000fE\u0002\u001e\u00037!\u0001\"!\u0008\u0002\u0008\t\u0007\u0011q\u0004\u0002\u0002\u0005F\u0011A$\n\u0005\u0008\u0003G)B\u0011IA\u0013\u0003!IG/\u001a:bi>\u0014XCAA\u0014!\u0011Q\u0011Q\u0003\u000f\t\u000f\u0005-R\u0003\"\u0011\u0002.\u0005y!/\u001a<feN,\u0017\n^3sCR|\'/\u0006\u0002\u00020A!\u0011$!\r\u001d\u0013\r\t\u0019\u0004\u0002\u0002\t\u0013R,\'/\u0019;pe\"9\u0011qG\u000b\u0005\u0002\u0005e\u0012!B1qa2LHc\u0001\u000f\u0002<!9\u0011QHA\u001b\u0001\u0004y\u0015!B5oI\u0016D\u0008bBA!+\u0011%\u00111I\u0001\u0012G\",7m\u001b*b]\u001e,7i\u001c8wKJ$HcA(\u0002F!9\u0011QHA \u0001\u0004y\u0005\u0002CA%+\u0001&I!a\u0013\u0002\u0019%\u001cH)\u001a4bk2$8I\u0011$\u0016\u0011\u00055\u0013QLA1\u0003K\"2![A(\u0011!\t\t&a\u0012A\u0002\u0005M\u0013A\u00012g!%y\u0011QKA-\u0003?\n\u0019\'C\u0002\u0002XA\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004BAC\u000b\u0002\\A\u0019Q$!\u0018\u0005\r}\t9E1\u0001!!\ri\u0012\u0011\r\u0003\u0008\u0003;\t9E1\u0001!!\ri\u0012Q\r\u0003\u0008\u0003O\n9E1\u0001!\u0005\u0011!\u0006.\u0019;)\t\u0005\u001d\u00131\u000e\t\u0004E\u00055\u0014bAA8\r\t1\u0011N\u001c7j]\u0016Dq!a\u001d\u0016\t\u0003\n)(A\u0004va\u0012\u000cG/\u001a3\u0016\r\u0005]\u0014QQA?)\u0019\tI(a\"\u0002\nR!\u00111PA@!\ri\u0012Q\u0010\u0003\u0008\u0003O\n\tH1\u0001!\u0011!\t\t&!\u001dA\u0004\u0005\u0005\u0005\u0003C\u0008\u0002VE\n\u0019)a\u001f\u0011\u0007u\t)\t\u0002\u0005\u0002\u001e\u0005E$\u0019AA\u0010\u0011\u001d\ti$!\u001dA\u0002=C\u0001\"a#\u0002r\u0001\u0007\u00111Q\u0001\u0005K2,W\u000eC\u0004\u0002\u0010V!\t%!%\u0002\u0017\u0011\u0002H.^:%G>dwN\\\u000b\u0007\u0003\'\u000b\t+!\'\u0015\t\u0005U\u00151\u0015\u000b\u0005\u0003/\u000bY\nE\u0002\u001e\u00033#q!a\u001a\u0002\u000e\n\u0007\u0001\u0005\u0003\u0005\u0002R\u00055\u00059AAO!!y\u0011QK\u0019\u0002 \u0006]\u0005cA\u000f\u0002\"\u0012A\u0011QDAG\u0005\u0004\ty\u0002\u0003\u0005\u0002\u000c\u00065\u0005\u0019AAP\u0011\u001d\t9+\u0006C!\u0003S\u000b1\u0002J2pY>tG\u0005\u001d7vgV1\u00111VA]\u0003c#B!!,\u0002<R!\u0011qVAZ!\ri\u0012\u0011\u0017\u0003\u0008\u0003O\n)K1\u0001!\u0011!\t\t&!*A\u0004\u0005U\u0006\u0003C\u0008\u0002VE\n9,a,\u0011\u0007u\tI\u000c\u0002\u0005\u0002\u001e\u0005\u0015&\u0019AA\u0010\u0011!\tY)!*A\u0002\u0005]\u0006bBA`+\u0011\u0005\u0013\u0011Y\u0001\u0005i\u0006\\W\rF\u00022\u0003\u0007Dq!!2\u0002>\u0002\u0007q*A\u0001o\u0011\u001d\tI-\u0006C!\u0003\u0017\u000cA\u0001\u001a:paR\u0019\u0011\'!4\t\u000f\u0005\u0015\u0017q\u0019a\u0001\u001f\"9\u0011\u0011[\u000b\u0005B\u0005M\u0017!\u0003;bW\u0016\u0014\u0016n\u001a5u)\r\t\u0014Q\u001b\u0005\u0008\u0003\u000b\u000cy\r1\u0001P\u0011\u001d\tI.\u0006C!\u00037\u000c\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007E\ni\u000eC\u0004\u0002F\u0006]\u0007\u0019A(\t\u000f\u0005\u0005X\u0003\"\u0011\u0002d\u0006!\u0001.Z1e+\u0005a\u0002BBAt+\u0011\u0005S0\u0001\u0003uC&d\u0007bBAv+\u0011\u0005\u00131]\u0001\u0005Y\u0006\u001cH\u000f\u0003\u0004\u0002pV!\t%`\u0001\u0005S:LG\u000fC\u0004\u0002tV!\t%!>\u0002\u000bMd\u0017nY3\u0015\u000bE\n90a?\t\u000f\u0005e\u0018\u0011\u001fa\u0001\u001f\u0006!aM]8n\u0011\u001d\ti0!=A\u0002=\u000bQ!\u001e8uS2DqA!\u0001\u0016\t\u0003\u0012\u0019!A\u0004ta2LG/\u0011;\u0015\t\t\u0015!1\u0002\t\u0006E\t\u001d\u0011\'M\u0005\u0004\u0005\u00131!A\u0002+va2,\'\u0007C\u0004\u0002F\u0006}\u0008\u0019A(\t\u000f\t=Q\u0003\"\u0011\u0003\u0012\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\r\tM!\u0011\u0005B\r)\u0011\u0011)Ba\t\u0015\t\t]!1\u0004\t\u0004;\teAaBA4\u0005\u001b\u0011\r\u0001\t\u0005\t\u0003#\u0012i\u0001q\u0001\u0003\u001eAAq\"!\u00162\u0005?\u00119\u0002E\u0002\u001e\u0005C!\u0001\"!\u0008\u0003\u000e\t\u0007\u0011q\u0004\u0005\t\u0005K\u0011i\u00011\u0001\u0003(\u0005!A\u000f[1u!\u0015I\"\u0011\u0006B\u0010\u0013\r\u0011Y\u0003\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\r\u0003\u0005\u00030U!\tA\u0001B\u0019\u0003!)\u0008\u000fZ1uK\u0006#X\u0003\u0002B\u001a\u0005s!bA!\u000e\u0003<\tu\u0002\u0003\u0002\u0006\u0016\u0005o\u00012!\u0008B\u001d\t!\tiB!\u000cC\u0002\u0005}\u0001bBA\u001f\u0005[\u0001\ra\u0014\u0005\t\u0003\u0017\u0013i\u00031\u0001\u00038!9!\u0011I\u000b\u0005\n\t\r\u0013aD4pi>\u0004vn],sSR\u000c\'\r\\3\u0015\u000f=\u0014)E!\u0013\u0003N!9!q\tB \u0001\u0004y\u0015\u0001C8mI&sG-\u001a=\t\u000f\t-#q\u0008a\u0001\u001f\u0006Aa.Z<J]\u0012,\u0007\u0010C\u0004\u0003P\t}\u0002\u0019A(\u0002\u0007a|\'\u000fC\u0004\u0003TU!IA!\u0016\u0002)\u001d|Go\u001c$sKND\u0007k\\:Xe&$\u0018M\u00197f)\u001dy\'q\u000bB-\u00057BqAa\u0012\u0003R\u0001\u0007q\nC\u0004\u0003L\tE\u0003\u0019A(\t\u000f\t=#\u0011\u000ba\u0001\u001f\"A!qL\u000b\u0005\u0002\t\u0011\t\'A\u0006baB,g\u000e\u001a$s_:$X\u0003\u0002B2\u0005S\"BA!\u001a\u0003lA!!\"\u0006B4!\ri\"\u0011\u000e\u0003\t\u0003;\u0011iF1\u0001\u0002 !A!Q\u000eB/\u0001\u0004\u00119\'A\u0003wC2,X\r\u0003\u0005\u0003rU!\tA\u0001B:\u0003)\t\u0007\u000f]3oI\n\u000b7m[\u000b\u0005\u0005k\u0012Y\u0008\u0006\u0003\u0003x\tu\u0004\u0003\u0002\u0006\u0016\u0005s\u00022!\u0008B>\t!\tiBa\u001cC\u0002\u0005}\u0001\u0002\u0003B7\u0005_\u0002\rA!\u001f\t\u000f\t\u0005U\u0003\"\u0003\u0003\u0004\u0006i1\u000f[5giR{\u0007\u000fT3wK2$Ra\u001cBC\u0005\u0013CqAa\"\u0003\u0000\u0001\u0007q*A\u0004pY\u0012dUM\u001a;\t\u000f\t-%q\u0010a\u0001\u001f\u00069a.Z<MK\u001a$\u0008b\u0002BH+\u0011%!\u0011S\u0001\tu\u0016\u0014x\u000eT3giR)qNa%\u0003$\"A!Q\u0013BG\u0001\u0004\u00119*A\u0003beJ\u000c\u0017\u0010E\u0003#\u00053\u0013i*C\u0002\u0003\u001c\u001a\u0011Q!\u0011:sCf\u00042A\tBP\u0013\r\u0011\tK\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000f\u0005u\"Q\u0012a\u0001\u001f\"9!qU\u000b\u0005\n\t%\u0016!\u0003>fe>\u0014\u0016n\u001a5u)\u0015y\'1\u0016BW\u0011!\u0011)J!*A\u0002\t]\u0005bBA\u001f\u0005K\u0003\ra\u0014\u0005\u0008\u0005c+B\u0011\u0002BZ\u0003!\u0019w\u000e]=MK\u001a$HC\u0002BL\u0005k\u00139\u000c\u0003\u0005\u0003\u0016\n=\u0006\u0019\u0001BL\u0011\u001d\u0011ILa,A\u0002=\u000bQA]5hQRDqA!0\u0016\t\u0013\u0011y,A\u0005d_BL(+[4iiR1!q\u0013Ba\u0005\u0007D\u0001B!&\u0003<\u0002\u0007!q\u0013\u0005\u0008\u0005\u000b\u0014Y\u000c1\u0001P\u0003\u0011aWM\u001a;\t\u000f\t%W\u0003\"\u0003\u0003L\u0006A\u0001O]3DY\u0016\u000cg\u000eF\u0002p\u0005\u001bDqAa4\u0003H\u0002\u0007q*A\u0003eKB$\u0008\u000eC\u0004\u0003TV!IA!6\u0002\u001b\rdW-\u00198MK\u001a$X\tZ4f)\ry\'q\u001b\u0005\u0008\u00053\u0014\t\u000e1\u0001P\u0003!\u0019W\u000f^%oI\u0016D\u0008b\u0002Bo+\u0011%!q\\\u0001\u000fG2,\u0017M\u001c*jO\"$X\tZ4f)\ry\'\u0011\u001d\u0005\u0008\u00053\u0014Y\u000e1\u0001P\u0011\u001d\u0011)/\u0006C\u0005\u0005O\u000cQB]3rk&\u0014X\r\u001a#faRDGcA(\u0003j\"9!q\nBr\u0001\u0004y\u0005b\u0002Bw+\u0011%!q^\u0001\u000bIJ|\u0007O\u0012:p]R\u0004DcA\u0019\u0003r\"9!\u0011\u001cBv\u0001\u0004y\u0005b\u0002B{+\u0011%!q_\u0001\nIJ|\u0007OQ1dWB\"2!\rB}\u0011\u001d\u0011INa=A\u0002=CaaW\u0006\u0005\u0002\tuH#A\u0005\t\u000f\r\u00051\u0002\"\u0001\u0004\u0004\u0005Qa.Z<Ck&dG-\u001a:\u0016\t\r\u00151QC\u000b\u0003\u0007\u000f\u0001\u0002b!\u0003\u0004\u0010\rM1qC\u0007\u0003\u0007\u0017Q1a!\u0004\u0005\u0003\u001diW\u000f^1cY\u0016LAa!\u0005\u0004\u000c\t9!)^5mI\u0016\u0014\u0008cA\u000f\u0004\u0016\u00111qDa@C\u0002\u0001\u0002BAC\u000b\u0004\u0014!911D\u0006\u0005\u0004\ru\u0011\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BB\u0010\u0007[)\"a!\t\u0011\u0013=\t)fa\t\u0004,\r=\u0002\u0003BB\u0013\u0007Oi\u0011aC\u0005\u0004\u0007S!\'\u0001B\"pY2\u00042!HB\u0017\t\u0019y2\u0011\u0004b\u0001AA!!\"FB\u0016\u0011)\u0019\u0019d\u0003b\u0001\n\u0003\u00111QG\u0001\u0004\u001d&cUCAB\u001c!\rQQ#\t\u0005\t\u0007wY\u0001\u0015!\u0003\u00048\u0005!a*\u0013\'!\u0011\u001d\u0019yd\u0003C!\u0007\u0003\nQ!Z7qif,Baa\u0011\u0004JU\u00111Q\t\t\u0005\u0015U\u00199\u0005E\u0002\u001e\u0007\u0013\"aaHB\u001f\u0005\u0004\u0001\u0003\"CB\'\u0017\t\u0007IQBB(\u0003Aaun\u001a\u001aD_:\u001c\u0017\r\u001e$bgR,\'/\u0006\u0002\u0004R=\u001111K\u000f\u0002\u000b!A1qK\u0006!\u0002\u001b\u0019\t&A\tM_\u001e\u00144i\u001c8dCR4\u0015m\u001d;fe\u0002B\u0011ba\u0017\u000c\u0005\u0004%ia!\u0018\u0002!QKg._!qa\u0016tGMR1ti\u0016\u0014XCAB0\u001f\t\u0019\t\'H\u0001\u0003\u0011!\u0019)g\u0003Q\u0001\u000e\r}\u0013!\u0005+j]f\u000c\u0005\u000f]3oI\u001a\u000b7\u000f^3sA!I1\u0011N\u0006\u0002\u0002\u0013%11N\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0004nA!1qNB=\u001b\t\u0019\tH\u0003\u0003\u0004t\rU\u0014\u0001\u00027b]\u001eT!aa\u001e\u0002\t)\u000cg/Y\u0005\u0005\u0007w\u001a\tH\u0001\u0004PE*,7\r\u001e"
.end annotation


# instance fields
.field private depth:I

.field private dirty:Z

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private final endIndex:I

.field private final focus:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 62
    iput p1, p0, Lscala/collection/immutable/Vector;->startIndex:I

    iput p2, p0, Lscala/collection/immutable/Vector;->endIndex:I

    iput p3, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 63
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/immutable/Vector;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "*>;TA;",
            "Lscala/collection/immutable/Vector<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private checkRangeConvert(I)I
    .locals 2

    .line 128
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    if-ltz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    return v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanLeftEdge(I)V
    .locals 2

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 521
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x5

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x8000

    if-ge p1, v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 525
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 526
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0xa

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-ge p1, v0, :cond_3

    .line 529
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 530
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0xf

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x2000000

    if-ge p1, v0, :cond_4

    .line 535
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 536
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x14

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_5

    .line 542
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 543
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x19

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 549
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private cleanRightEdge(I)V
    .locals 3

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x400

    if-gt p1, v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 564
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x5

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x8000

    if-gt p1, v0, :cond_2

    .line 567
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 568
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0xa

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_3

    .line 572
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 573
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, v1, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0xf

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x2000000

    if-gt p1, v0, :cond_4

    .line 578
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 579
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x14

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_5

    .line 585
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 586
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 588
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v2, v1, 0xf

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x19

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 592
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Vector$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 477
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 478
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 482
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 483
    sget-object v2, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    sub-int/2addr v0, p2

    invoke-static {p1, p2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private dropBack0(I)Lscala/collection/immutable/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    and-int/lit8 v1, v0, -0x20

    .line 638
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v2

    xor-int/2addr v0, v2

    .line 639
    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->requiredDepth(I)I

    move-result v0

    .line 640
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v2

    mul-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    not-int v3, v3

    and-int/2addr v2, v3

    .line 647
    new-instance v3, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int/2addr p1, v2

    sub-int v2, v1, v2

    invoke-direct {v3, v4, p1, v2}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 648
    invoke-virtual {v3, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 649
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v2

    invoke-virtual {v3, v2}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 650
    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int v4, v2, v1

    invoke-direct {v3, v2, v1, v4}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 651
    invoke-direct {v3, v0}, Lscala/collection/immutable/Vector;->preClean(I)V

    .line 652
    invoke-direct {v3, p1}, Lscala/collection/immutable/Vector;->cleanRightEdge(I)V

    return-object v3
.end method

.method private dropFront0(I)Lscala/collection/immutable/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    and-int/lit8 v0, p1, -0x20

    .line 608
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    xor-int/2addr v1, p1

    .line 609
    invoke-direct {p0, v1}, Lscala/collection/immutable/Vector;->requiredDepth(I)I

    move-result v1

    mul-int/lit8 v3, v1, 0x5

    shl-int v3, v2, v3

    sub-int/2addr v3, v2

    not-int v2, v3

    and-int/2addr v2, p1

    .line 627
    new-instance v3, Lscala/collection/immutable/Vector;

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v2, v0, v2

    invoke-direct {v3, p1, v4, v2}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 628
    invoke-virtual {v3, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 629
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v2

    invoke-virtual {v3, v2}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 630
    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int v4, v2, v0

    invoke-direct {v3, v2, v0, v4}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 631
    invoke-direct {v3, v1}, Lscala/collection/immutable/Vector;->preClean(I)V

    .line 632
    invoke-direct {v3, p1}, Lscala/collection/immutable/Vector;->cleanLeftEdge(I)V

    return-object v3
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Vector$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Vector$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Vector$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Vector$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Vector$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private gotoFreshPosWritable(III)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable1(III)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable0(III)V

    const/4 p1, 0x1

    .line 270
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    :goto_0
    return-void
.end method

.method private gotoPosWritable(III)V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoPosWritable1(III)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0, p2, p3}, Lscala/collection/immutable/Vector;->gotoPosWritable0(II)V

    const/4 p1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    :goto_0
    return-void
.end method

.method private isDefaultCBF(Lscala/collection/generic/CanBuildFrom;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TB;TThat;>;)Z"
        }
    .end annotation

    .line 137
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Vector$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private preClean(I)V
    .locals 2

    .line 488
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 509
    :cond_1
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 498
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 491
    :cond_5
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Vector$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Vector$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private requiredDepth(I)I
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x8000

    if-ge p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-ge p1, v0, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const/high16 v0, 0x2000000

    if-ge p1, v0, :cond_4

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_5

    const/4 p1, 0x6

    :goto_0
    return p1

    .line 603
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private shiftTopLevel(II)V
    .locals 2

    .line 451
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 461
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_5
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Vector$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Vector$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Vector$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Vector$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Vector$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Vector$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method

.method private zeroLeft([Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    .line 467
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zeroRight([Ljava/lang/Object;I)V
    .locals 1

    .line 471
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 152
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->appendBack(Ljava/lang/Object;)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_2

    .line 154
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 147
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->appendFront(Ljava/lang/Object;)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_2

    .line 149
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 220
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 223
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    goto :goto_5

    .line 225
    :cond_2
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isTraversableAgain()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toVector()Lscala/collection/immutable/Vector;

    move-result-object p1

    .line 226
    :goto_2
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 228
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->size()I

    move-result v1

    shr-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_4

    goto :goto_4

    .line 232
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->size()I

    move-result v1

    shr-int/lit8 v0, v0, 0x5

    if-ge v1, v0, :cond_5

    instance-of v0, p1, Lscala/collection/immutable/Vector;

    if-eqz v0, :cond_5

    .line 233
    check-cast p1, Lscala/collection/immutable/Vector;

    .line 234
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->reverseIterator()Lscala/collection/Iterator;

    move-result-object p2

    .line 235
    :goto_3
    invoke-interface {p2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v1}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lscala/collection/immutable/Vector;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Vector;

    goto :goto_3

    .line 237
    :cond_5
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 229
    :cond_6
    :goto_4
    invoke-static {p0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p2

    .line 230
    new-instance v0, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/Vector;Lscala/runtime/ObjectRef;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 231
    iget-object p1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/immutable/Vector;

    goto :goto_5

    .line 241
    :cond_7
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :cond_8
    :goto_5
    return-object p1
.end method

.method public appendBack(Ljava/lang/Object;)Lscala/collection/immutable/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Vector<",
            "TB;>;"
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    .line 372
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    and-int/lit8 v0, v0, -0x20

    .line 373
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    .line 375
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 377
    new-instance v2, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v2, v3, v5, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 378
    invoke-virtual {v2, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 379
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 380
    iget v3, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int v4, v3, v0

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 381
    invoke-virtual {v2}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    goto/16 :goto_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v6

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x5

    shl-int v6, v4, v6

    sub-int/2addr v6, v4

    not-int v6, v6

    and-int/2addr v5, v6

    .line 385
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v6

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x5

    ushr-int/2addr v6, v7

    if-eqz v5, :cond_2

    .line 390
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->debug()V

    .line 392
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v7

    if-le v7, v4, :cond_1

    sub-int/2addr v0, v5

    .line 394
    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    sub-int/2addr v2, v5

    .line 395
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v5

    invoke-direct {v7, v8, v9, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 396
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 397
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v4

    invoke-virtual {v7, v4}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 398
    invoke-direct {v7, v6, v3}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 399
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    xor-int v3, v2, v0

    .line 400
    invoke-direct {v7, v2, v0, v3}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 401
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    .line 402
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    .line 407
    iget v1, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 412
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v5

    invoke-direct {v7, v8, v9, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 413
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 414
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v4

    invoke-virtual {v7, v4}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 415
    invoke-direct {v7, v6, v3}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    xor-int v3, v1, v0

    .line 416
    invoke-direct {v7, v1, v0, v3}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 417
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    sub-int/2addr v2, v5

    aput-object p1, v0, v2

    .line 418
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    :goto_0
    move-object v2, v7

    goto :goto_1

    .line 422
    :cond_2
    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 425
    new-instance v3, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v3, v5, v6, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 426
    invoke-virtual {v3, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 427
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v5

    invoke-virtual {v3, v5}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    xor-int v5, v2, v0

    .line 428
    invoke-direct {v3, v2, v0, v5}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 429
    invoke-virtual {v3}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    .line 431
    invoke-virtual {v3}, Lscala/collection/immutable/Vector;->depth()I

    move-result p1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v0

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_3

    .line 433
    invoke-virtual {v3}, Lscala/collection/immutable/Vector;->debug()V

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 441
    new-instance v2, Lscala/collection/immutable/Vector;

    invoke-direct {v2, v3, v4, v3}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 442
    invoke-virtual {v2, v4}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    .line 443
    invoke-virtual {v2, v0}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method public appendFront(Ljava/lang/Object;)Lscala/collection/immutable/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Vector<",
            "TB;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    .line 275
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    sub-int/2addr v0, v4

    and-int/lit8 v0, v0, -0x20

    .line 276
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    sub-int/2addr v1, v4

    and-int/2addr v1, v3

    .line 278
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v3

    add-int/lit8 v5, v0, 0x20

    if-eq v3, v5, :cond_0

    .line 279
    new-instance v2, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 280
    invoke-virtual {v2, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 281
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 282
    iget v3, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int v4, v3, v0

    invoke-direct {v2, v3, v0, v4}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 283
    invoke-virtual {v2}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    goto/16 :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    shl-int v3, v4, v3

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v6

    sub-int/2addr v3, v6

    .line 288
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v6

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x5

    shl-int v6, v4, v6

    sub-int/2addr v6, v4

    not-int v6, v6

    and-int/2addr v6, v3

    .line 289
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x5

    ushr-int/2addr v3, v7

    if-eqz v6, :cond_2

    .line 294
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->debug()V

    .line 297
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v7

    if-le v7, v4, :cond_1

    add-int/2addr v0, v6

    .line 299
    iget v5, p0, Lscala/collection/immutable/Vector;->focus:I

    add-int/2addr v5, v6

    .line 300
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v8, v6

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v4

    add-int/2addr v4, v6

    invoke-direct {v7, v8, v4, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 301
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 302
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v4

    invoke-virtual {v7, v4}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 303
    invoke-direct {v7, v2, v3}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 304
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    xor-int v2, v5, v0

    .line 305
    invoke-direct {v7, v5, v0, v2}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 306
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    move-object v2, v7

    goto/16 :goto_0

    .line 311
    :cond_1
    iget v0, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 316
    new-instance v1, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v7

    sub-int/2addr v7, v4

    add-int/2addr v7, v6

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {v1, v7, v8, v5}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 317
    invoke-virtual {v1, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 318
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v7

    invoke-virtual {v1, v7}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 319
    invoke-direct {v1, v2, v3}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    xor-int v2, v0, v5

    .line 320
    invoke-direct {v1, v0, v5, v2}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 321
    invoke-virtual {v1}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    sub-int/2addr v6, v4

    aput-object p1, v0, v6

    .line 322
    invoke-virtual {v1}, Lscala/collection/immutable/Vector;->debug()V

    move-object v2, v1

    goto/16 :goto_0

    :cond_2
    if-gez v0, :cond_3

    .line 327
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v2

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x5

    shl-int v2, v4, v2

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    shl-int v3, v4, v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 331
    iget v3, p0, Lscala/collection/immutable/Vector;->focus:I

    add-int/2addr v3, v2

    .line 334
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v5, v6, v4, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 335
    invoke-virtual {v5, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 336
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v2

    invoke-virtual {v5, v2}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 337
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    xor-int v2, v3, v0

    .line 338
    invoke-direct {v5, v3, v0, v2}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 339
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    .line 340
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    move-object v2, v5

    goto :goto_0

    .line 344
    :cond_3
    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 347
    new-instance v3, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v4

    invoke-direct {v3, v5, v4, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 348
    invoke-virtual {v3, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 349
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v4

    invoke-virtual {v3, v4}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    xor-int v4, v2, v0

    .line 350
    invoke-direct {v3, v2, v0, v4}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 351
    invoke-virtual {v3}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v1

    move-object v2, v3

    goto :goto_0

    :cond_4
    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 361
    new-instance p1, Lscala/collection/immutable/Vector;

    invoke-direct {p1, v3, v0, v2}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 362
    invoke-virtual {p1, v4}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    .line 363
    invoke-virtual {p1, v1}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    move-object v2, p1

    :goto_0
    return-object v2
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lscala/collection/immutable/Vector;->checkRangeConvert(I)I

    move-result p1

    .line 124
    iget v0, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/Vector;->getElem(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Vector;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    return-object v0
.end method

.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public debug()V
    .locals 0

    .line 62
    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->debug(Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public depth()I
    .locals 1

    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0

    .line 62
    iput p1, p0, Lscala/collection/immutable/Vector;->depth:I

    return-void
.end method

.method public dirty()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return v0
.end method

.method public dirty_$eq(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropFront0(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_1
    sget-object p1, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {p1}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->dropRight(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropBack0(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_1
    sget-object p1, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {p1}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public endIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->endIndex:I

    return v0
.end method

.method public final getElem(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TA;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoFreshPosWritable1(III)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoNextBlockStart(II)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoNextBlockStartWritable(II)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPos(II)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPos(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable0(II)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable1(III)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.head"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->init()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->dropRight(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.init"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;)V"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;I)V"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public final initIterator(Lscala/collection/immutable/VectorIterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorIterator<",
            "TB;>;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p1, p0}, Lscala/collection/immutable/VectorIterator;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 91
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/immutable/Vector;->focus:I

    invoke-virtual {p1, v0}, Lscala/collection/immutable/VectorIterator;->stabilize(I)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/VectorIterator;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lscala/collection/immutable/VectorIterator;->gotoPos(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 62
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->iterator()Lscala/collection/immutable/VectorIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/immutable/VectorIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/VectorIterator<",
            "TA;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lscala/collection/immutable/VectorIterator;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/VectorIterator;-><init>(II)V

    .line 97
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->initIterator(Lscala/collection/immutable/VectorIterator;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.last"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .locals 2

    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->length()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->par()Lscala/collection/parallel/immutable/ParVector;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/immutable/ParVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TA;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lscala/collection/parallel/immutable/ParVector;

    invoke-direct {v0, p0}, Lscala/collection/parallel/immutable/ParVector;-><init>(Lscala/collection/immutable/Vector;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TA;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lscala/collection/immutable/Vector$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/Vector$$anon$1;-><init>(Lscala/collection/immutable/Vector;)V

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Vector;->slice(II)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/immutable/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p2}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;",
            "Lscala/collection/immutable/Vector<",
            "TA;>;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object v1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final stabilize(I)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public startIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->startIndex:I

    return v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->tail()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.tail"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 158
    sget-object p1, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {p1}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropBack0(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->takeRight(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 176
    sget-object p1, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {p1}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropFront0(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->toIndexedSeq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public updateAt(ILjava/lang/Object;)Lscala/collection/immutable/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(ITB;)",
            "Lscala/collection/immutable/Vector<",
            "TB;>;"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1}, Lscala/collection/immutable/Vector;->checkRangeConvert(I)I

    move-result p1

    .line 250
    new-instance v0, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 251
    invoke-virtual {v0, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 252
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 253
    iget v1, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int v2, v1, p1

    invoke-direct {v0, v1, p1, v2}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 254
    invoke-virtual {v0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 p1, p1, 0x1f

    aput-object p2, v1, p1

    return-object v0
.end method

.method public updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 142
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p3, v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p3, v0, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Vector;->updateAt(ILjava/lang/Object;)Lscala/collection/immutable/Vector;

    move-result-object p1

    goto :goto_2

    .line 144
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->updated(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Vector;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Vector;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
