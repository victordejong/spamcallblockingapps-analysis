.class public final Lscala/collection/concurrent/TrieMap;
.super Ljava/lang/Object;
.source "TrieMap.scala"

# interfaces
.implements Lscala/collection/concurrent/Map;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/concurrent/TrieMap$MangledHashing;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/concurrent/Map<",
        "TK;TV;>;",
        "Lscala/collection/CustomParallelizable<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParTrieMap<",
        "TK;TV;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r\rg\u0001B\u0001\u0003\u0005%\u0011q\u0001\u0016:jK6\u000b\u0007O\u0003\u0002\u0004\t\u0005Q1m\u001c8dkJ\u0014XM\u001c;\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))rd\u0005\u0004\u0001\u0017=\t\u0003F\u000e\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0012\'yi\u0011AA\u0005\u0003%\t\u00111!T1q!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\u000c\u0003\u0003-\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\u0008\u0003\u0006A\u0001\u0011\ra\u0006\u0002\u0002-B)!%J\n\u001fO5\t1E\u0003\u0002%\t\u00059Q.\u001e;bE2,\u0017B\u0001\u0014$\u0005\u001di\u0015\r\u001d\'jW\u0016\u0004B\u0001\u0005\u0001\u0014=A!\u0011F\u000b\u00170\u001b\u0005!\u0011BA\u0016\u0005\u0005Q\u0019Uo\u001d;p[B\u000b\'/\u00197mK2L\'0\u00192mKB!A\"L\n\u001f\u0013\tqcA\u0001\u0004UkBdWM\r\t\u0005aQ\u001ab$D\u00012\u0015\t!#G\u0003\u00024\t\u0005A\u0001/\u0019:bY2,G.\u0003\u00026c\tQ\u0001+\u0019:Ue&,W*\u00199\u0011\u000519\u0014B\u0001\u001d\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!Q\u0004A!A!\u0002\u0013Y\u0011!\u0001:\t\u0011q\u0002!\u0011!Q\u0001\nu\nQA\u001d;va\u0012\u0004BA\u0010$(\u00175\tqH\u0003\u0002A\u0003\u00061\u0011\r^8nS\u000eT!a\u0001\"\u000b\u0005\r#\u0015\u0001B;uS2T\u0011!R\u0001\u0005U\u00064\u0018-\u0003\u0002H\u007f\tY\u0012\t^8nS\u000e\u0014VMZ3sK:\u001cWMR5fY\u0012,\u0006\u000fZ1uKJD\u0001\"\u0013\u0001\u0003\u0002\u0003\u0006IAS\u0001\u0006Q\u0006\u001c\u0008N\u001a\t\u0004\u0017>\u001bR\"\u0001\'\u000b\u00055s\u0015a\u00025bg\"Lgn\u001a\u0006\u0003\u0007\u001aI!\u0001\u0015\'\u0003\u000f!\u000b7\u000f[5oO\"A!\u000b\u0001B\u0001B\u0003%1+\u0001\u0002fMB\u0019AkV\n\u000f\u00051)\u0016B\u0001,\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!\u0001W-\u0003\u000b\u0015\u000bX/\u001b<\u000b\u0005Y3\u0001\"B.\u0001\t\u0013a\u0016A\u0002\u001fj]&$h\u0008F\u0003(;z{\u0006\rC\u0003;5\u0002\u00071\u0002C\u0003=5\u0002\u0007Q\u0008C\u0003J5\u0002\u0007!\nC\u0003S5\u0002\u00071\u000bC\u0004c\u0001\u0001\u0007I\u0011B2\u0002\u0015!\u000c7\u000f[5oO>\u0014\'.F\u0001K\u0011\u001d)\u0007\u00011A\u0005\n\u0019\u000ca\u0002[1tQ&twm\u001c2k?\u0012*\u0017\u000f\u0006\u0002hUB\u0011A\u0002[\u0005\u0003S\u001a\u0011A!\u00168ji\"91\u000eZA\u0001\u0002\u0004Q\u0015a\u0001=%c!1Q\u000e\u0001Q!\n)\u000b1\u0002[1tQ&twm\u001c2kA!9q\u000e\u0001a\u0001\n\u0013\u0001\u0018aC3rk\u0006d\u0017\u000e^=pE*,\u0012a\u0015\u0005\u0008e\u0002\u0001\r\u0011\"\u0003t\u0003=)\u0017/^1mSRLxN\u00196`I\u0015\u000cHCA4u\u0011\u001dY\u0017/!AA\u0002MCaA\u001e\u0001!B\u0013\u0019\u0016\u0001D3rk\u0006d\u0017\u000e^=pE*\u0004\u0003b\u0002=\u0001\u0001\u0004%I!_\u0001\u000ce>|G/\u001e9eCR,\'/F\u0001>\u0011\u001dY\u0008\u00011A\u0005\nq\u000cqB]8piV\u0004H-\u0019;fe~#S-\u001d\u000b\u0003OvDqa\u001b>\u0002\u0002\u0003\u0007Q\u0008\u0003\u0004\u0000\u0001\u0001\u0006K!P\u0001\re>|G/\u001e9eCR,\'\u000f\t\u0005\u0006\u001b\u0002!\ta\u0019\u0005\u0007\u0003\u000b\u0001A\u0011\u00019\u0002\u0011\u0015\u000cX/\u00197jifD\u0011\"!\u0003\u0001\u0001\u0004%\t!a\u0003\u0002\tI|w\u000e^\u000b\u0002\u0017!I\u0011q\u0002\u0001A\u0002\u0013\u0005\u0011\u0011C\u0001\te>|Go\u0018\u0013fcR\u0019q-a\u0005\t\u0011-\u000ci!!AA\u0002-Aq!a\u0006\u0001A\u0003&1\"A\u0003s_>$\u0008\u0005\u000b\u0003\u0002\u0016\u0005m\u0001c\u0001\u0007\u0002\u001e%\u0019\u0011q\u0004\u0004\u0003\u0011Y|G.\u0019;jY\u0016Daa\u0017\u0001\u0005\u0002\u0005\rB#B\u0014\u0002&\u0005\u001d\u0002BB%\u0002\"\u0001\u0007!\n\u0003\u0004S\u0003C\u0001\ra\u0015\u0005\u00077\u0002!\t!a\u000b\u0015\u0003\u001dBq!a\u000c\u0001\t\u0013\t\t$A\u0006xe&$Xm\u00142kK\u000e$HcA4\u00024!A\u0011QGA\u0017\u0001\u0004\t9$A\u0002pkR\u0004B!!\u000f\u0002@5\u0011\u00111\u0008\u0006\u0004\u0003{!\u0015AA5p\u0013\u0011\t\t%a\u000f\u0003%=\u0013\'.Z2u\u001fV$\u0008/\u001e;TiJ,\u0017-\u001c\u0005\u0008\u0003\u000b\u0002A\u0011BA$\u0003)\u0011X-\u00193PE*,7\r\u001e\u000b\u0004O\u0006%\u0003\u0002CA&\u0003\u0007\u0002\r!!\u0014\u0002\u0005%t\u0007\u0003BA\u001d\u0003\u001fJA!!\u0015\u0002<\t\trJ\u00196fGRLe\u000e];u\'R\u0014X-Y7\t\u000f\u0005U\u0003\u0001\"\u0001\u0002X\u0005A1)Q*`%>{E\u000b\u0006\u0004\u0002Z\u0005}\u00131\r\t\u0004\u0019\u0005m\u0013bAA/\r\t9!i\\8mK\u0006t\u0007bBA1\u0003\'\u0002\raC\u0001\u0003_ZDq!!\u001a\u0002T\u0001\u00071\"\u0001\u0002om\"9\u0011\u0011\u000e\u0001\u0005\u0002\u0005-\u0014\u0001\u0003:fC\u0012\u0014vn\u001c;\u0015\t\u00055\u00141\u000f\t\u0006!\u0005=4CH\u0005\u0004\u0003c\u0012!!B%O_\u0012,\u0007BCA;\u0003O\u0002\n\u00111\u0001\u0002Z\u0005)\u0011MY8si\"9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014a\u0004*E\u0007N\u001bvLU#B\t~\u0013vj\u0014+\u0015\t\u00055\u0014Q\u0010\u0005\u000b\u0003k\n9\u0008%AA\u0002\u0005e\u0003bBAA\u0001\u0011%\u00111Q\u0001\u000f%\u0012\u001b5kU0D_6\u0004H.\u001a;f)\u0011\ti\'!\"\t\u0011\u0005U\u0014q\u0010a\u0001\u00033BC!a \u0002\nB!\u00111RAI\u001b\t\tiIC\u0002\u0002\u0010\u001a\t!\"\u00198o_R\u000cG/[8o\u0013\u0011\t\u0019*!$\u0003\u000fQ\u000c\u0017\u000e\u001c:fG\"9\u0011q\u0013\u0001\u0005\n\u0005e\u0015A\u0003*E\u0007N\u001bvLU(P)RA\u0011\u0011LAN\u0003;\u000b9\u000b\u0003\u0005\u0002b\u0005U\u0005\u0019AA7\u0011!\ty*!&A\u0002\u0005\u0005\u0016\u0001D3ya\u0016\u001cG/\u001a3nC&t\u0007#\u0002\t\u0002$Nq\u0012bAAS\u0005\tAQ*Y5o\u001d>$W\r\u0003\u0005\u0002f\u0005U\u0005\u0019AA7\u0011\u001d\tY\u000b\u0001C\u0005\u0003[\u000b\u0001\"\u001b8tKJ$\u0008n\u0019\u000b\u0008O\u0006=\u00161WA_\u0011\u001d\t\t,!+A\u0002M\t\u0011a\u001b\u0005\t\u0003k\u000bI\u000b1\u0001\u00028\u0006\u0011\u0001n\u0019\t\u0004\u0019\u0005e\u0016bAA^\r\t\u0019\u0011J\u001c;\t\u000f\u0005}\u0016\u0011\u0016a\u0001=\u0005\ta\u000f\u000b\u0003\u0002*\u0006%\u0005bBAc\u0001\u0011%\u0011qY\u0001\u000bS:\u001cXM\u001d;jM\"\u001cGCCAe\u0003\u001f\u000c\t.a5\u0002VB!A\"a3\u001f\u0013\r\tiM\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005E\u00161\u0019a\u0001\'!A\u0011QWAb\u0001\u0004\t9\u000cC\u0004\u0002@\u0006\r\u0007\u0019\u0001\u0010\t\u000f\u0005]\u00171\u0019a\u0001\u0017\u0005!1m\u001c8eQ\u0011\t\u0019-!#\t\u000f\u0005u\u0007\u0001\"\u0003\u0002`\u0006AAn\\8lkBD7\rF\u0003\u000c\u0003C\u000c\u0019\u000fC\u0004\u00022\u0006m\u0007\u0019A\n\t\u0011\u0005U\u00161\u001ca\u0001\u0003oCC!a7\u0002\n\"9\u0011\u0011\u001e\u0001\u0005\n\u0005-\u0018\u0001\u0003:f[>4X\r[2\u0015\u0011\u0005%\u0017Q^Ax\u0003cDq!!-\u0002h\u0002\u00071\u0003C\u0004\u0002@\u0006\u001d\u0008\u0019\u0001\u0010\t\u0011\u0005U\u0016q\u001da\u0001\u0003oCC!a:\u0002\n\"9\u0011q\u001f\u0001\u0005\u0002\u0005e\u0018AB:ue&tw-\u0006\u0002\u0002|B!\u0011Q B\u0002\u001d\ra\u0011q`\u0005\u0004\u0005\u00031\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0003\u0006\t\u001d!AB*ue&twMC\u0002\u0003\u0002\u0019AqAa\u0003\u0001\t\u0003\u0012i!A\u0002tKF,\u0012a\n\u0005\u0008\u0005#\u0001A\u0011\tB\n\u0003\r\u0001\u0018M]\u000b\u0002_!9!q\u0003\u0001\u0005B\t5\u0011!B3naRL\u0008b\u0002B\u000e\u0001\u0011\u0005!QD\u0001\u000bSN\u0014V-\u00193P]2LXCAA-\u0011\u001d\u0011\t\u0003\u0001C\u0001\u0005;\t1B\\8o%\u0016\u000cGm\u00148ms\"9!Q\u0005\u0001\u0005\u0002\u0005-\u0012\u0001C:oCB\u001c\u0008n\u001c;)\t\t\r\u0012\u0011\u0012\u0005\u0008\u0005W\u0001A\u0011\u0001B\u0017\u0003A\u0011X-\u00193P]2L8K\\1qg\"|G\u000f\u0006\u0002\u00030A)\u0011F!\r\u0014=%\u0011!\u0003\u0002\u0015\u0005\u0005S\tI\tC\u0004\u00038\u0001!\tE!\u000f\u0002\u000b\rdW-\u0019:\u0015\u0003\u001dDCA!\u000e\u0002\n\"9!q\u0008\u0001\u0005\u0002\t\u0005\u0013aC2p[B,H/\u001a%bg\"$B!a.\u0003D!9\u0011\u0011\u0017B\u001f\u0001\u0004\u0019\u0002b\u0002B$\u0001\u0011\u0005!\u0011J\u0001\u0007Y>|7.\u001e9\u0015\u0007y\u0011Y\u0005C\u0004\u00022\n\u0015\u0003\u0019A\n\t\u000f\t=\u0003\u0001\"\u0011\u0003R\u0005)\u0011\r\u001d9msR\u0019aDa\u0015\t\u000f\u0005E&Q\na\u0001\'!9!q\u000b\u0001\u0005\u0002\te\u0013aA4fiR!\u0011\u0011\u001aB.\u0011\u001d\t\tL!\u0016A\u0002MAqAa\u0018\u0001\t\u0003\u0012\t\'A\u0002qkR$b!!3\u0003d\t\u001d\u0004b\u0002B3\u0005;\u0002\raE\u0001\u0004W\u0016L\u0008b\u0002B5\u0005;\u0002\rAH\u0001\u0006m\u0006dW/\u001a\u0005\u0008\u0005[\u0002A\u0011\tB8\u0003\u0019)\u0008\u000fZ1uKR)qM!\u001d\u0003t!9\u0011\u0011\u0017B6\u0001\u0004\u0019\u0002bBA`\u0005W\u0002\rA\u0008\u0005\u0008\u0005o\u0002A\u0011\u0001B=\u0003!!\u0003\u000f\\;tI\u0015\u000cH\u0003\u0002B>\u0005{j\u0011\u0001\u0001\u0005\u0008\u0005\u007f\u0012)\u00081\u0001-\u0003\tYg\u000fC\u0004\u0003\u0004\u0002!\tE!\"\u0002\rI,Wn\u001c<f)\u0011\tIMa\"\t\u000f\u0005E&\u0011\u0011a\u0001\'!9!1\u0012\u0001\u0005\u0002\t5\u0015!\u0003\u0013nS:,8\u000fJ3r)\u0011\u0011YHa$\t\u000f\u0005E&\u0011\u0012a\u0001\'!9!1\u0013\u0001\u0005\u0002\tU\u0015a\u00039vi&3\u0017IY:f]R$b!!3\u0003\u0018\ne\u0005bBAY\u0005#\u0003\ra\u0005\u0005\u0008\u0003\u007f\u0013\t\n1\u0001\u001f\u0011\u001d\u0011i\n\u0001C!\u0005?\u000bqbZ3u\u001fJ,En]3Va\u0012\u000cG/\u001a\u000b\u0006=\t\u0005&1\u0015\u0005\u0008\u0003c\u0013Y\n1\u0001\u0014\u0011%\u0011)Ka\'\u0005\u0002\u0004\u00119+\u0001\u0002paB!AB!+\u001f\u0013\r\u0011YK\u0002\u0002\ty\tLh.Y7f}!9!1\u0011\u0001\u0005\u0002\t=FCBA-\u0005c\u0013\u0019\u000cC\u0004\u00022\n5\u0006\u0019A\n\t\u000f\u0005}&Q\u0016a\u0001=!9!q\u0017\u0001\u0005\u0002\te\u0016a\u0002:fa2\u000c7-\u001a\u000b\t\u00033\u0012YL!0\u0003B\"9\u0011\u0011\u0017B[\u0001\u0004\u0019\u0002b\u0002B`\u0005k\u0003\rAH\u0001\t_2$g/\u00197vK\"9!1\u0019B[\u0001\u0004q\u0012\u0001\u00038foZ\u000cG.^3\t\u000f\t]\u0006\u0001\"\u0001\u0003HR1\u0011\u0011\u001aBe\u0005\u0017Dq!!-\u0003F\u0002\u00071\u0003C\u0004\u0002@\n\u0015\u0007\u0019\u0001\u0010\t\u000f\t=\u0007\u0001\"\u0001\u0003R\u0006A\u0011\u000e^3sCR|\'/\u0006\u0002\u0003TB!\u0011F!6-\u0013\r\u00119\u000e\u0002\u0002\t\u0013R,\'/\u0019;pe\"9!1\u001c\u0001\u0005\n\tu\u0017AC2bG\",GmU5{KR\u0011\u0011q\u0017\u0005\u0008\u0005C\u0004A\u0011\tBr\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005]\u0006b\u0002Bt\u0001\u0011\u0005#\u0011^\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005W\u0004BA!<\u0003t6\u0011!q\u001e\u0006\u0004\u0005c$\u0015\u0001\u00027b]\u001eLAA!\u0002\u0003p\"I!q\u001f\u0001\u0012\u0002\u0013\u0005!\u0011`\u0001\u0013e\u0016\u000cGMU8pi\u0012\"WMZ1vYR$\u0013\'\u0006\u0002\u0003|*\"\u0011\u0011\u000cB\u007fW\t\u0011y\u0010\u0005\u0003\u0004\u0002\r\u001dQBAB\u0002\u0015\u0011\u0019)!!$\u0002\u0013Ut7\r[3dW\u0016$\u0017\u0002BB\u0005\u0007\u0007\u0011\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011%\u0019i\u0001AI\u0001\n\u0003\u0011I0A\rS\t\u000e\u001b6k\u0018*F\u0003\u0012{&kT(UI\u0011,g-Y;mi\u0012\n\u0004f\u0002\u0001\u0004\u0012\t%4q\u0003\t\u0004\u0019\rM\u0011bAB\u000b\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\tO\u00132\rTD\u0011\u0002  911\u0004\u0002\t\u0002\ru\u0011a\u0002+sS\u0016l\u0015\r\u001d\t\u0004!\r}aAB\u0001\u0003\u0011\u0003\u0019\tcE\u0003\u0004 \r\rb\u0007\u0005\u0004\u0004&\r-2qF\u0007\u0003\u0007OQ1a!\u000b\u0005\u0003\u001d9WM\\3sS\u000eLAa!\u000c\u0004(\t\tR*\u001e;bE2,W*\u00199GC\u000e$xN]=\u0011\u0005A\u0001\u0001bB.\u0004 \u0011\u000511\u0007\u000b\u0003\u0007;A!ba\u000e\u0004 \t\u0007I\u0011AB\u001d\u00031Ign\u001c3fkB$\u0017\r^3s+\t\u0019Y\u0004\u0005\u0004?\r\u000eu2Q\u000b\u0019\u0007\u0007\u007f\u00199e!\u0015\u0011\u000fA\u0019\te!\u0012\u0004P%\u001911\t\u0002\u0003\u0013%su\u000eZ3CCN,\u0007c\u0001\u000b\u0004H\u0011Y1\u0011JB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryF\u0005\u000e\u0005\n\u0007\u001b\u001ay\u0002)A\u0005\u0007w\tQ\"\u001b8pI\u0016,\u0008\u000fZ1uKJ\u0004\u0003c\u0001\u000b\u0004R\u0011Y11KB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryF%\u000e\u0019\u0007\u0007/\u001aYf!\u0019\u0011\u000fA\t\u0019k!\u0017\u0004`A\u0019Aca\u0017\u0005\u0017\ru31JA\u0001\u0002\u0003\u0015\ta\u0006\u0002\u0004?\u00122\u0004c\u0001\u000b\u0004b\u0011Y11MB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryFe\u000e\u0005\t\u0007O\u001ay\u0002b\u0001\u0004j\u0005a1-\u00198Ck&dGM\u0012:p[V111NBB\u0007\u000f+\"a!\u001c\u0011\u0015\r\u00152qNB:\u0007\u007f\u001aI)\u0003\u0003\u0004r\r\u001d\"\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007\u0003BB;\u0007oj!aa\u0008\n\t\re41\u0010\u0002\u0005\u0007>dG.\u0003\u0003\u0004~\r\u001d\"!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\r[\r\u00055Q\u0011\t\u0004)\r\rEA\u0002\u000c\u0004f\t\u0007q\u0003E\u0002\u0015\u0007\u000f#a\u0001IB3\u0005\u00049\u0002C\u0002\t\u0001\u0007\u0003\u001b)\t\u0003\u0005\u0003\u0018\r}A\u0011ABG+\u0019\u0019yi!&\u0004\u001aV\u00111\u0011\u0013\t\u0007!\u0001\u0019\u0019ja&\u0011\u0007Q\u0019)\n\u0002\u0004\u0017\u0007\u0017\u0013\ra\u0006\t\u0004)\reEA\u0002\u0011\u0004\u000c\n\u0007qCB\u0004\u0004\u001e\u000e}\u0001aa(\u0003\u001d5\u000bgn\u001a7fI\"\u000b7\u000f[5oOV!1\u0011UBT\'\u0015\u0019YjCBR!\u0011Yuj!*\u0011\u0007Q\u00199\u000b\u0002\u0004\u0017\u00077\u0013\ra\u0006\u0005\u00087\u000emE\u0011ABV)\t\u0019i\u000b\u0005\u0004\u0004v\rm5Q\u0015\u0005\t\u0007c\u001bY\n\"\u0001\u00044\u0006!\u0001.Y:i)\u0011\t9l!.\t\u0011\u0005E6q\u0016a\u0001\u0007KC!b!/\u0004 \u0005\u0005I\u0011BB^\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\ru\u0006\u0003\u0002Bw\u0007\u007fKAa!1\u0003p\n1qJ\u00196fGR\u0004"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x58db3967f1de7e31L


