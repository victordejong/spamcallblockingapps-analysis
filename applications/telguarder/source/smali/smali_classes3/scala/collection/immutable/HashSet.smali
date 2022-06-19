.class public Lscala/collection/immutable/HashSet;
.super Lscala/collection/AbstractSet;
.source "HashSet.scala"

# interfaces
.implements Lscala/collection/immutable/Set;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/HashSet$HashSet1;,
        Lscala/collection/immutable/HashSet$LeafHashSet;,
        Lscala/collection/immutable/HashSet$HashTrieSet;,
        Lscala/collection/immutable/HashSet$EmptyHashSet$;,
        Lscala/collection/immutable/HashSet$HashSetCollision1;,
        Lscala/collection/immutable/HashSet$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSet<",
        "TA;>;",
        "Lscala/collection/immutable/Set<",
        "TA;>;",
        "Lscala/collection/CustomParallelizable<",
        "TA;",
        "Lscala/collection/parallel/immutable/ParHashSet<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0015mc\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQN+GO\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0015E\u0019r\u0001A\u0006\u001c?\u0019RC\u0007E\u0002\r\u001b=i\u0011\u0001B\u0005\u0003\u001d\u0011\u00111\"\u00112tiJ\u000c7\r^*fiB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u00049uyQ\"\u0001\u0002\n\u0005y\u0011!aA*fiB!\u0001eI\u0008&\u001b\u0005\t#B\u0001\u0012\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001J\u0011\u0003%\u001d+g.\u001a:jGN+G\u000fV3na2\u000cG/\u001a\t\u00039\u0001\u0001B\u0001D\u0014\u0010S%\u0011\u0001\u0006\u0002\u0002\u0008\'\u0016$H*[6f!\ra\u0002a\u0004\t\u0005\u0019-zQ&\u0003\u0002-\t\t!2)^:u_6\u0004\u0016M]1mY\u0016d\u0017N_1cY\u0016\u00042A\u000c\u001a\u0010\u001b\u0005y#BA\u00021\u0015\t\tD!\u0001\u0005qCJ\u000cG\u000e\\3m\u0013\t\u0019tF\u0001\u0006QCJD\u0015m\u001d5TKR\u0004\"!F\u001b\n\u0005Y2!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\"\u0002\u001d\u0001\t\u0003I\u0014A\u0002\u001fj]&$h\u0008F\u0001*\u0011\u0015Y\u0004\u0001\"\u0011=\u0003%\u0019w.\u001c9b]&|g.F\u0001>!\r\u0001c(J\u0005\u0003\u007f\u0005\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\t\u000b\u0005\u0003A\u0011\t\"\u0002\u0007A\u000c\'/F\u0001.\u0011\u0015!\u0005\u0001\"\u0011F\u0003\u0011\u0019\u0018N_3\u0016\u0003\u0019\u0003\"!F$\n\u0005!3!aA%oi\")!\n\u0001C!\u0017\u0006)Q-\u001c9usV\t\u0011\u0006C\u0003N\u0001\u0011\u0005a*\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005y\u0005c\u0001\u0007Q\u001f%\u0011\u0011\u000b\u0002\u0002\t\u0013R,\'/\u0019;pe\")1\u000b\u0001C!)\u00069am\u001c:fC\u000eDWCA+`)\t1\u0016\u000c\u0005\u0002\u0016/&\u0011\u0001L\u0002\u0002\u0005+:LG\u000fC\u0003[%\u0002\u00071,A\u0001g!\u0011)Bl\u00040\n\u0005u3!!\u0003$v]\u000e$\u0018n\u001c82!\t\u0001r\u000cB\u0003a%\n\u00071CA\u0001V\u0011\u0015\u0011\u0007\u0001\"\u0001d\u0003!\u0019wN\u001c;bS:\u001cHC\u00013h!\t)R-\u0003\u0002g\r\t9!i\\8mK\u0006t\u0007\"\u00025b\u0001\u0004y\u0011!A3\t\u000b)\u0004A\u0011I6\u0002\u0011M,(m]3u\u001f\u001a$\"\u0001\u001a7\t\u000b5L\u0007\u0019\u00018\u0002\tQD\u0017\r\u001e\t\u0004\u0019=|\u0011B\u00019\u0005\u0005\u00199UM\\*fi\")!\u000f\u0001C\tg\u0006I1/\u001e2tKR|e\r\r\u000b\u0004IR,\u0008\"B7r\u0001\u0004I\u0003\"\u0002<r\u0001\u00041\u0015!\u00027fm\u0016d\u0007\"\u0002=\u0001\t\u0003J\u0018!\u0002\u0013qYV\u001cHCA\u0015{\u0011\u0015Aw\u000f1\u0001\u0010\u0011\u0015A\u0008\u0001\"\u0011})\u0015ISp`A\u0002\u0011\u0015q8\u00101\u0001\u0010\u0003\u0015)G.Z72\u0011\u0019\t\ta\u001fa\u0001\u001f\u0005)Q\r\\3ne!9\u0011QA>A\u0002\u0005\u001d\u0011!B3mK6\u001c\u0008\u0003B\u000b\u0002\n=I1!a\u0003\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\u0008\u0003\u001f\u0001A\u0011IA\t\u0003\u0015)h.[8o)\rI\u00131\u0003\u0005\u0007[\u00065\u0001\u0019\u00018\t\u000f\u0005]\u0001\u0001\"\u0011\u0002\u001a\u0005I\u0011N\u001c;feN,7\r\u001e\u000b\u0004S\u0005m\u0001BB7\u0002\u0016\u0001\u0007a\u000eC\u0004\u0002 \u0001!\t%!\t\u0002\t\u0011LgM\u001a\u000b\u0004S\u0005\r\u0002BB7\u0002\u001e\u0001\u0007a\u000e\u0003\u0005\u0002(\u0001!\tAAA\u0015\u0003\u0019)h.[8oaQ)\u0011&a\u000b\u0005\"\"9Q.!\nA\u0002\u00055\u0002#BA\u0018\u0003o|ab\u0001\u000f\u00022\u001d9\u00111\u0007\u0002\t\u0002\u0005U\u0012a\u0002%bg\"\u001cV\r\u001e\t\u00049\u0005]bAB\u0001\u0003\u0011\u0003\tIdE\u0003\u00028\u0005mB\u0007\u0005\u0003!\u0003{)\u0013bAA C\t\u0019\u0012*\\7vi\u0006\u0014G.Z*fi\u001a\u000b7\r^8ss\"9\u0001(a\u000e\u0005\u0002\u0005\rCCAA\u001b\u0011!\t9%a\u000e\u0005\u0004\u0005%\u0013\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BA&\u0003;*\"!!\u0014\u0011\u0013\u0001\ny%a\u0015\u0002\\\u0005}\u0013bAA)C\ta1)\u00198Ck&dGM\u0012:p[B!\u0011QKA,\u001b\t\t9$C\u0002\u0002Zy\u0012AaQ8mYB\u0019\u0001#!\u0018\u0005\rI\t)E1\u0001\u0014!\u0011a\u0002!a\u0017\u0008\u0011\u0005\r\u0014q\u0007E\u0005\u0003K\nA\"R7qifD\u0015m\u001d5TKR\u0004B!!\u0016\u0002h\u0019A\u0011\u0011NA\u001c\u0011\u0013\tYG\u0001\u0007F[B$\u0018\u0010S1tQN+Go\u0005\u0003\u0002h\u00055\u0004c\u0001\u000f\u00011!9\u0001(a\u001a\u0005\u0002\u0005EDCAA3\u0011)\t)(a\u001a\u0002\u0002\u0013%\u0011qO\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0002zA!\u00111PAC\u001b\t\tiH\u0003\u0003\u0002\u0000\u0005\u0005\u0015\u0001\u00027b]\u001eT!!a!\u0002\t)\u000cg/Y\u0005\u0005\u0003\u000f\u000biH\u0001\u0004PE*,7\r\u001e\u0005\n\u0003\u0017\u000b9\u0004\"\u0001\u0005\u0003\u001b\u000bQ\"Z7qifLen\u001d;b]\u000e,WCAA7\u0011!\t\t*a\u000e\u0005\n\u0005M\u0015aD7bW\u0016D\u0015m\u001d5Ue&,7+\u001a;\u0016\t\u0005U5\u0011\u001f\u000b\r\u0003/\u001b\u0019pa>\u0004~\u0012\u0005A1\u0001\t\u0007\u0003+\nIja<\u0007\u000f\u0005m\u0015q\u0007\u0001\u0002\u001e\nY\u0001*Y:i)JLWmU3u+\u0011\ty*!*\u0014\t\u0005e\u0015\u0011\u0015\t\u00059\u0001\t\u0019\u000bE\u0002\u0011\u0003K#aAEAM\u0005\u0004\u0019\u0002BCAU\u00033\u0013)\u0019!C\u0005\u000b\u00061!-\u001b;nCBD!\"!,\u0002\u001a\n\u0005\t\u0015!\u0003G\u0003\u001d\u0011\u0017\u000e^7ba\u0002BA\"!\u0002\u0002\u001a\n\u0015\r\u0011\"\u0001\u0005\u0003c+\"!a-\u0011\u000bU\t),!)\n\u0007\u0005]fAA\u0003BeJ\u000c\u0017\u0010C\u0006\u0002<\u0006e%\u0011!Q\u0001\n\u0005M\u0016AB3mK6\u001c\u0008\u0005\u0003\u0006\u0002@\u0006e%Q1A\u0005\n\u0015\u000bQa]5{KBB!\"a1\u0002\u001a\n\u0005\t\u0015!\u0003G\u0003\u0019\u0019\u0018N_31A!9\u0001(!\'\u0005\u0002\u0005\u001dG\u0003CAe\u0003\u0017\u000ci-a4\u0011\r\u0005U\u0013\u0011TAR\u0011\u001d\tI+!2A\u0002\u0019C\u0001\"!\u0002\u0002F\u0002\u0007\u00111\u0017\u0005\u0008\u0003\u007f\u000b)\r1\u0001G\u0011\u0019!\u0015\u0011\u0014C!\u000b\"A\u0011Q[AM\t\u0003\n9.\u0001\u0003hKR\u0004Dc\u00023\u0002Z\u0006u\u0017\u0011\u001d\u0005\t\u00037\u000c\u0019\u000e1\u0001\u0002$\u0006\u00191.Z=\t\u000f\u0005}\u00171\u001ba\u0001\r\u0006!\u0001.Y:i\u0011\u00191\u00181\u001ba\u0001\r\"A\u0011Q]AM\t\u0003\n9/\u0001\u0005va\u0012\u000cG/\u001a31)!\t\t+!;\u0002l\u00065\u0008\u0002CAn\u0003G\u0004\r!a)\t\u000f\u0005}\u00171\u001da\u0001\r\"1a/a9A\u0002\u0019C\u0011\"a\n\u0002\u001a\u0012\u0005#!!=\u0015\r\u0005\u0005\u00161_BH\u0011\u001di\u0017q\u001ea\u0001\u0003k\u0004b!!\u0016\u0002x\u0006\rfACA}\u0003o\t\t#a\u000e\u0002|\nYA*Z1g\u0011\u0006\u001c\u0008nU3u+\u0011\tiPa\u0001\u0014\t\u0005]\u0018q \t\u00059\u0001\u0011\t\u0001E\u0002\u0011\u0005\u0007!aAEA|\u0005\u0004\u0019\u0002b\u0002\u001d\u0002x\u0012\u0005!q\u0001\u000b\u0003\u0005\u0013\u0001b!!\u0016\u0002x\n\u0005\u0001\"CAp\u0003o4\t!a\u000eFS\u0019\t9Pa\u0004\u0003B\u001a9!\u0011CA\u001c\u0001\tM!\u0001\u0003%bg\"\u001cV\r^\u0019\u0016\t\tU!1D\n\u0005\u0005\u001f\u00119\u0002\u0005\u0004\u0002V\u0005](\u0011\u0004\t\u0004!\tmAA\u0002\n\u0003\u0010\t\u00071\u0003C\u0007\u0002\\\n=!Q1A\u0005\u0002\u0005]\"qD\u000b\u0003\u00053A1Ba\t\u0003\u0010\t\u0005\t\u0015!\u0003\u0003\u001a\u0005!1.Z=!\u00111\tyNa\u0004\u0003\u0006\u0004%\t!a\u000eF\u0011)\u0011ICa\u0004\u0003\u0002\u0003\u0006IAR\u0001\u0006Q\u0006\u001c\u0008\u000e\t\u0005\u0008q\t=A\u0011\u0001B\u0017)\u0019\u0011yC!\r\u00034A1\u0011Q\u000bB\u0008\u00053A\u0001\"a7\u0003,\u0001\u0007!\u0011\u0004\u0005\u0008\u0003?\u0014Y\u00031\u0001G\u0011\u0019!%q\u0002C!\u000b\"A\u0011Q\u001bB\u0008\t\u0003\u0012I\u0004F\u0004e\u0005w\u0011iDa\u0010\t\u0011\u0005m\'q\u0007a\u0001\u00053Aq!a8\u00038\u0001\u0007a\t\u0003\u0004w\u0005o\u0001\rA\u0012\u0005\u0008e\n=A\u0011\tB\")\u0015!\'Q\tB%\u0011\u001di\'\u0011\ta\u0001\u0005\u000f\u0002B\u0001\u0008\u0001\u0003\u001a!1aO!\u0011A\u0002\u0019C\u0001\"!:\u0003\u0010\u0011\u0005#Q\n\u000b\t\u0005\u000f\u0012yE!\u0015\u0003T!A\u00111\u001cB&\u0001\u0004\u0011I\u0002C\u0004\u0002`\n-\u0003\u0019\u0001$\t\rY\u0014Y\u00051\u0001G\u0011%\t9Ca\u0004\u0005B\t\u00119\u0006\u0006\u0004\u0003H\te#1\u000c\u0005\u0008[\nU\u0003\u0019\u0001B\u000c\u0011\u00191(Q\u000ba\u0001\r\"I\u0011q\u0005B\u0008\t\u0003\u0012!q\u000c\u000b\u000b\u0005\u000f\u0012\tGa\u0019\u0003f\t-\u0004bB7\u0003^\u0001\u0007!q\t\u0005\u0007m\nu\u0003\u0019\u0001$\t\u0011\t\u001d$Q\u000ca\u0001\u0005S\naAY;gM\u0016\u0014\u0008#B\u000b\u00026\n\u001d\u0003b\u0002B7\u0005;\u0002\rAR\u0001\u0008_\u001a47/\u001a;1\u0011%\u0011\tHa\u0004\u0005B\t\u0011\u0019(\u0001\u0006j]R,\'o]3diB\"\"Ba\u0012\u0003v\t]$\u0011\u0010B>\u0011\u001di\'q\u000ea\u0001\u0005\u000fBaA\u001eB8\u0001\u00041\u0005\u0002\u0003B4\u0005_\u0002\rA!\u001b\t\u000f\t5$q\u000ea\u0001\r\"I!q\u0010B\u0008\t\u0003\u0012!\u0011Q\u0001\u0006I&4g\r\r\u000b\u000b\u0005\u000f\u0012\u0019I!\"\u0003\u0008\n%\u0005bB7\u0003~\u0001\u0007!q\t\u0005\u0007m\nu\u0004\u0019\u0001$\t\u0011\t\u001d$Q\u0010a\u0001\u0005SBqA!\u001c\u0003~\u0001\u0007a\t\u0003\u0005\u0003\u000e\n=A\u0011\tBH\u0003!\u0011X-\\8wK\u0012\u0004D\u0003\u0003B$\u0005#\u0013\u0019J!&\t\u0011\u0005m\'1\u0012a\u0001\u00053Aq!a8\u0003\u000c\u0002\u0007a\t\u0003\u0004w\u0005\u0017\u0003\rA\u0012\u0005\t\u00053\u0013y\u0001\"\u0015\u0003\u001c\u00069a-\u001b7uKJ\u0004D\u0003\u0004B$\u0005;\u0013\u0019Ka*\u0003*\n-\u0006\u0002\u0003BP\u0005/\u0003\rA!)\u0002\u0003A\u0004R!\u0006/\u0003\u001a\u0011DqA!*\u0003\u0018\u0002\u0007A-\u0001\u0004oK\u001e\u000cG/\u001a\u0005\u0007m\n]\u0005\u0019\u0001$\t\u0011\t\u001d$q\u0013a\u0001\u0005SBqA!\u001c\u0003\u0018\u0002\u0007a\tC\u0004N\u0005\u001f!\tEa,\u0016\u0005\tE\u0006\u0003\u0002\u0007Q\u00053Aqa\u0015B\u0008\t\u0003\u0012),\u0006\u0003\u00038\n}Fc\u0001,\u0003:\"9!La-A\u0002\tm\u0006CB\u000b]\u00053\u0011i\u000cE\u0002\u0011\u0005\u007f#a\u0001\u0019BZ\u0005\u0004\u0019b\u0001\u0003Bb\u0003o\u0001!A!2\u0003#!\u000b7\u000f[*fi\u000e{G\u000e\\5tS>t\u0017\'\u0006\u0003\u0003H\n57\u0003\u0002Ba\u0005\u0013\u0004b!!\u0016\u0002x\n-\u0007c\u0001\t\u0003N\u00121!C!1C\u0002MAA\"a8\u0003B\n\u0015\r\u0011\"\u0001\u00028\u0015C!B!\u000b\u0003B\n\u0005\t\u0015!\u0003G\u0011-\u0011)N!1\u0003\u0006\u0004%\tAa6\u0002\u0005-\u001cXC\u0001Bm!\u0015a\"1\u001cBf\u0013\r\u0011iN\u0001\u0002\u0008\u0019&\u001cHoU3u\u0011-\u0011\tO!1\u0003\u0002\u0003\u0006IA!7\u0002\u0007-\u001c\u0008\u0005C\u00049\u0005\u0003$\tA!:\u0015\r\t\u001d(\u0011\u001eBv!\u0019\t)F!1\u0003L\"9\u0011q\u001cBr\u0001\u00041\u0005\u0002\u0003Bk\u0005G\u0004\rA!7\t\r\u0011\u0013\t\r\"\u0011F\u0011!\t)N!1\u0005B\tEHc\u00023\u0003t\nU(q\u001f\u0005\t\u00037\u0014y\u000f1\u0001\u0003L\"9\u0011q\u001cBx\u0001\u00041\u0005B\u0002<\u0003p\u0002\u0007a\tC\u0004s\u0005\u0003$\tEa?\u0015\u000b\u0011\u0014ip!\u0001\t\u000f5\u0014I\u00101\u0001\u0003\u0000B!A\u0004\u0001Bf\u0011\u00191(\u0011 a\u0001\r\"A\u0011Q\u001dBa\t\u0003\u001a)\u0001\u0006\u0005\u0003\u0000\u000e\u001d1\u0011BB\u0006\u0011!\tYna\u0001A\u0002\t-\u0007bBAp\u0007\u0007\u0001\rA\u0012\u0005\u0007m\u000e\r\u0001\u0019\u0001$\t\u0011\u0005\u001d\"\u0011\u0019C!\u0007\u001f!bAa@\u0004\u0012\rM\u0001bB7\u0004\u000e\u0001\u0007!\u0011\u001a\u0005\u0007m\u000e5\u0001\u0019\u0001$\t\u0011\u0005\u001d\"\u0011\u0019C!\u0007/!\"Ba@\u0004\u001a\rm1QDB\u0011\u0011\u001di7Q\u0003a\u0001\u0005\u007fDaA^B\u000b\u0001\u00041\u0005\u0002\u0003B4\u0007+\u0001\raa\u0008\u0011\u000bU\t)La@\t\u000f\t54Q\u0003a\u0001\r\"I!\u0011\u000fBa\t\u0003\u00121Q\u0005\u000b\u000b\u0005\u007f\u001c9c!\u000b\u0004,\r5\u0002bB7\u0004$\u0001\u0007!q \u0005\u0007m\u000e\r\u0002\u0019\u0001$\t\u0011\t\u001d41\u0005a\u0001\u0007?AqA!\u001c\u0004$\u0001\u0007a\tC\u0005\u0003\u0000\t\u0005G\u0011\t\u0002\u00042QQ!q`B\u001a\u0007k\u00199d!\u000f\t\u000f5\u001cy\u00031\u0001\u0003\u0000\"1aoa\u000cA\u0002\u0019C\u0001Ba\u001a\u00040\u0001\u00071q\u0004\u0005\u0008\u0005[\u001ay\u00031\u0001G\u0011!\u0011iI!1\u0005B\ruB\u0003\u0003B\u0000\u0007\u007f\u0019\tea\u0011\t\u0011\u0005m71\u0008a\u0001\u0005\u0017Dq!a8\u0004<\u0001\u0007a\t\u0003\u0004w\u0007w\u0001\rA\u0012\u0005\t\u00053\u0013\t\r\"\u0015\u0004HQa!q`B%\u0007\u001b\u001aye!\u0015\u0004T!A!qTB#\u0001\u0004\u0019Y\u0005E\u0003\u00169\n-G\rC\u0004\u0003&\u000e\u0015\u0003\u0019\u00013\t\rY\u001c)\u00051\u0001G\u0011!\u00119g!\u0012A\u0002\r}\u0001b\u0002B7\u0007\u000b\u0002\rA\u0012\u0005\u0008\u001b\n\u0005G\u0011IB,+\t\u0019I\u0006\u0005\u0003\r!\n-\u0007bB*\u0003B\u0012\u00053QL\u000b\u0005\u0007?\u001a9\u0007F\u0002W\u0007CBqAWB.\u0001\u0004\u0019\u0019\u0007\u0005\u0004\u00169\n-7Q\r\t\u0004!\r\u001dDA\u00021\u0004\\\t\u00071\u0003\u0003\u0005\u0004l\t\u0005G\u0011BB7\u0003-9(/\u001b;f\u001f\nTWm\u0019;\u0015\u0007Y\u001by\u0007\u0003\u0005\u0004r\r%\u0004\u0019AB:\u0003\ryW\u000f\u001e\t\u0005\u0007k\u001aY(\u0004\u0002\u0004x)!1\u0011PAA\u0003\tIw.\u0003\u0003\u0004~\r]$AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6D\u0001b!!\u0003B\u0012%11Q\u0001\u000be\u0016\u000cGm\u00142kK\u000e$Hc\u0001,\u0004\u0006\"A1qQB@\u0001\u0004\u0019I)\u0001\u0002j]B!1QOBF\u0013\u0011\u0019iia\u001e\u0003#=\u0013\'.Z2u\u0013:\u0004X\u000f^*ue\u0016\u000cW\u000e\u0003\u0004w\u0003_\u0004\rA\u0012\u0005\n\u0003O\tI\n\"\u0011\u0003\u0007\'#\"\"!)\u0004\u0016\u000e]5\u0011TBN\u0011\u001di7\u0011\u0013a\u0001\u0003CCaA^BI\u0001\u00041\u0005\u0002\u0003B4\u0007#\u0003\r!a-\t\u000f\t54\u0011\u0013a\u0001\r\"I!\u0011OAM\t\u0003\u00121q\u0014\u000b\u000b\u0003C\u001b\tka)\u0004&\u000e\u001d\u0006bB7\u0004\u001e\u0002\u0007\u0011\u0011\u0015\u0005\u0007m\u000eu\u0005\u0019\u0001$\t\u0011\t\u001d4Q\u0014a\u0001\u0003gCqA!\u001c\u0004\u001e\u0002\u0007a\tC\u0005\u0003\u0000\u0005eE\u0011\t\u0002\u0004,RQ\u0011\u0011UBW\u0007_\u001b\tla-\t\u000f5\u001cI\u000b1\u0001\u0002\"\"1ao!+A\u0002\u0019C\u0001Ba\u001a\u0004*\u0002\u0007\u00111\u0017\u0005\u0008\u0005[\u001aI\u000b1\u0001G\u0011!\u0011i)!\'\u0005B\r]F\u0003CAQ\u0007s\u001bYl!0\t\u0011\u0005m7Q\u0017a\u0001\u0003GCq!a8\u00046\u0002\u0007a\t\u0003\u0004w\u0007k\u0003\rA\u0012\u0005\u0008e\u0006eE\u0011IBa)\u0015!71YBc\u0011\u001di7q\u0018a\u0001\u0003CCaA^B`\u0001\u00041\u0005\u0002\u0003BM\u00033#\tf!3\u0015\u0019\u0005\u000561ZBh\u0007#\u001c\u0019n!6\t\u0011\t}5q\u0019a\u0001\u0007\u001b\u0004R!\u0006/\u0002$\u0012DqA!*\u0004H\u0002\u0007A\r\u0003\u0004w\u0007\u000f\u0004\rA\u0012\u0005\t\u0005O\u001a9\r1\u0001\u00024\"9!QNBd\u0001\u00041\u0005bB\'\u0002\u001a\u0012\u00053\u0011\\\u000b\u0003\u00077\u0004R\u0001HBo\u0003GK1aa8\u0003\u00051!&/[3Ji\u0016\u0014\u0018\r^8s\u0011\u001d\u0019\u0016\u0011\u0014C!\u0007G,Ba!:\u0004nR\u0019aka:\t\u000fi\u001b\t\u000f1\u0001\u0004jB1Q\u0003XAR\u0007W\u00042\u0001EBw\t\u0019\u00017\u0011\u001db\u0001\'A\u0019\u0001c!=\u0005\rI\tyI1\u0001\u0014\u0011\u001d\u0019)0a$A\u0002\u0019\u000bQ\u0001[1tQBB\u0001b!?\u0002\u0010\u0002\u000711`\u0001\u0006K2,W\u000e\r\t\u00059\u0001\u0019y\u000fC\u0004\u0004\u0000\u0006=\u0005\u0019\u0001$\u0002\u000b!\u000c7\u000f[\u0019\t\u000fy\u000cy\t1\u0001\u0004|\"1a/a$A\u0002\u0019C\u0001\u0002b\u0002\u00028\u0011%A\u0011B\u0001\u000bEV4g-\u001a:TSj,Gc\u0001$\u0005\u000c!1A\t\"\u0002A\u0002\u0019CC\u0001\"\u0002\u0005\u0010A\u0019Q\u0003\"\u0005\n\u0007\u0011MaA\u0001\u0004j]2Lg.\u001a\u0005\t\t/\t9\u0004\"\u0003\u0005\u001a\u0005Ya.\u001e7m)>,U\u000e\u001d;z+\u0011!Y\u0002\"\t\u0015\t\u0011uA1\u0005\t\u00059\u0001!y\u0002E\u0002\u0011\tC!aA\u0005C\u000b\u0005\u0004\u0019\u0002\u0002\u0003C\u0013\t+\u0001\r\u0001\"\u0008\u0002\u0003MDC\u0001\"\u0006\u0005\u0010!AA1FA\u001c\t\u0013!i#\u0001\u0005lK\u0016\u0004()\u001b;t)\u00151Eq\u0006C\u0019\u0011\u001d\tI\u000b\"\u000bA\u0002\u0019Cq\u0001b\r\u0005*\u0001\u0007a)\u0001\u0003lK\u0016\u0004\u0008\"\u0003C\u001c\u0003o\u0001K\u0011\u0002C\u001d\u0003=)hn]5h]\u0016$7i\\7qCJ,G#\u00023\u0005<\u0011}\u0002b\u0002C\u001f\tk\u0001\rAR\u0001\u0002S\"9A\u0011\tC\u001b\u0001\u00041\u0015!\u00016)\t\u0011UBq\u0002\u0004\u0008\t\u000f\n9\u0004\u0002C%\u0005I\u0019VM]5bY&T\u0018\r^5p]B\u0013x\u000e_=\u0016\r\u0011-CQ\u000cC?\'\u0015!)\u0005\"\u00145!\r)BqJ\u0005\u0004\t#2!AB!osJ+g\rC\u0006\u0005V\u0011\u0015#\u00111A\u0005\n\u0011]\u0013\u0001B8sS\u001e,\"\u0001\"\u0017\u0011\tq\u0001A1\u000c\t\u0004!\u0011uCA\u0002\n\u0005F\t\u00071\u0003C\u0006\u0005b\u0011\u0015#\u00111A\u0005\n\u0011\r\u0014\u0001C8sS\u001e|F%Z9\u0015\u0007Y#)\u0007\u0003\u0006\u0005h\u0011}\u0013\u0011!a\u0001\t3\n1\u0001\u001f\u00132\u0011-!Y\u0007\"\u0012\u0003\u0002\u0003\u0006K\u0001\"\u0017\u0002\u000b=\u0014\u0018n\u001a\u0011)\t\u0011%Dq\u000e\t\u0004+\u0011E\u0014b\u0001C:\r\tIAO]1og&,g\u000e\u001e\u0005\u0008q\u0011\u0015C\u0011\u0001C<)\u0011!I\u0008\"!\u0011\u0011\u0005UCQ\tC.\tw\u00022\u0001\u0005C?\t\u001d!y\u0008\"\u0012C\u0002M\u0011\u0011A\u0011\u0005\t\t+\")\u00081\u0001\u0005Z!A11\u000eC#\t\u0013!)\tF\u0002W\t\u000fC\u0001b!\u001d\u0005\u0004\u0002\u000711\u000f\u0005\t\u0007\u0003#)\u0005\"\u0003\u0005\u000cR\u0019a\u000b\"$\t\u0011\r\u001dE\u0011\u0012a\u0001\u0007\u0013C\u0001\"!\u001e\u0005F\u0011%A\u0011\u0013\u000b\u0003\t\u001bB\u0003\u0002\"\u0012\u0005\u0016\u0012mEQ\u0014\t\u0004+\u0011]\u0015b\u0001CM\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\u0002\u0005!Q\u0011QOA\u001c\u0003\u0003%I!a\u001e\t\rY\u000c)\u00031\u0001G\u0011!\t9\u0003\u0001C\u0001\u0005\u0011\u0015F#C\u0015\u0005(\u0012%F1\u0016CX\u0011\u0019iG1\u0015a\u0001S!1a\u000fb)A\u0002\u0019C\u0001Ba\u001a\u0005$\u0002\u0007AQ\u0016\t\u0005+\u0005U\u0016\u0006C\u0004\u0003n\u0011\r\u0006\u0019\u0001$\t\u0011\tE\u0004\u0001\"\u0001\u0003\tg#\u0012\"\u000bC[\to#I\u000cb/\t\r5$\t\u000c1\u0001*\u0011\u00191H\u0011\u0017a\u0001\r\"A!q\rCY\u0001\u0004!i\u000bC\u0004\u0003n\u0011E\u0006\u0019\u0001$\t\u0011\t}\u0004\u0001\"\u0001\u0003\t\u007f#\u0012\"\u000bCa\t\u0007$)\rb2\t\r5$i\u000c1\u0001*\u0011\u00191HQ\u0018a\u0001\r\"A!q\rC_\u0001\u0004!i\u000bC\u0004\u0003n\u0011u\u0006\u0019\u0001$\t\u000f\u0011-\u0007\u0001\"\u0001\u0005N\u00061A%\\5okN$2!\u000bCh\u0011\u0019AG\u0011\u001aa\u0001\u001f!9A1\u001b\u0001\u0005B\u0011U\u0017!\u0002;p\'\u0016$X\u0003\u0002Cl\t;,\"\u0001\"7\u0011\tqiB1\u001c\t\u0004!\u0011uG\u0001\u0003C@\t#\u0014\r\u0001b8\u0012\u0005=A\u0002\u0006\u0003Ci\tG$I\u000f\"<\u0011\u0007U!)/C\u0002\u0005h\u001a\u0011A\u0003Z3qe\u0016\u001c\u0017\r^3e\u001fZ,\'O]5eS:<\u0017E\u0001Cv\u00039KU.\\;uC\ndW\rI:fiN\u00043\u000f[8vY\u0012\u0004Cm\u001c\u0011o_RD\u0017N\\4!_:\u0004Co\\*fi\u0002\u0012W\u000f\u001e\u0011sKR,(O\u001c\u0011uQ\u0016l7/\u001a7wKN\u00043-Y:uA\u0005\u001c\u0008%\u0019\u0011TKRt\u0013E\u0001Cx\u0003\u0019\u0011d&M\u0019/a!9A1\u001f\u0001\u0005B\u0011U\u0018A\u00024jYR,\'\u000fF\u0002*\toD\u0001Ba(\u0005r\u0002\u0007A\u0011 \t\u0005+q{A\rC\u0004\u0005~\u0002!\t\u0005b@\u0002\u0013\u0019LG\u000e^3s\u001d>$HcA\u0015\u0006\u0002!A!q\u0014C~\u0001\u0004!I\u0010C\u0004\u0003\u001a\u0002!\t\"\"\u0002\u0015\u0017%*9!\"\u0003\u0006\u000c\u00155Qq\u0002\u0005\t\u0005?+\u0019\u00011\u0001\u0005z\"9!QUC\u0002\u0001\u0004!\u0007B\u0002<\u0006\u0004\u0001\u0007a\t\u0003\u0005\u0003h\u0015\r\u0001\u0019\u0001CW\u0011\u001d\u0011i\'b\u0001A\u0002\u0019Cq!b\u0005\u0001\t#))\"\u0001\u0007fY\u0016l\u0007*Y:i\u0007>$W\rF\u0002G\u000b/Aq!a7\u0006\u0012\u0001\u0007q\u0002C\u0004\u0006\u001c\u0001!)\"\"\u0008\u0002\u000f%l\u0007O]8wKR\u0019a)b\u0008\t\u000f\u0015\u0005R\u0011\u0004a\u0001\r\u0006)\u0001nY8eK\"AQQ\u0005\u0001\u0005\u0002\u0011)9#A\u0006d_6\u0004X\u000f^3ICNDGc\u0001$\u0006*!9\u00111\\C\u0012\u0001\u0004y\u0001bBAk\u0001\u0011EQQ\u0006\u000b\u0008I\u0016=R\u0011GC\u001a\u0011\u001d\tY.b\u000bA\u0002=Aq!a8\u0006,\u0001\u0007a\t\u0003\u0004w\u000bW\u0001\rA\u0012\u0005\u0008\u0003K\u0004A\u0011AC\u001c)\u001dIS\u0011HC\u001e\u000b{Aq!a7\u00066\u0001\u0007q\u0002C\u0004\u0002`\u0016U\u0002\u0019\u0001$\t\rY,)\u00041\u0001G\u0011\u001d\u0011i\t\u0001C\t\u000b\u0003\"r!KC\"\u000b\u000b*9\u0005C\u0004\u0002\\\u0016}\u0002\u0019A\u0008\t\u000f\u0005}Wq\u0008a\u0001\r\"1a/b\u0010A\u0002\u0019Cq!b\u0013\u0001\t#!\t*\u0001\u0007xe&$XMU3qY\u0006\u001cW\rK\u0004\u0001\u000b\u001f*)\u0006\"<\u0011\u0007U)\t&C\u0002\u0006T\u0019\u0011Q\u0003Z3qe\u0016\u001c\u0017\r^3e\u0013:DWM]5uC:\u001cW-\t\u0002\u0006X\u0005\u0019F\u000b[3!S6\u0004H.Z7f]R\u000cG/[8oA\u0011,G/Y5mg\u0002zg\rI5n[V$\u0018M\u00197fA!\u000c7\u000f\u001b\u0011tKR\u001c\u0008%\\1lK\u0002Jg\u000e[3sSRLgn\u001a\u0011ge>l\u0007\u0005\u001e5f[\u0002*hn^5tK:Bs\u0001\u0001CK\t7#i\n"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/HashSet<",
            "*>;TA;",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 163
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lscala/collection/immutable/HashSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashSet;->updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    invoke-virtual {p1, p3}, Lscala/collection/immutable/HashSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/HashSet;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    return-object v0
.end method

