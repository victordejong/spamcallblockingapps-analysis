.class public abstract Lscala/io/Source;
.super Ljava/lang/Object;
.source "Source.scala"

# interfaces
.implements Lscala/collection/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/io/Source$Positioner;,
        Lscala/io/Source$NoPositioner$;,
        Lscala/io/Source$LineIterator;,
        Lscala/io/Source$RelaxedPosition$;,
        Lscala/io/Source$RelaxedPositioner$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rEw!B\u0001\u0003\u0011\u00039\u0011AB*pkJ\u001cWM\u0003\u0002\u0004\t\u0005\u0011\u0011n\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0005\n\u001b\u0005\u0011a!\u0002\u0006\u0003\u0011\u0003Y!AB*pkJ\u001cWm\u0005\u0002\n\u0019A\u0011QBD\u0007\u0002\t%\u0011q\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bEIA\u0011\u0001\n\u0002\rqJg.\u001b;?)\u00059\u0001b\u0002\u000b\n\u0005\u0004%\t!F\u0001\u000f\t\u00164\u0017-\u001e7u\u0005V47+\u001b>f+\u00051\u0002CA\u0007\u0018\u0013\tABAA\u0002J]RDaAG\u0005!\u0002\u00131\u0012a\u0004#fM\u0006,H\u000e\u001e\"vMNK\'0\u001a\u0011\t\u000bqIA\u0011A\u000f\u0002\u000bM$H-\u001b8\u0016\u0003y\u0001\"\u0001C\u0010\n\u0005\u0001\u0012!A\u0004\"vM\u001a,\'/\u001a3T_V\u00148-\u001a\u0005\u0006E%!\taI\u0001\rMJ|W.\u0013;fe\u0006\u0014G.\u001a\u000b\u0004I\t%\u0005C\u0001\u0005&\r\u0015Q!!!\u0001\'\'\r)Cb\n\t\u0004Q-rcBA\u0007*\u0013\tQC!A\u0004qC\u000e\\\u0017mZ3\n\u00051j#\u0001C%uKJ\u000cGo\u001c:\u000b\u0005)\"\u0001CA\u00070\u0013\t\u0001DA\u0001\u0003DQ\u0006\u0014\u0008\"B\t&\t\u0003\u0011D#\u0001\u0013\t\u000fQ*#\u0019!D\tk\u0005!\u0011\u000e^3s+\u00059\u0003bB\u001c&\u0001\u0004%\t\u0001O\u0001\u0006I\u0016\u001c8M]\u000b\u0002sA\u0011!(\u0010\u0008\u0003\u001bmJ!\u0001\u0010\u0003\u0002\rA\u0013X\rZ3g\u0013\tqtH\u0001\u0004TiJLgn\u001a\u0006\u0003y\u0011Aq!Q\u0013A\u0002\u0013\u0005!)A\u0005eKN\u001c\'o\u0018\u0013fcR\u00111I\u0012\t\u0003\u001b\u0011K!!\u0012\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0008\u000f\u0002\u000b\t\u00111\u0001:\u0003\rAH%\r\u0005\u0007\u0013\u0016\u0002\u000b\u0015B\u001d\u0002\r\u0011,7o\u0019:!\u0011\u001dYU\u00051A\u0005\u0002U\tqA\\3se>\u00148\u000fC\u0004NK\u0001\u0007I\u0011\u0001(\u0002\u00179,\'O]8sg~#S-\u001d\u000b\u0003\u0007>Cqa\u0012\'\u0002\u0002\u0003\u0007a\u0003\u0003\u0004RK\u0001\u0006KAF\u0001\t]\u0016\u0014(o\u001c:tA!91+\na\u0001\n\u0003)\u0012!\u00038xCJt\u0017N\\4t\u0011\u001d)V\u00051A\u0005\u0002Y\u000bQB\\<be:LgnZ:`I\u0015\u000cHCA\"X\u0011\u001d9E+!AA\u0002YAa!W\u0013!B\u00131\u0012A\u00038xCJt\u0017N\\4tA!)1,\nC\u00059\u00069A.\u001b8f\u001dVlGCA\u001d^\u0011\u0015q&\u000c1\u0001\u0017\u0003\u0011a\u0017N\\3\u0007\t\u0001,\u0003!\u0019\u0002\r\u0019&tW-\u0013;fe\u0006$xN]\n\u0004?\nD\u0007cA2gs5\tAM\u0003\u0002f\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\u0005\u001d$\'\u0001E!cgR\u0014\u0018m\u0019;Ji\u0016\u0014\u0018\r^8s!\rA3&\u000f\u0005\u0006#}#\tA\u001b\u000b\u0002WB\u0011AnX\u0007\u0002K!1an\u0018Q\u0001\n=\u000c!a\u001d2\u0011\u0005A\u001cX\"A9\u000b\u0005I$\u0017aB7vi\u0006\u0014G.Z\u0005\u0003iF\u0014Qb\u0015;sS:<\')^5mI\u0016\u0014\u0008\u0002\u0003\u001b`\u0011\u000b\u0007I\u0011\u0001<\u0016\u0003]\u00042\u0001\u000b=/\u0013\tIXF\u0001\tCk\u001a4WM]3e\u0013R,\'/\u0019;pe\"A1p\u0018E\u0001B\u0003&q/A\u0003ji\u0016\u0014\u0008\u0005C\u0003~?\u0012\u0005a0A\u0005jg:+w\u000f\\5oKR\u0019q0!\u0002\u0011\u00075\t\t!C\u0002\u0002\u0004\u0011\u0011qAQ8pY\u0016\u000cg\u000e\u0003\u0004\u0002\u0008q\u0004\rAL\u0001\u0003G\"Dq!a\u0003`\t\u0003\ti!\u0001\u0003hKR\u001cG#A@\t\u000f\u0005Eq\u000c\"\u0001\u0002\u0014\u00059\u0001.Y:OKb$X#A@\t\u000f\u0005]q\u000c\"\u0001\u0002\u001a\u0005!a.\u001a=u)\t\tY\u0002\u0005\u0003\u0002\u001e\u0005\u001dRBAA\u0010\u0015\u0011\t\t#a\t\u0002\t1\u000cgn\u001a\u0006\u0003\u0003K\tAA[1wC&\u0019a(a\u0008\t\u000f\u0005-R\u0005\"\u0001\u0002.\u0005Aq-\u001a;MS:,7\u000fF\u0001i\u0011\u001d\t\t\"\nC\u0001\u0003\'Aq!a\u0006&\t\u0003\t\u0019\u0004F\u0001/\r\u0019\t9$\n\u0001\u0002:\tQ\u0001k\\:ji&|g.\u001a:\u0014\u0007\u0005UB\u0002C\u0006\u0002>\u0005U\"\u0011!Q\u0001\n\u0005}\u0012aB3oG>$WM\u001d\t\u0004\u0011\u0005\u0005\u0013bAA\"\u0005\tA\u0001k\\:ji&|g\u000eC\u0004\u0012\u0003k!\t!a\u0012\u0015\t\u0005%\u00131\n\t\u0004Y\u0006U\u0002\u0002CA\u001f\u0003\u000b\u0002\r!a\u0010\t\u000fE\t)\u0004\"\u0001\u0002PQ\u0011\u0011\u0011\n\u0005\r\u0003\u000f\t)\u00041AA\u0002\u0013\u0005\u00111K\u000b\u0002]!a\u0011qKA\u001b\u0001\u0004\u0005\r\u0011\"\u0001\u0002Z\u000511\r[0%KF$2aQA.\u0011!9\u0015QKA\u0001\u0002\u0004q\u0003\u0002CA0\u0003k\u0001\u000b\u0015\u0002\u0018\u0002\u0007\rD\u0007\u0005C\u0005\u0002d\u0005U\u0002\u0019!C\u0001+\u0005\u0019\u0001o\\:\t\u0015\u0005\u001d\u0014Q\u0007a\u0001\n\u0003\tI\'A\u0004q_N|F%Z9\u0015\u0007\r\u000bY\u0007\u0003\u0005H\u0003K\n\t\u00111\u0001\u0017\u0011!\ty\'!\u000e!B\u00131\u0012\u0001\u00029pg\u0002B\u0011\"a\u001d\u00026\u0001\u0007I\u0011A\u000b\u0002\u000b\rd\u0017N\\3\t\u0015\u0005]\u0014Q\u0007a\u0001\n\u0003\tI(A\u0005dY&tWm\u0018\u0013fcR\u00191)a\u001f\t\u0011\u001d\u000b)(!AA\u0002YA\u0001\"a \u00026\u0001\u0006KAF\u0001\u0007G2Lg.\u001a\u0011\t\u0013\u0005\r\u0015Q\u0007a\u0001\n\u0003)\u0012\u0001B2d_2D!\"a\"\u00026\u0001\u0007I\u0011AAE\u0003!\u00197m\u001c7`I\u0015\u000cHcA\"\u0002\u000c\"Aq)!\"\u0002\u0002\u0003\u0007a\u0003\u0003\u0005\u0002\u0010\u0006U\u0002\u0015)\u0003\u0017\u0003\u0015\u00197m\u001c7!\u0011%\t\u0019*!\u000eA\u0002\u0013\u0005Q#\u0001\u0004uC\nLgn\u0019\u0005\u000b\u0003/\u000b)\u00041A\u0005\u0002\u0005e\u0015A\u0003;bE&t7m\u0018\u0013fcR\u00191)a\'\t\u0011\u001d\u000b)*!AA\u0002YA\u0001\"a(\u00026\u0001\u0006KAF\u0001\u0008i\u0006\u0014\u0017N\\2!\u0011!\t9\"!\u000e\u0005\u0002\u0005MraBASK!\u0005\u0011qU\u0001\u0010%\u0016d\u0017\r_3e!>\u001c\u0018\u000e^5p]B\u0019A.!+\u0007\u000f\u0005-V\u0005#\u0001\u0002.\ny!+\u001a7bq\u0016$\u0007k\\:ji&|gn\u0005\u0003\u0002*\u0006}\u0002bB\t\u0002*\u0012\u0005\u0011\u0011\u0017\u000b\u0003\u0003OC\u0001\"!.\u0002*\u0012\u0005\u0011qW\u0001\u000bG\",7m[%oaV$H#B\"\u0002:\u0006m\u0006B\u00020\u00024\u0002\u0007a\u0003C\u0004\u0002>\u0006M\u0006\u0019\u0001\u000c\u0002\r\r|G.^7o\u000f\u001d\t\t-\nE\u0001\u0003\u0007\u000c\u0011CU3mCb,G\rU8tSRLwN\\3s!\ra\u0017Q\u0019\u0004\u0008\u0003\u000f,\u0003\u0012AAe\u0005E\u0011V\r\\1yK\u0012\u0004vn]5uS>tWM]\n\u0005\u0003\u000b\u000cI\u0005C\u0004\u0012\u0003\u000b$\t!!4\u0015\u0005\u0005\rwaBAiK!\u0005\u00111[\u0001\r\u001d>\u0004vn]5uS>tWM\u001d\t\u0004Y\u0006UgaBAlK!\u0005\u0011\u0011\u001c\u0002\r\u001d>\u0004vn]5uS>tWM]\n\u0005\u0003+\u000cI\u0005C\u0004\u0012\u0003+$\t!!8\u0015\u0005\u0005M\u0007\u0002CA\u000c\u0003+$\t%a\r\t\u000f\u0005\u001dQ\u0005\"\u0001\u0002T!1\u00111M\u0013\u0005\u0002UAq!a:&\t\u0003\tI/A\u0006sKB|\'\u000f^#se>\u0014HcB\"\u0002l\u00065\u0018\u0011\u001f\u0005\u0008\u0003G\n)\u000f1\u0001\u0017\u0011\u001d\ty/!:A\u0002e\n1!\\:h\u0011)\t\u00190!:\u0011\u0002\u0003\u0007\u0011Q_\u0001\u0004_V$\u0008\u0003BA|\u0003wl!!!?\u000b\u0007\r\t\u0019#\u0003\u0003\u0002~\u0006e(a\u0003)sS:$8\u000b\u001e:fC6DqA!\u0001&\t\u0013\u0011\u0019!\u0001\u0004ta\u0006\u001cWm\u001d\u000b\u0004s\t\u0015\u0001b\u0002B\u0004\u0003\u007f\u0004\rAF\u0001\u0002]\"9!1B\u0013\u0005\u0002\t5\u0011A\u0002:fa>\u0014H\u000fF\u0004D\u0005\u001f\u0011\tBa\u0005\t\u000f\u0005\r$\u0011\u0002a\u0001-!9\u0011q\u001eB\u0005\u0001\u0004I\u0004\u0002CAz\u0005\u0013\u0001\r!!>\t\u000f\t]Q\u0005\"\u0001\u0003\u001a\u0005i!/\u001a9peR<\u0016M\u001d8j]\u001e$ra\u0011B\u000e\u0005;\u0011y\u0002C\u0004\u0002d\tU\u0001\u0019\u0001\u000c\t\u000f\u0005=(Q\u0003a\u0001s!Q\u00111\u001fB\u000b!\u0003\u0005\r!!>\t\u0011\t\rR\u0005)Q\u0005\u0005K\tQB]3tKR4UO\\2uS>t\u0007\u0003B\u0007\u0003(\u0011J1A!\u000b\u0005\u0005%1UO\\2uS>t\u0007\u0007\u0003\u0005\u0003.\u0015\u0002\u000b\u0015\u0002B\u0018\u00035\u0019Gn\\:f\rVt7\r^5p]B!QBa\nD\u0011!\u0011\u0019$\nQ!\n\u0005%\u0013A\u00039pg&$\u0018n\u001c8fe\"9!qG\u0013\u0005\u0002\te\u0012!C<ji\"\u0014Vm]3u)\ra\'1\u0008\u0005\t\u0005{\u0011)\u00041\u0001\u0003&\u0005\ta\rC\u0004\u0003B\u0015\"\tAa\u0011\u0002\u0013]LG\u000f[\"m_N,Gc\u00017\u0003F!A!Q\u0008B \u0001\u0004\u0011y\u0003C\u0004\u0003J\u0015\"\tAa\u0013\u0002\u001f]LG\u000f\u001b#fg\u000e\u0014\u0018\u000e\u001d;j_:$2\u0001\u001cB\'\u0011\u001d\u0011yEa\u0012A\u0002e\nA\u0001^3yi\"9!1K\u0013\u0005\u0002\tU\u0013aD<ji\"\u0004vn]5uS>t\u0017N\\4\u0015\u00071\u00149\u0006C\u0004\u0003Z\tE\u0003\u0019A@\u0002\u0005=t\u0007b\u0002B*K\u0011\u0005!Q\u000c\u000b\u0004Y\n}\u0003\u0002CA2\u00057\u0002\r!!\u0013\t\u000f\t\rT\u0005\"\u0001\u0003f\u0005)1\r\\8tKR\t1\t\u0003\u0004\u0003j\u0015\"\tAM\u0001\u0006e\u0016\u001cX\r\u001e\u0005\n\u0005[*\u0013\u0013!C\u0001\u0005_\nQC]3q_J$XI\u001d:pe\u0012\"WMZ1vYR$3\'\u0006\u0002\u0003r)\"\u0011Q\u001fB:W\t\u0011)\u0008\u0005\u0003\u0003x\t\u0005UB\u0001B=\u0015\u0011\u0011YH! \u0002\u0013Ut7\r[3dW\u0016$\'b\u0001B@\t\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\t\r%\u0011\u0010\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007\"\u0003BDKE\u0005I\u0011\u0001B8\u0003]\u0011X\r]8si^\u000b\'O\\5oO\u0012\"WMZ1vYR$3\u0007C\u0004\u0003\u000c\u0006\u0002\rA!$\u0002\u0011%$XM]1cY\u0016\u0004B\u0001\u000bBH]%\u0019!\u0011S\u0017\u0003\u0011%#XM]1cY\u0016DqA!&\n\t\u0003\u00119*\u0001\u0005ge>l7\t[1s)\r!#\u0011\u0014\u0005\u0008\u00057\u0013\u0019\n1\u0001/\u0003\u0005\u0019\u0007b\u0002BP\u0013\u0011\u0005!\u0011U\u0001\nMJ|Wn\u00115beN$2\u0001\nBR\u0011!\u0011)K!(A\u0002\t\u001d\u0016!B2iCJ\u001c\u0008\u0003B\u0007\u0003*:J1Aa+\u0005\u0005\u0015\t%O]1z\u0011\u001d\u0011y+\u0003C\u0001\u0005c\u000b!B\u001a:p[N#(/\u001b8h)\r!#1\u0017\u0005\u0008\u0005k\u0013i\u000b1\u0001:\u0003\u0005\u0019\u0008b\u0002B]\u0013\u0011\u0005!1X\u0001\tMJ|WNR5mKR!!Q\u0018Be)\rq\"q\u0018\u0005\t\u0005\u0003\u00149\u000cq\u0001\u0003D\u0006)1m\u001c3fGB\u0019\u0001B!2\n\u0007\t\u001d\'AA\u0003D_\u0012,7\rC\u0004\u0003L\n]\u0006\u0019A\u001d\u0002\t9\u000cW.\u001a\u0005\u0008\u0005sKA\u0011\u0001Bh)\u0015q\"\u0011\u001bBj\u0011\u001d\u0011YM!4A\u0002eBqA!6\u0003N\u0002\u0007\u0011(A\u0002f]\u000eDqA!/\n\t\u0003\u0011I\u000e\u0006\u0003\u0003\\\n}Gc\u0001\u0010\u0003^\"A!\u0011\u0019Bl\u0001\u0008\u0011\u0019\r\u0003\u0005\u0003b\n]\u0007\u0019\u0001Br\u0003\r)(/\u001b\t\u0005\u0005K\u0014Y/\u0004\u0002\u0003h*!!\u0011^A\u0012\u0003\rqW\r^\u0005\u0005\u0005[\u00149OA\u0002V%&CqA!/\n\t\u0003\u0011\t\u0010F\u0003\u001f\u0005g\u0014)\u0010\u0003\u0005\u0003b\n=\u0008\u0019\u0001Br\u0011\u001d\u0011)Na<A\u0002eBqA!/\n\t\u0003\u0011I\u0010\u0006\u0003\u0003|\n}Hc\u0001\u0010\u0003~\"A!\u0011\u0019B|\u0001\u0008\u0011\u0019\r\u0003\u0005\u0004\u0002\t]\u0008\u0019AB\u0002\u0003\u00111\u0017\u000e\\3\u0011\t\u0005]8QA\u0005\u0005\u0007\u000f\tIP\u0001\u0003GS2,\u0007b\u0002B]\u0013\u0011\u000511\u0002\u000b\u0006=\r51q\u0002\u0005\t\u0007\u0003\u0019I\u00011\u0001\u0004\u0004!9!Q[B\u0005\u0001\u0004I\u0004b\u0002B]\u0013\u0011\u000511\u0003\u000b\u0008=\rU1qCB\r\u0011!\u0019\ta!\u0005A\u0002\r\r\u0001b\u0002Bk\u0007#\u0001\r!\u000f\u0005\u0008\u00077\u0019\t\u00021\u0001\u0017\u0003)\u0011WO\u001a4feNK\'0\u001a\u0005\u0008\u0005sKA\u0011AB\u0010)\u0019\u0019\tc!\n\u0004(Q\u0019ada\t\t\u0011\t\u00057Q\u0004a\u0002\u0005\u0007D\u0001b!\u0001\u0004\u001e\u0001\u000711\u0001\u0005\u0008\u00077\u0019i\u00021\u0001\u0017\u0011\u001d\u0019Y#\u0003C\u0001\u0007[\t\u0011B\u001a:p[\nKH/Z:\u0015\t\r=21\u0007\u000b\u0004I\rE\u0002\u0002\u0003Ba\u0007S\u0001\u001dAa1\t\u0011\rU2\u0011\u0006a\u0001\u0007o\tQAY=uKN\u0004R!\u0004BU\u0007s\u00012!DB\u001e\u0013\r\u0019i\u0004\u0002\u0002\u0005\u0005f$X\rC\u0004\u0004,%!\ta!\u0011\u0015\u000b\u0011\u001a\u0019e!\u0012\t\u0011\rU2q\u0008a\u0001\u0007oAqA!6\u0004@\u0001\u0007\u0011\u0008C\u0004\u0004J%!\taa\u0013\u0002\u0019\u0019\u0014x.\u001c*bo\nKH/Z:\u0015\u0007\u0011\u001ai\u0005\u0003\u0005\u00046\r\u001d\u0003\u0019AB\u001c\u0011\u001d\u0019\t&\u0003C\u0001\u0007\'\nqA\u001a:p[V\u0013\u0016\n\u0006\u0003\u0004V\reCc\u0001\u0010\u0004X!A!\u0011YB(\u0001\u0008\u0011\u0019\r\u0003\u0005\u0003b\u000e=\u0003\u0019\u0001Br\u0011\u001d\u0019i&\u0003C\u0001\u0007?\nqA\u001a:p[V\u0013F\nF\u0003\u001f\u0007C\u001a\u0019\u0007C\u0004\u00036\u000em\u0003\u0019A\u001d\t\u000f\tU71\u000ca\u0001s!91QL\u0005\u0005\u0002\r\u001dD\u0003BB5\u0007[\"2AHB6\u0011!\u0011\tm!\u001aA\u0004\t\r\u0007b\u0002B[\u0007K\u0002\r!\u000f\u0005\u0008\u0007;JA\u0011AB9)\u0015q21OB?\u0011!\u0019)ha\u001cA\u0002\r]\u0014aA;sYB!!Q]B=\u0013\u0011\u0019YHa:\u0003\u0007U\u0013F\nC\u0004\u0003V\u000e=\u0004\u0019A\u001d\t\u000f\ru\u0013\u0002\"\u0001\u0004\u0002R!11QBD)\rq2Q\u0011\u0005\t\u0005\u0003\u001cy\u0008q\u0001\u0003D\"A1QOB@\u0001\u0004\u00199\u0008C\u0004\u0004\u000c&!\ta!$\u0002)\r\u0014X-\u0019;f\u0005V4g-\u001a:fIN{WO]2f))\u0019yia%\u0004\u001e\u000e}5\u0011\u0015\u000b\u0004=\rE\u0005\u0002\u0003Ba\u0007\u0013\u0003\u001dAa1\t\u0011\rU5\u0011\u0012a\u0001\u0007/\u000b1\"\u001b8qkR\u001cFO]3b[B!\u0011q_BM\u0013\u0011\u0019Y*!?\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\n\u00077\u0019I\t%AA\u0002YA!B!\u001b\u0004\nB\u0005\t\u0019\u0001B\u0013\u0011)\u0011\u0019g!#\u0011\u0002\u0003\u0007!q\u0006\u0005\u0008\u0007KKA\u0011ABT\u0003=1\'o\\7J]B,Ho\u0015;sK\u0006lG#\u0002\u0010\u0004*\u000e5\u0006\u0002CBV\u0007G\u0003\raa&\u0002\u0005%\u001c\u0008b\u0002Bk\u0007G\u0003\r!\u000f\u0005\u0008\u0007KKA\u0011ABY)\u0011\u0019\u0019la.\u0015\u0007y\u0019)\u000c\u0003\u0005\u0003B\u000e=\u00069\u0001Bb\u0011!\u0019Yka,A\u0002\r]\u0005\"CB^\u0013E\u0005I\u0011AB_\u0003y\u0019\'/Z1uK\n+hMZ3sK\u0012\u001cv.\u001e:dK\u0012\"WMZ1vYR$#\'\u0006\u0002\u0004@*\u001aaCa\u001d\t\u0013\r\r\u0017\"%A\u0005\u0002\r\u0015\u0017AH2sK\u0006$XMQ;gM\u0016\u0014X\rZ*pkJ\u001cW\r\n3fM\u0006,H\u000e\u001e\u00134+\t\u00199M\u000b\u0003\u0003&\tM\u0004\"CBf\u0013E\u0005I\u0011ABg\u0003y\u0019\'/Z1uK\n+hMZ3sK\u0012\u001cv.\u001e:dK\u0012\"WMZ1vYR$C\'\u0006\u0002\u0004P*\"!q\u0006B:\u0001"