# instance fields
.field private equalityobj:Lscala/math/Equiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Equiv<",
            "TK;>;"
        }
    .end annotation
.end field

.field private hashingobj:Lscala/util/hashing/Hashing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/hashing/Hashing<",
            "TK;>;"
        }
    .end annotation
.end field

.field private volatile root:Ljava/lang/Object;

.field private rootupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 653
    sget-object v0, Lscala/util/hashing/Hashing$;->MODULE$:Lscala/util/hashing/Hashing$;

    invoke-virtual {v0}, Lscala/util/hashing/Hashing$;->default()Lscala/util/hashing/Hashing$Default;

    move-result-object v0

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v1}, Lscala/package$;->Equiv()Lscala/math/Equiv$;

    move-result-object v1

    invoke-virtual {v1}, Lscala/math/Equiv$;->universal()Lscala/math/Equiv;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscala/collection/concurrent/TrieMap;-><init>(Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/util/hashing/Hashing<",
            "TK;>;",
            "Lscala/math/Equiv<",
            "TK;>;)V"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/Iterable$class;->$init$(Lscala/collection/Iterable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/GenMapLike$class;->$init$(Lscala/collection/GenMapLike;)V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/MapLike$class;->$init$(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/Map$class;->$init$(Lscala/collection/Map;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->$init$(Lscala/collection/mutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Map$class;->$init$(Lscala/collection/mutable/Map;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 639
    instance-of v0, p3, Lscala/util/hashing/Hashing$Default;

    if-eqz v0, :cond_0

    new-instance p3, Lscala/collection/concurrent/TrieMap$MangledHashing;

    invoke-direct {p3}, Lscala/collection/concurrent/TrieMap$MangledHashing;-><init>()V

    :cond_0
    iput-object p3, p0, Lscala/collection/concurrent/TrieMap;->hashingobj:Lscala/util/hashing/Hashing;

    .line 640
    iput-object p4, p0, Lscala/collection/concurrent/TrieMap;->equalityobj:Lscala/math/Equiv;

    .line 641
    iput-object p2, p0, Lscala/collection/concurrent/TrieMap;->rootupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 644
    iput-object p1, p0, Lscala/collection/concurrent/TrieMap;->root:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/hashing/Hashing<",
            "TK;>;",
            "Lscala/math/Equiv<",
            "TK;>;)V"
        }
    .end annotation

    .line 647
    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->newRootNode()Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 648
    const-class v1, Lscala/collection/concurrent/TrieMap;

    const-class v2, Ljava/lang/Object;

    const-string v3, "root"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 646
    invoke-direct {p0, v0, v1, p1, p2}, Lscala/collection/concurrent/TrieMap;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V

    return-void
.end method

.method private RDCSS_Complete(Z)Lscala/collection/concurrent/INode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 701
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->root()Ljava/lang/Object;

    move-result-object v0

    .line 702
    instance-of v1, v0, Lscala/collection/concurrent/INode;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/concurrent/INode;

    goto :goto_1

    .line 704
    :cond_1
    instance-of v1, v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    if-eqz v1, :cond_5

    check-cast v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    if-eqz v0, :cond_4

    .line 705
    new-instance v1, Lscala/Tuple3;

    invoke-virtual {v0}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/concurrent/INode;

    invoke-virtual {v1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/concurrent/MainNode;

    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/concurrent/INode;

    if-eqz p1, :cond_2

    .line 707
    invoke-virtual {p0, v0, v2}, Lscala/collection/concurrent/TrieMap;->CAS_ROOT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {v2, p0}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v4

    if-ne v4, v3, :cond_3

    .line 712
    invoke-virtual {p0, v0, v1}, Lscala/collection/concurrent/TrieMap;->CAS_ROOT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 713
    invoke-virtual {v0, p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->committed_$eq(Z)V

    move-object v0, v1

    goto :goto_1

    .line 717
    :cond_3
    invoke-virtual {p0, v0, v2}, Lscala/collection/concurrent/TrieMap;->CAS_ROOT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    .line 705
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 702
    :cond_5
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private RDCSS_ROOT(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 725
    new-instance v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/concurrent/RDCSS_Descriptor;-><init>(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)V

    .line 726
    invoke-virtual {p0, p1, v0}, Lscala/collection/concurrent/TrieMap;->CAS_ROOT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 727
    invoke-direct {p0, p2}, Lscala/collection/concurrent/TrieMap;->RDCSS_Complete(Z)Lscala/collection/concurrent/INode;

    .line 728
    invoke-virtual {v0}, Lscala/collection/concurrent/RDCSS_Descriptor;->committed()Z

    move-result p2

    :cond_0
    return p2
.end method

.method private cachedSize()I
    .locals 1

    .line 934
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 935
    invoke-virtual {v0, p0}, Lscala/collection/concurrent/INode;->cachedSize(Lscala/collection/concurrent/TrieMap;)I

    move-result v0

    return v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/TrieMap$;->MODULE$:Lscala/collection/concurrent/TrieMap$;

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private equalityobj()Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Equiv<",
            "TK;>;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lscala/collection/concurrent/TrieMap;->equalityobj:Lscala/math/Equiv;

    return-object v0
.end method

.method private equalityobj_$eq(Lscala/math/Equiv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Equiv<",
            "TK;>;)V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lscala/collection/concurrent/TrieMap;->equalityobj:Lscala/math/Equiv;

    return-void
.end method

.method private hashingobj()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/Hashing<",
            "TK;>;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lscala/collection/concurrent/TrieMap;->hashingobj:Lscala/util/hashing/Hashing;

    return-object v0
.end method

.method private hashingobj_$eq(Lscala/util/hashing/Hashing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/hashing/Hashing<",
            "TK;>;)V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lscala/collection/concurrent/TrieMap;->hashingobj:Lscala/util/hashing/Hashing;

    return-void
.end method

.method public static inodeupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/INodeBase<",
            "**>;",
            "Lscala/collection/concurrent/MainNode<",
            "**>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/TrieMap$;->MODULE$:Lscala/collection/concurrent/TrieMap$;

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMap$;->inodeupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private inserthc(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)V"
        }
    .end annotation

    .line 733
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 734
    iget-object v7, v1, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lscala/collection/concurrent/INode;->rec_insert(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 738
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 740
    iget-object v8, v1, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lscala/collection/concurrent/INode;->rec_insertif(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method private lookuphc(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 746
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 747
    iget-object v6, v1, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v2, p1

    move v3, p2

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lscala/collection/concurrent/INode;->rec_lookup(Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Ljava/lang/Object;

    move-result-object v0

    .line 748
    sget-object v1, Lscala/collection/concurrent/INodeBase;->RESTART:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 671
    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->newRootNode()Lscala/collection/concurrent/INode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->root_$eq(Ljava/lang/Object;)V

    .line 672
    const-class v0, Lscala/collection/concurrent/TrieMap;

    const-class v1, Ljava/lang/Object;

    const-string v2, "root"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMap;->rootupdater_$eq(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V

    .line 674
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/hashing/Hashing;

    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMap;->hashingobj_$eq(Lscala/util/hashing/Hashing;)V

    .line 675
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/math/Equiv;

    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMap;->equalityobj_$eq(Lscala/math/Equiv;)V

    .line 677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 680
    sget-object v1, Lscala/collection/concurrent/TrieMapSerializationEnd$;->MODULE$:Lscala/collection/concurrent/TrieMapSerializationEnd$;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 681
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 683
    invoke-virtual {p0, v0, v1}, Lscala/collection/concurrent/TrieMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    :cond_2
    sget-object v1, Lscala/collection/concurrent/TrieMapSerializationEnd$;->MODULE$:Lscala/collection/concurrent/TrieMapSerializationEnd$;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private removehc(Ljava/lang/Object;Ljava/lang/Object;I)Lscala/Option;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 766
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 767
    iget-object v7, v1, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lscala/collection/concurrent/INode;->rec_remove(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method private rootupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lscala/collection/concurrent/TrieMap;->rootupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private rootupdater_$eq(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lscala/collection/concurrent/TrieMap;->rootupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    .line 658
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->hashingobj()Lscala/util/hashing/Hashing;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 659
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->equalityobj()Lscala/math/Equiv;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 661
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 662
    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple2;

    if-eqz v1, :cond_0

    new-instance v2, Lscala/Tuple2;

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    .line 664
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 663
    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 667
    :cond_1
    sget-object v0, Lscala/collection/concurrent/TrieMapSerializationEnd$;->MODULE$:Lscala/collection/concurrent/TrieMapSerializationEnd$;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/concurrent/TrieMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/MapLike$class;->$minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/concurrent/TrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 867
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->remove(Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/concurrent/TrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Lscala/collection/Seq<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/concurrent/TrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$minus$minus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/concurrent/TrieMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TB1;>;)",
            "Lscala/collection/mutable/Map<",
            "TK;TB1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TB1;>;",
            "Lscala/Tuple2<",
            "TK;TB1;>;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TK;TB1;>;>;)",
            "Lscala/collection/mutable/Map<",
            "TK;TB1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/MapLike$class;->$plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 857
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/concurrent/TrieMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 633
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/concurrent/TrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 633
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/concurrent/TrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/concurrent/TrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
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
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TK;TB1;>;>;)",
            "Lscala/collection/mutable/Map<",
            "TK;TB1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$plus$plus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Traversable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public CAS_ROOT(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 688
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->rootupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->root()Ljava/lang/Object;

    move-result-object v0

    .line 694
    instance-of v1, v0, Lscala/collection/concurrent/INode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/concurrent/INode;

    goto :goto_0

    .line 696
    :cond_0
    instance-of v1, v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lscala/collection/concurrent/TrieMap;->RDCSS_Complete(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 694
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public RDCSS_READ_ROOT$default$1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/MapLike$class;->addString(Lscala/collection/MapLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->andThen(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TC;>;)",
            "Lscala/PartialFunction<",
            "TK;TC;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 835
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 836
    invoke-direct {p0, p1, v0}, Lscala/collection/concurrent/TrieMap;->lookuphc(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 837
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TK;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 3

    .line 822
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 823
    invoke-virtual {v0, p0}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    sget-object v2, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v2}, Lscala/collection/concurrent/INode$;->newRootNode()Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/concurrent/TrieMap;->RDCSS_ROOT(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Map;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->clone(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Iterable;",
            ">;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TK;>;)",
            "Lscala/Function1<",
            "TA;TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public computeHash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 827
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->hashingobj()Lscala/util/hashing/Hashing;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/util/hashing/Hashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IterableLike$class;->copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->default(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->dropRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->dropWhile(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->empty()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 780
    new-instance v0, Lscala/collection/concurrent/TrieMap;

    invoke-direct {v0}, Lscala/collection/concurrent/TrieMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->empty()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public equality()Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Equiv<",
            "TK;>;"
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->equalityobj()Lscala/math/Equiv;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->exists(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->filterKeys(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->filterNot(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->find(Lscala/collection/IterableLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->foldRight(Lscala/collection/IterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->forall(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TU;>;)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->foreach(Lscala/collection/IterableLike;Lscala/Function1;)V

    return-void
.end method

.method public genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/mutable/Iterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 842
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 843
    sget-object v1, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-direct {p0, p1, v0}, Lscala/collection/concurrent/TrieMap;->lookuphc(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lscala/Function0<",
            "TB1;>;)TB1;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/MapLike$class;->getOrElse(Lscala/collection/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lscala/Function0<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 898
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 901
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Concurrent TrieMap values cannot be null."

    .line 903
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 905
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 906
    sget-object v1, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v1}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lscala/collection/concurrent/TrieMap;->insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 907
    instance-of v0, p1, Lscala/Some;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 908
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 906
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->groupBy(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->grouped(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->hasDefiniteSize(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/GenMapLike$class;->hashCode(Lscala/collection/GenMapLike;)I

    move-result v0

    return v0
.end method

.method public hashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/Hashing<",
            "TK;>;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->hashingobj()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->headOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inits()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->inits(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->isDefinedAt(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->isEmpty(Lscala/collection/MapLike;)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 782
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->rootupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->nonReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->readOnlySnapshot()Lscala/collection/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Map;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_0
    new-instance v0, Lscala/collection/concurrent/TrieMapIterator;

    const/4 v1, 0x0

    sget-object v2, Lscala/collection/concurrent/TrieMapIterator$;->MODULE$:Lscala/collection/concurrent/TrieMapIterator$;

    invoke-virtual {v2}, Lscala/collection/concurrent/TrieMapIterator$;->$lessinit$greater$default$3()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lscala/collection/concurrent/TrieMapIterator;-><init>(ILscala/collection/concurrent/TrieMap;Z)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TK;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->keySet(Lscala/collection/MapLike;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TK;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->keys(Lscala/collection/MapLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->keysIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->lastOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public lift()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TK;",
            "Lscala/Option<",
            "TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/PartialFunction$class;->lift(Lscala/PartialFunction;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 830
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 831
    invoke-direct {p0, p1, v0}, Lscala/collection/concurrent/TrieMap;->lookuphc(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TK;TV;>;TNewTo;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TC;>;)",
            "Lscala/collection/Map<",
            "TK;TC;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->mapValues(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->newBuilder(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public nonReadOnly()Z
    .locals 1

    .line 784
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->rootupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public orElse(Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TK;B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;)",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->par()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 778
    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMap;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParTrieMap;-><init>(Lscala/collection/concurrent/TrieMap;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->partition(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 847
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 848
    invoke-direct {p0, p1, v0, p2, v1}, Lscala/collection/concurrent/TrieMap;->insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 872
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 873
    sget-object v1, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v1}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lscala/collection/concurrent/TrieMap;->insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public readOnlySnapshot()Lscala/collection/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 815
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 816
    invoke-virtual {v0, p0}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 817
    new-instance v2, Lscala/collection/concurrent/Gen;

    invoke-direct {v2}, Lscala/collection/concurrent/Gen;-><init>()V

    invoke-virtual {v0, v2, p0}, Lscala/collection/concurrent/INode;->copyToGen(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/concurrent/TrieMap;->RDCSS_ROOT(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/concurrent/TrieMap;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->hashing()Lscala/util/hashing/Hashing;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->equality()Lscala/math/Equiv;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lscala/collection/concurrent/TrieMap;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V

    return-object v1
.end method

.method public readRoot(Z)Lscala/collection/concurrent/INode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 690
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object p1

    return-object p1
.end method

.method public readRoot$default$1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)",
            "Lscala/Option<",
            "TA1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 862
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 863
    invoke-direct {p0, p1, v1, v0}, Lscala/collection/concurrent/TrieMap;->removehc(Ljava/lang/Object;Ljava/lang/Object;I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 915
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 916
    invoke-direct {p0, p1, p2, v0}, Lscala/collection/concurrent/TrieMap;->removehc(Ljava/lang/Object;Ljava/lang/Object;I)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->nonEmpty()Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 926
    sget-object v1, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v1}, Lscala/collection/concurrent/INode$;->KEY_PRESENT()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lscala/collection/concurrent/TrieMap;->insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 920
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 921
    invoke-direct {p0, p1, v0, p3, p2}, Lscala/collection/concurrent/TrieMap;->insertifhc(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->nonEmpty()Z

    move-result p1

    return p1
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/Map;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->result(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public retain(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TK;TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/MapLike<",
            "TK;TV;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->retain(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public root()Ljava/lang/Object;
    .locals 1

    .line 644
    iget-object v0, p0, Lscala/collection/concurrent/TrieMap;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public root_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lscala/collection/concurrent/TrieMap;->root:Ljava/lang/Object;

    return-void
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TU;>;)",
            "Lscala/Function1<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scan(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanLeft(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanRight(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/concurrent/TrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Map;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 939
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->nonReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->readOnlySnapshot()Lscala/collection/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Map;->size()I

    move-result v0

    goto :goto_0

    .line 940
    :cond_0
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->cachedSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->slice(Lscala/collection/IterableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliding(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public snapshot()Lscala/collection/concurrent/TrieMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 796
    :cond_0
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 797
    invoke-virtual {v0, p0}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 798
    new-instance v2, Lscala/collection/concurrent/Gen;

    invoke-direct {v2}, Lscala/collection/concurrent/Gen;-><init>()V

    invoke-virtual {v0, v2, p0}, Lscala/collection/concurrent/INode;->copyToGen(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/concurrent/TrieMap;->RDCSS_ROOT(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/concurrent/TrieMap;

    new-instance v2, Lscala/collection/concurrent/Gen;

    invoke-direct {v2}, Lscala/collection/concurrent/Gen;-><init>()V

    invoke-virtual {v0, v2, p0}, Lscala/collection/concurrent/INode;->copyToGen(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/INode;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMap;->rootupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->hashing()Lscala/util/hashing/Hashing;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->equality()Lscala/math/Equiv;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lscala/collection/concurrent/TrieMap;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lscala/util/hashing/Hashing;Lscala/math/Equiv;)V

    return-object v1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->span(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->splitAt(Lscala/collection/TraversableLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public string()Ljava/lang/String;
    .locals 2

    .line 772
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/INode;->string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "TrieMap"

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tails()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tails(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->take(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->takeRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->takeWhile(Lscala/collection/IterableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public thisCollection()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "Lscala/Tuple2<",
            "TK;TV;>;TCol;>;)TCol;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TC;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->toBuffer(Lscala/collection/MapLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->toCollection(Lscala/collection/IterableLike;Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterable(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->toSeq(Lscala/collection/MapLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->toString(Lscala/collection/MapLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TK;TV;TV;>;)",
            "Lscala/collection/mutable/MapLike<",
            "TK;TV;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->transform(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/Iterable<",
            "TA1;>;",
            "Lscala/collection/mutable/Iterable<",
            "TA2;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/mutable/Iterable<",
            "TA1;>;",
            "Lscala/collection/mutable/Iterable<",
            "TA2;>;",
            "Lscala/collection/mutable/Iterable<",
            "TA3;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 852
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    .line 853
    invoke-direct {p0, p1, v0, p2}, Lscala/collection/concurrent/TrieMap;->inserthc(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2}, Lscala/collection/concurrent/TrieMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2}, Lscala/collection/concurrent/TrieMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TK;TB1;)",
            "Lscala/collection/mutable/Map<",
            "TK;TB1;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->updated(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->values(Lscala/collection/MapLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/MapLike$class;->valuesIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lscala/collection/IterableLike$class;->view(Lscala/collection/IterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/IterableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/IterableView<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->view(Lscala/collection/IterableLike;II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2}, Lscala/collection/concurrent/TrieMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;)",
            "Lscala/collection/mutable/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/Map$class;->withDefault(Lscala/collection/mutable/Map;Lscala/Function1;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lscala/collection/mutable/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/mutable/Map$class;->withDefaultValue(Lscala/collection/mutable/Map;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/FilterMonadic<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->withFilter(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableLike$class;->zipAll(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 633
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->zipWithIndex(Lscala/collection/IterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