.method public computeHash(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->elemHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->improve(I)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->diff(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->diff(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 103
    instance-of v0, p1, Lscala/collection/immutable/HashSet;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet;

    .line 105
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v0, v0, [Lscala/collection/immutable/HashSet;

    .line 106
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lscala/collection/immutable/HashSet;->diff0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->diff(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public diff0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 184
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->empty()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->empty()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->filter(Lscala/Function1;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v5, v0, [Lscala/collection/immutable/HashSet;

    .line 174
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object p1
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/immutable/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 178
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v5, v0, [Lscala/collection/immutable/HashSet;

    .line 179
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public final improve(I)I
    .locals 1

    shl-int/lit8 v0, p1, 0x9

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->intersect(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 96
    instance-of v0, p1, Lscala/collection/immutable/HashSet;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet;

    .line 98
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v0, v0, [Lscala/collection/immutable/HashSet;

    .line 99
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lscala/collection/immutable/HashSet;->intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->intersect(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->par()Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/immutable/ParHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/immutable/ParHashSet$;->fromTrie(Lscala/collection/immutable/HashSet;)Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)Z"
        }
    .end annotation

    .line 60
    instance-of v0, p1, Lscala/collection/immutable/HashSet;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/HashSet;->subsetOf0(Lscala/collection/immutable/HashSet;I)Z

    move-result p1

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->union(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->union(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSet;)Lscala/collection/immutable/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 89
    instance-of v0, p1, Lscala/collection/immutable/HashSet;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet;

    .line 91
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v0, v0, [Lscala/collection/immutable/HashSet;

    .line 92
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lscala/collection/immutable/HashSet;->union0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->union(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$LeafHashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    return-object p1
.end method

.method public union0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    return-object p1
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 198
    new-instance p3, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {p3, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    return-object p3
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    .line 202
    new-instance v0, Lscala/collection/immutable/HashSet$SerializationProxy;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashSet$SerializationProxy;-><init>(Lscala/collection/immutable/HashSet;)V

    return-object v0
.end method