.end annotation


# instance fields
.field private volatile NoPositioner$module:Lscala/io/Source$NoPositioner$;

.field private volatile RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

.field private volatile RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

.field private closeFunction:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private descr:Ljava/lang/String;

.field private nerrors:I

.field private nwarnings:I

.field private positioner:Lscala/io/Source$Positioner;

.field private resetFunction:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    const-string v0, ""

    .line 197
    iput-object v0, p0, Lscala/io/Source;->descr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lscala/io/Source;->nerrors:I

    .line 199
    iput v0, p0, Lscala/io/Source;->nwarnings:I

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lscala/io/Source;->resetFunction:Lscala/Function0;

    .line 330
    iput-object v0, p0, Lscala/io/Source;->closeFunction:Lscala/Function0;

    .line 331
    invoke-virtual {p0}, Lscala/io/Source;->RelaxedPositioner()Lscala/io/Source$RelaxedPositioner$;

    move-result-object v0

    iput-object v0, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    return-void
.end method

.method public static DefaultBufSize()I
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0}, Lscala/io/Source$;->DefaultBufSize()I

    move-result v0

    return v0
.end method

.method private NoPositioner$lzycompute()Lscala/io/Source$NoPositioner$;
    .locals 1

    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/io/Source;->NoPositioner$module:Lscala/io/Source$NoPositioner$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/io/Source$NoPositioner$;

    invoke-direct {v0, p0}, Lscala/io/Source$NoPositioner$;-><init>(Lscala/io/Source;)V

    iput-object v0, p0, Lscala/io/Source;->NoPositioner$module:Lscala/io/Source$NoPositioner$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Source;->NoPositioner$module:Lscala/io/Source$NoPositioner$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private RelaxedPosition$lzycompute()Lscala/io/Source$RelaxedPosition$;
    .locals 1

    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/io/Source;->RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/io/Source$RelaxedPosition$;

    invoke-direct {v0, p0}, Lscala/io/Source$RelaxedPosition$;-><init>(Lscala/io/Source;)V

    iput-object v0, p0, Lscala/io/Source;->RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Source;->RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private RelaxedPositioner$lzycompute()Lscala/io/Source$RelaxedPositioner$;
    .locals 1

    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/io/Source;->RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/io/Source$RelaxedPositioner$;

    invoke-direct {v0, p0}, Lscala/io/Source$RelaxedPositioner$;-><init>(Lscala/io/Source;)V

    iput-object v0, p0, Lscala/io/Source;->RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Source;->RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/io/Codec;",
            ")",
            "Lscala/io/BufferedSource;"
        }
    .end annotation

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static createBufferedSource$default$2()I
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0}, Lscala/io/Source$;->createBufferedSource$default$2()I

    move-result v0

    return v0
.end method

.method public static createBufferedSource$default$3()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0}, Lscala/io/Source$;->createBufferedSource$default$3()Lscala/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static createBufferedSource$default$4()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0}, Lscala/io/Source$;->createBufferedSource$default$4()Lscala/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static fromBytes([BLjava/lang/String;)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromBytes([BLjava/lang/String;)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([BLscala/io/Codec;)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromBytes([BLscala/io/Codec;)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromChar(C)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0}, Lscala/io/Source$;->fromChar(C)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromChars([C)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0}, Lscala/io/Source$;->fromChars([C)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/io/File;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/io/File;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/io/File;Ljava/lang/String;I)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;Ljava/lang/String;I)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/net/URI;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/net/URI;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromFile(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/io/Source;"
        }
    .end annotation

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0}, Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawBytes([B)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0}, Lscala/io/Source$;->fromRawBytes([B)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lscala/io/Source;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0}, Lscala/io/Source$;->fromString(Ljava/lang/String;)Lscala/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static fromURI(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromURI(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromURL(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromURL(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromURL(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromURL(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromURL(Ljava/net/URL;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromURL(Ljava/net/URL;Ljava/lang/String;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static fromURL(Ljava/net/URL;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0, p0, p1}, Lscala/io/Source$;->fromURL(Ljava/net/URL;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method private lineNum(I)Ljava/lang/String;
    .locals 2

    .line 201
    invoke-virtual {p0}, Lscala/io/Source;->getLines()Lscala/collection/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p1, v1}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/Iterator;->mkString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private spaces(I)Ljava/lang/String;
    .locals 2

    .line 302
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    new-instance v1, Lscala/io/Source$$anonfun$spaces$1;

    invoke-direct {v1, p0}, Lscala/io/Source$$anonfun$spaces$1;-><init>(Lscala/io/Source;)V

    invoke-virtual {v0, p1, v1}, Lscala/collection/immutable/List$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->mkString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static stdin()Lscala/io/BufferedSource;
    .locals 1

    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    invoke-virtual {v0}, Lscala/io/Source$;->stdin()Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
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
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 190
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
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/Function0;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public NoPositioner()Lscala/io/Source$NoPositioner$;
    .locals 1

    .line 281
    iget-object v0, p0, Lscala/io/Source;->NoPositioner$module:Lscala/io/Source$NoPositioner$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/Source;->NoPositioner$lzycompute()Lscala/io/Source$NoPositioner$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/io/Source;->NoPositioner$module:Lscala/io/Source$NoPositioner$;

    :goto_0
    return-object v0
.end method

.method public RelaxedPosition()Lscala/io/Source$RelaxedPosition$;
    .locals 1

    .line 277
    iget-object v0, p0, Lscala/io/Source;->RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/Source;->RelaxedPosition$lzycompute()Lscala/io/Source$RelaxedPosition$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/io/Source;->RelaxedPosition$module:Lscala/io/Source$RelaxedPosition$;

    :goto_0
    return-object v0
.end method

.method public RelaxedPositioner()Lscala/io/Source$RelaxedPositioner$;
    .locals 1

    .line 280
    iget-object v0, p0, Lscala/io/Source;->RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/Source;->RelaxedPositioner$lzycompute()Lscala/io/Source$RelaxedPositioner$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/io/Source;->RelaxedPositioner$module:Lscala/io/Source$RelaxedPositioner$;

    :goto_0
    return-object v0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

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
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public ch()C
    .locals 1

    .line 284
    iget-object v0, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    invoke-virtual {v0}, Lscala/io/Source$Positioner;->ch()C

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 357
    iget-object v0, p0, Lscala/io/Source;->closeFunction:Lscala/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    :cond_0
    return-void
.end method

.method public collect(Lscala/PartialFunction;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;

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
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z

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

    .line 190
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

    .line 190
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

    .line 190
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V

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

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->corresponds(Lscala/collection/Iterator;Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public descr()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lscala/io/Source;->descr:Ljava/lang/String;

    return-object v0
.end method

.method public descr_$eq(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lscala/io/Source;->descr:Ljava/lang/String;

    return-void
.end method

.method public drop(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public duplicate()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->exists(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->find(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 190
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
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 190
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
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldRight(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->forall(Lscala/collection/Iterator;Lscala/Function1;)Z

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
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->foreach(Lscala/collection/Iterator;Lscala/Function1;)V

    return-void
.end method

.method public getLines()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Lscala/io/Source$LineIterator;

    invoke-direct {v0, p0}, Lscala/io/Source$LineIterator;-><init>(Lscala/io/Source;)V

    return-object v0
.end method

.method public grouped(I)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lscala/io/Source;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexOf(Lscala/collection/Iterator;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public abstract iter()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public length()I
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nerrors()I
    .locals 1

    .line 198
    iget v0, p0, Lscala/io/Source;->nerrors:I

    return v0
.end method

.method public nerrors_$eq(I)V
    .locals 0

    .line 198
    iput p1, p0, Lscala/io/Source;->nerrors:I

    return-void
.end method

.method public next()C
    .locals 1

    .line 242
    iget-object v0, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    invoke-virtual {v0}, Lscala/io/Source$Positioner;->next()C

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->next()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public nwarnings()I
    .locals 1

    .line 199
    iget v0, p0, Lscala/io/Source;->nwarnings:I

    return v0
.end method

.method public nwarnings_$eq(I)V
    .locals 0

    .line 199
    iput p1, p0, Lscala/io/Source;->nwarnings:I

    return-void
.end method

.method public padTo(ILjava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(ITA1;)",
            "Lscala/collection/Iterator<",
            "TA1;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->padTo(Lscala/collection/Iterator;ILjava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public patch(ILscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/Iterator<",
            "TB;>;I)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public pos()I
    .locals 1

    .line 285
    iget-object v0, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    invoke-virtual {v0}, Lscala/io/Source$Positioner;->pos()I

    move-result v0

    return v0
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

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 190
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
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 190
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
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 190
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

    .line 190
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
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRight(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            "TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public report(ILjava/lang/String;Ljava/io/PrintStream;)V
    .locals 7

    .line 309
    sget-object v0, Lscala/io/Position$;->MODULE$:Lscala/io/Position$;

    invoke-virtual {v0, p1}, Lscala/io/Position$;->line(I)I

    move-result v0

    .line 310
    sget-object v1, Lscala/io/Position$;->MODULE$:Lscala/io/Position$;

    invoke-virtual {v1, p1}, Lscala/io/Position$;->column(I)I

    move-result p1

    .line 312
    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "%s:%d:%d: %s%s%s^"

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/io/Source;->descr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-direct {p0, v0}, Lscala/io/Source;->lineNum(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, v3, v0

    sub-int/2addr p1, v5

    invoke-direct {p0, p1}, Lscala/io/Source;->spaces(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v3, p2

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public reportError(ILjava/lang/String;Ljava/io/PrintStream;)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lscala/io/Source;->nerrors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/io/Source;->nerrors_$eq(I)V

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lscala/io/Source;->report(ILjava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public reportError$default$3()Ljava/io/PrintStream;
    .locals 1

    .line 296
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0}, Lscala/Console$;->err()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public reportWarning(ILjava/lang/String;Ljava/io/PrintStream;)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lscala/io/Source;->nwarnings()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/io/Source;->nwarnings_$eq(I)V

    .line 326
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "warning! "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lscala/io/Source;->report(ILjava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public reportWarning$default$3()Ljava/io/PrintStream;
    .locals 1

    .line 323
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lscala/io/Source;
    .locals 2

    .line 362
    iget-object v0, p0, Lscala/io/Source;->resetFunction:Lscala/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/io/Source;

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Source\'s reset() method was not set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanLeft(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public seq()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public slice(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->slice(Lscala/collection/Iterator;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->sliding(Lscala/collection/Iterator;II)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding$default$2()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->sliding$default$2(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
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

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->take(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
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
            "Ljava/lang/Object;",
            "TCol;>;)TCol;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIterable(Lscala/collection/TraversableOnce;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lscala/io/Source;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "Ljava/lang/Object;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->toSet()Lscala/collection/immutable/Set;

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

    .line 190
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/io/Source;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public withClose(Lscala/Function0;)Lscala/io/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/io/Source;"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lscala/io/Source;->closeFunction:Lscala/Function0;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lscala/io/Source;
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Lscala/io/Source;->descr_$eq(Ljava/lang/String;)V

    return-object p0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public withPositioning(Lscala/io/Source$Positioner;)Lscala/io/Source;
    .locals 0

    .line 351
    iput-object p1, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    return-object p0
.end method

.method public withPositioning(Z)Lscala/io/Source;
    .locals 0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0}, Lscala/io/Source;->RelaxedPositioner()Lscala/io/Source$RelaxedPositioner$;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/io/Source;->NoPositioner()Lscala/io/Source$NoPositioner$;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lscala/io/Source;->positioner:Lscala/io/Source$Positioner;

    return-object p0
.end method

.method public withReset(Lscala/Function0;)Lscala/io/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;)",
            "Lscala/io/Source;"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lscala/io/Source;->resetFunction:Lscala/Function0;

    return-object p0
.end method

.method public zip(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TB;>;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->zip(Lscala/collection/Iterator;Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;TA1;TB1;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB1;>;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->zipAll(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
