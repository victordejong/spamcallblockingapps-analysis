.class public interface abstract Lscala/collection/IterableViewLike;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/Iterable;
.implements Lscala/collection/TraversableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/IterableViewLike$Forced;,
        Lscala/collection/IterableViewLike$Sliced;,
        Lscala/collection/IterableViewLike$Mapped;,
        Lscala/collection/IterableViewLike$Zipped;,
        Lscala/collection/IterableViewLike$Appended;,
        Lscala/collection/IterableViewLike$Filtered;,
        Lscala/collection/IterableViewLike$EmptyView;,
        Lscala/collection/IterableViewLike$ZippedAll;,
        Lscala/collection/IterableViewLike$FlatMapped;,
        Lscala/collection/IterableViewLike$TakenWhile;,
        Lscala/collection/IterableViewLike$Transformed;,
        Lscala/collection/IterableViewLike$DroppedWhile;,
        Lscala/collection/IterableViewLike$AbstractTransformed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Coll:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/IterableView<",
        "TA;TColl;>;:",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/Iterable<",
        "TA;>;",
        "Lscala/collection/TraversableView<",
        "TA;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rEe\u0001C\u0001\u0003!\u0003\r\ta\u0002\u0017\u0003!%#XM]1cY\u00164\u0016.Z<MS.,\'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Q\u0003\u0002\u0005\u0014U\u0001\u001ab\u0001A\u0005\u000e95\u0002\u0004C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB\u0019abD\t\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u0011%#XM]1cY\u0016\u0004\"AE\n\r\u0001\u00111A\u0003\u0001CC\u0002U\u0011\u0011!Q\t\u0003-e\u0001\"AC\u000c\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u000f;Ey\u0012B\u0001\u0010\u0003\u00051IE/\u001a:bE2,G*[6f!\t\u0011\u0002\u0005\u0002\u0004\"\u0001\u0011\u0015\rA\t\u0002\u0005)\"L7/\u0005\u0002\u0017GI\u0019AE\n\u0017\u0007\t\u0015\u0002\u0001a\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005\u001d\u001d\n\u0012&\u0003\u0002)\u0005\ta\u0011\n^3sC\ndWMV5foB\u0011!C\u000b\u0003\u0007W\u0001!)\u0019A\u000b\u0003\t\r{G\u000e\u001c\t\u0006\u001d\u0001\t\u0012f\u0008\t\u0005\u001d9\n\u0012&\u0003\u00020\u0005\tyAK]1wKJ\u001c\u0018M\u00197f-&,w\u000fE\u0003\u000fcEIs$\u0003\u00023\u0005\t\u0019BK]1wKJ\u001c\u0018M\u00197f-&,w\u000fT5lK\")A\u0007\u0001C\u0001k\u00051A%\u001b8ji\u0012\"\u0012A\u000e\t\u0003\u0015]J!\u0001\u000f\u0003\u0003\tUs\u0017\u000e\u001e\u0004\u0007u\u0001\t\tAA\u001e\u0003\'\u0005\u00137\u000f\u001e:bGR$&/\u00198tM>\u0014X.\u001a3\u0016\u0005qz4#B\u001d\n{\u0005+\u0005c\u0001\u0008\u0010}A\u0011!c\u0010\u0003\u0007\u0001f\")\u0019A\u000b\u0003\u0003\t\u00032AQ\"?\u001b\u0005\u0001\u0011B\u0001#2\u0005-!&/\u00198tM>\u0014X.\u001a3\u0011\u0007\t3eHB\u0004E\u0001A\u0005\u0019\u0011A$\u0016\u0005![5\u0003\u0002$\n\u00132\u0003BAD\u0014KSA\u0011!c\u0013\u0003\u0007\u0001\u001a#)\u0019A\u000b\u0011\u0007\t\u001b%\nC\u00035\r\u0012\u0005Q\u0007C\u0003P\r\u001a\u0005\u0001+\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005\t\u0006c\u0001\u0008S\u0015&\u00111K\u0001\u0002\t\u0013R,\'/\u0019;pe\")QK\u0012C!-\u00069am\u001c:fC\u000eDWCA,_)\t1\u0004\u000cC\u0003Z)\u0002\u0007!,A\u0001g!\u0011Q1LS/\n\u0005q#!!\u0003$v]\u000e$\u0018n\u001c82!\t\u0011b\u000cB\u0003`)\n\u0007QCA\u0001V\u0011\u0015\tg\t\"\u0011c\u0003!!xn\u0015;sS:<G#A2\u0011\u0005\u0011LW\"A3\u000b\u0005\u0019<\u0017\u0001\u00027b]\u001eT\u0011\u0001[\u0001\u0005U\u00064\u0018-\u0003\u0002kK\n11\u000b\u001e:j]\u001eDQ\u0001\u001c$\u0005B5\u000cq![:F[B$\u00180F\u0001o!\tQq.\u0003\u0002q\t\t9!i\\8mK\u0006t\u0007\"\u0002::\t\u0003\u0019\u0018A\u0002\u001fj]&$h\u0008F\u0001u!\r\u0011\u0015H\u0010\u0004\u0008m\u0002\u0001\n1!\u0001x\u0005%)U\u000e\u001d;z-&,wo\u0005\u0003v\u0013aL\u0008c\u0001\"G-A\u0011!I_\u0005\u0003mFBQ\u0001N;\u0005\u0002UBQaT;\u0005\u0006u,\u0012A \t\u0004\u001dI3b!CA\u0001\u0001A\u0005\u0019\u0011AA\u0002\u0005\u00191uN]2fIV!\u0011QAA\u0007\'\u0019y\u0018\"a\u0002\u0002\u0010A)!)!\u0003\u0002\u000c%\u0019\u0011\u0011A\u0019\u0011\u0007I\ti\u0001B\u0003A\u007f\n\u0007Q\u0003\u0005\u0003C\r\u0006-\u0001\"\u0002\u001b\u0000\t\u0003)\u0004BB(\u0000\t\u0003\t)\"\u0006\u0002\u0002\u0018A!aBUA\u0006\r%\tY\u0002\u0001I\u0001\u0004\u0003\tiB\u0001\u0004TY&\u001cW\rZ\n\u0008\u00033I\u0011qDA\u0012!\r\u0011\u0015\u0011E\u0005\u0004\u00037\t\u0004c\u0001\"G#!1A\'!\u0007\u0005\u0002UBqaTA\r\t\u0003\tI#\u0006\u0002\u0002,A\u0019aBU\t\u0007\u0013\u0005=\u0002\u0001%A\u0002\u0002\u0005E\"AB\'baB,G-\u0006\u0003\u00024\u0005m2cBA\u0017\u0013\u0005U\u0012Q\u0008\t\u0006\u0005\u0006]\u0012\u0011H\u0005\u0004\u0003_\t\u0004c\u0001\n\u0002<\u00111\u0001)!\u000cC\u0002U\u0001BA\u0011$\u0002:!1A\'!\u000c\u0005\u0002UBqaTA\u0017\t\u0003\t\u0019%\u0006\u0002\u0002FA!aBUA\u001d\r%\tI\u0005\u0001I\u0001\u0004\u0003\tYE\u0001\u0006GY\u0006$X*\u00199qK\u0012,B!!\u0014\u0002VM9\u0011qI\u0005\u0002P\u0005]\u0003#\u0002\"\u0002R\u0005M\u0013bAA%cA\u0019!#!\u0016\u0005\r\u0001\u000b9E1\u0001\u0016!\u0011\u0011e)a\u0015\t\rQ\n9\u0005\"\u00016\u0011\u001dy\u0015q\tC\u0001\u0003;*\"!a\u0018\u0011\t9\u0011\u00161\u000b\u0004\n\u0003G\u0002\u0001\u0013aA\u0001\u0003K\u0012\u0001\"\u00119qK:$W\rZ\u000b\u0005\u0003O\nygE\u0004\u0002b%\tI\'a\u001d\u0011\u000b\t\u000bY\'!\u001c\n\u0007\u0005\r\u0014\u0007E\u0002\u0013\u0003_\"q\u0001QA1\u0005\u0004\t\t(\u0005\u0002\u00123A!!IRA7\u0011\u0019!\u0014\u0011\rC\u0001k!9q*!\u0019\u0005\u0002\u0005eTCAA>!\u0011q!+!\u001c\u0007\u0013\u0005}\u0004\u0001%A\u0002\u0002\u0005\u0005%\u0001\u0003$jYR,\'/\u001a3\u0014\u000f\u0005u\u0014\"a!\u0002$A\u0019!)!\"\n\u0007\u0005}\u0014\u0007\u0003\u00045\u0003{\"\t!\u000e\u0005\u0008\u001f\u0006uD\u0011AA\u0015\r%\ti\t\u0001I\u0001\u0004\u0003\tyI\u0001\u0006UC.,gn\u00165jY\u0016\u001cr!a#\n\u0003#\u000b\u0019\u0003E\u0002C\u0003\'K1!!$2\u0011\u0019!\u00141\u0012C\u0001k!9q*a#\u0005\u0002\u0005%b!CAN\u0001A\u0005\u0019\u0011AAO\u00051!%o\u001c9qK\u0012<\u0006.\u001b7f\'\u001d\tI*CAP\u0003G\u00012AQAQ\u0013\r\tY*\r\u0005\u0007i\u0005eE\u0011A\u001b\t\u000f=\u000bI\n\"\u0001\u0002*\u0019I\u0011\u0011\u0016\u0001\u0011\u0002\u0007\u0005\u00111\u0016\u0002\u00075&\u0004\u0008/\u001a3\u0016\t\u00055\u0016\u0011X\n\u0006\u0003OK\u0011q\u0016\t\u0005\u0005\u001a\u000b\t\u000c\u0005\u0004\u000b\u0003g\u000b\u0012qW\u0005\u0004\u0003k#!A\u0002+va2,\'\u0007E\u0002\u0013\u0003s#a\u0001QAT\u0005\u0004)\u0002B\u0002\u001b\u0002(\u0012\u0005Q\u0007\u0003\u0006\u0002@\u0006\u001d&\u0019)D\t\u0003\u0003\u000cQa\u001c;iKJ,\"!a1\u0011\u000b9\t)-a.\n\u0007\u0005\u001d\'AA\u0006HK:LE/\u001a:bE2,\u0007bB(\u0002(\u0012\u0005\u00111Z\u000b\u0003\u0003\u001b\u0004BA\u0004*\u00022\"I\u0011\u0011[ATA\u0013U\u00131[\u0001\u000fm&,w/\u00133f]RLg-[3s+\u0005\u0019g!CAl\u0001A\u0005\u0019\u0011AAm\u0005%Q\u0016\u000e\u001d9fI\u0006cG.\u0006\u0004\u0002\\\u0006\r\u0018\u0011^\n\u0006\u0003+L\u0011Q\u001c\t\u0005\u0005\u001a\u000by\u000eE\u0004\u000b\u0003g\u000b\t/a:\u0011\u0007I\t\u0019\u000f\u0002\u0005\u0002f\u0006U\'\u0019AA9\u0005\t\t\u0015\u0007E\u0002\u0013\u0003S$a\u0001QAk\u0005\u0004)\u0002B\u0002\u001b\u0002V\u0012\u0005Q\u0007\u0003\u0006\u0002@\u0006U\'\u0019)D\t\u0003_,\"!!=\u0011\u000b9\t)-a:\t\u0015\u0005U\u0018Q\u001bb!\u000e#\t90\u0001\u0005uQ&\u001cX\t\\3n+\t\t\t\u000f\u0003\u0006\u0002|\u0006U\'\u0019)D\t\u0003{\u000c\u0001\u0002\u001e5bi\u0016cW-\\\u000b\u0003\u0003OD\u0011\"!5\u0002V\u0002&)&a5\t\u000f=\u000b)\u000e\"\u0001\u0003\u0004U\u0011!Q\u0001\t\u0005\u001dI\u000by\u000e\u0003\u0005\u0003\n\u0001\u0001K1\u0002B\u0006\u0003\u0019\t7\u000f\u00165jgR\u0019qD!\u0004\t\u0011\t=!q\u0001a\u0001\u0003G\t!\u0001_:\t\u000f\tM\u0001\u0001\"\u0005\u0003\u0016\u0005Ia.Z<[SB\u0004X\rZ\u000b\u0005\u0005/\u0011y\u0002\u0006\u0003\u0003\u001a\t\u0005\u0002\u0003\u0002\"G\u00057\u0001bACAZ#\tu\u0001c\u0001\n\u0003 \u00111\u0001I!\u0005C\u0002UA\u0001Ba\t\u0003\u0012\u0001\u0007!QE\u0001\u0005i\"\u000cG\u000fE\u0003\u000f\u0003\u000b\u0014i\u0002C\u0004\u0003*\u0001!\tBa\u000b\u0002\u00199,wOW5qa\u0016$\u0017\t\u001c7\u0016\r\t5\"Q\u0007B\u001d)!\u0011yCa\u000f\u0003@\t\r\u0003\u0003\u0002\"G\u0005c\u0001rACAZ\u0005g\u00119\u0004E\u0002\u0013\u0005k!\u0001\"!:\u0003(\t\u0007\u0011\u0011\u000f\t\u0004%\teBA\u0002!\u0003(\t\u0007Q\u0003\u0003\u0005\u0003$\t\u001d\u0002\u0019\u0001B\u001f!\u0015q\u0011Q\u0019B\u001c\u0011!\u0011\tEa\nA\u0002\tM\u0012!C0uQ&\u001cX\t\\3n\u0011!\u0011)Ea\nA\u0002\t]\u0012!C0uQ\u0006$X\t\\3n\u0011\u001d\u0011I\u0005\u0001C)\u0005\u0017\n\u0011B\\3x\r>\u00148-\u001a3\u0016\t\t5#1\u000b\u000b\u0005\u0005\u001f\u0012)\u0006\u0005\u0003C\r\nE\u0003c\u0001\n\u0003T\u00111\u0001Ia\u0012C\u0002UA\u0011Ba\u0004\u0003H\u0011\u0005\rAa\u0016\u0011\u000b)\u0011IF!\u0018\n\u0007\tmCA\u0001\u0005=Eft\u0017-\\3?!\u0015q!q\u000cB)\u0013\r\u0011\tG\u0001\u0002\u0007\u000f\u0016t7+Z9\t\u000f\t\u0015\u0004\u0001\"\u0015\u0003h\u0005Ya.Z<BaB,g\u000eZ3e+\u0011\u0011IGa\u001c\u0015\t\t-$\u0011\u000f\t\u0005\u0005\u001a\u0013i\u0007E\u0002\u0013\u0005_\"q\u0001\u0011B2\u0005\u0004\t\t\u0008\u0003\u0005\u0003$\t\r\u0004\u0019\u0001B:!\u0015q!Q\u000fB7\u0013\r\u00119H\u0001\u0002\u000f\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u0011\u001d\u0011Y\u0008\u0001C)\u0005{\n\u0011B\\3x\u001b\u0006\u0004\u0008/\u001a3\u0016\t\t}$Q\u0011\u000b\u0005\u0005\u0003\u00139\t\u0005\u0003C\r\n\r\u0005c\u0001\n\u0003\u0006\u00121\u0001I!\u001fC\u0002UAq!\u0017B=\u0001\u0004\u0011I\tE\u0003\u000b7F\u0011\u0019\tC\u0004\u0003\u000e\u0002!\tFa$\u0002\u001b9,wO\u00127bi6\u000b\u0007\u000f]3e+\u0011\u0011\tJa&\u0015\t\tM%\u0011\u0014\t\u0005\u0005\u001a\u0013)\nE\u0002\u0013\u0005/#a\u0001\u0011BF\u0005\u0004)\u0002bB-\u0003\u000c\u0002\u0007!1\u0014\t\u0006\u0015m\u000b\"Q\u0014\t\u0006\u001d\t}%QS\u0005\u0004\u0005C\u0013!AE$f]R\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016DqA!*\u0001\t#\u00129+A\u0006oK^4\u0015\u000e\u001c;fe\u0016$G\u0003BA\u0012\u0005SC\u0001Ba+\u0003$\u0002\u0007!QV\u0001\u0002aB!!bW\to\u0011\u001d\u0011\t\u000c\u0001C)\u0005g\u000b\u0011B\\3x\'2L7-\u001a3\u0015\t\u0005\r\"Q\u0017\u0005\t\u0005o\u0013y\u000b1\u0001\u0003:\u0006Qq,\u001a8ea>Lg\u000e^:\u0011\t\tm&\u0011Y\u0007\u0003\u0005{S1Aa0\u0003\u0003\u001d9WM\\3sS\u000eLAAa1\u0003>\ni1\u000b\\5dK&sG/\u001a:wC2DqAa2\u0001\t#\u0012I-A\u0008oK^$%o\u001c9qK\u0012<\u0006.\u001b7f)\u0011\t\u0019Ca3\t\u0011\t-&Q\u0019a\u0001\u0005[CqAa4\u0001\t#\u0012\t.A\u0007oK^$\u0016m[3o/\"LG.\u001a\u000b\u0005\u0003G\u0011\u0019\u000e\u0003\u0005\u0003,\n5\u0007\u0019\u0001BW\u0011\u001d\u00119\u000e\u0001C)\u00053\u000c\u0001B\\3x)\u0006\\WM\u001c\u000b\u0005\u0003G\u0011Y\u000e\u0003\u0005\u0003^\nU\u0007\u0019\u0001Bp\u0003\u0005q\u0007c\u0001\u0006\u0003b&\u0019!1\u001d\u0003\u0003\u0007%sG\u000fC\u0004\u0003h\u0002!\tF!;\u0002\u00159,w\u000f\u0012:paB,G\r\u0006\u0003\u0002$\t-\u0008\u0002\u0003Bo\u0005K\u0004\rAa8\t\u000f\t=\u0008\u0001\"\u0011\u0003r\u0006!AM]8q)\ry\"1\u001f\u0005\t\u0005;\u0014i\u000f1\u0001\u0003`\"9!q\u001f\u0001\u0005B\te\u0018\u0001\u0002;bW\u0016$2a\u0008B~\u0011!\u0011iN!>A\u0002\t}\u0007b\u0002B\u0000\u0001\u0011\u00053\u0011A\u0001\u0004u&\u0004X\u0003CB\u0002\u00077\u0019yb!\u0003\u0015\t\r\u00151\u0011\u0005\u000b\u0005\u0007\u000f\u0019i\u0001E\u0002\u0013\u0007\u0013!qaa\u0003\u0003~\n\u0007QC\u0001\u0003UQ\u0006$\u0008\u0002CB\u0008\u0005{\u0004\u001da!\u0005\u0002\u0005\t4\u0007#\u0003B^\u0007\'y2qCB\u0004\u0013\u0011\u0019)B!0\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u000f)\t\u0019l!\u0007\u0004\u001eA\u0019!ca\u0007\u0005\u0011\u0005\u0015(Q b\u0001\u0003c\u00022AEB\u0010\t\u0019\u0001%Q b\u0001+!A!1\u0005B\u007f\u0001\u0004\u0019\u0019\u0003E\u0003\u000f\u0003\u000b\u001ci\u0002C\u0004\u0004(\u0001!\te!\u000b\u0002\u0019iL\u0007oV5uQ&sG-\u001a=\u0016\r\r-2\u0011HB\u0018)\u0011\u0019ic!\r\u0011\u0007I\u0019y\u0003B\u0004\u0004\u000c\r\u0015\"\u0019A\u000b\t\u0011\r=1Q\u0005a\u0002\u0007g\u0001\u0012Ba/\u0004\u0014}\u0019)d!\u000c\u0011\u000f)\t\u0019la\u000e\u0003`B\u0019!c!\u000f\u0005\u0011\u0005\u00158Q\u0005b\u0001\u0003cBqa!\u0010\u0001\t\u0003\u001ay$\u0001\u0004{SB\u000cE\u000e\\\u000b\t\u0007\u0003\u001a)f!\u0015\u0004HQA11IB,\u00077\u001ai\u0006\u0006\u0003\u0004F\r%\u0003c\u0001\n\u0004H\u0011911BB\u001e\u0005\u0004)\u0002\u0002CB\u0008\u0007w\u0001\u001daa\u0013\u0011\u0013\tm61C\u0010\u0004N\r\u0015\u0003c\u0002\u0006\u00024\u000e=31\u000b\t\u0004%\rEC\u0001CAs\u0007w\u0011\r!!\u001d\u0011\u0007I\u0019)\u0006\u0002\u0004A\u0007w\u0011\r!\u0006\u0005\t\u0005G\u0019Y\u00041\u0001\u0004ZA)a\"!2\u0004T!A\u0011Q_B\u001e\u0001\u0004\u0019y\u0005\u0003\u0005\u0002|\u000em\u0002\u0019AB*\u0011\u001d\u0019\t\u0007\u0001C!\u0007G\nqa\u001a:pkB,G\r\u0006\u0003\u0004f\r\u001d\u0004c\u0001\u0008S?!A1\u0011NB0\u0001\u0004\u0011y.\u0001\u0003tSj,\u0007bBB7\u0001\u0011\u00053qN\u0001\u0008g2LG-\u001b8h)\u0019\u0019)g!\u001d\u0004t!A1\u0011NB6\u0001\u0004\u0011y\u000e\u0003\u0005\u0004v\r-\u0004\u0019\u0001Bp\u0003\u0011\u0019H/\u001a9\t\u000f\r5\u0004\u0001\"\u0011\u0004zQ!1QMB>\u0011!\u0019Iga\u001eA\u0002\t}\u0007bBB@\u0001\u0011\u00053\u0011Q\u0001\nIJ|\u0007OU5hQR$2aHBB\u0011!\u0011in! A\u0002\t}\u0007bBBD\u0001\u0011\u00053\u0011R\u0001\ni\u0006\\WMU5hQR$2aHBF\u0011!\u0011in!\"A\u0002\t}\u0007bBBH\u0001\u0011\u0005\u00131[\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e\u001f"
.end annotation


# virtual methods
.method public abstract drop(I)Lscala/collection/IterableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation
.end method

.method public abstract dropRight(I)Lscala/collection/IterableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation
.end method

.method public abstract grouped(I)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end method

.method public abstract newAppended(Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable<",
            "TB;>;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TB;>;"
        }
    .end annotation
.end method

.method public abstract newDropped(I)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newDroppedWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newFiltered(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newFlatMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TB;>;"
        }
    .end annotation
.end method

.method public abstract newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenSeq<",
            "TB;>;>;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TB;>;"
        }
    .end annotation
.end method

.method public abstract newMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TB;>;"
        }
    .end annotation
.end method

.method public abstract newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SliceInterval;",
            ")",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newTaken(I)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newTakenWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;)",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>.Transformed<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract sliding(I)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end method

.method public abstract sliding(II)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract take(I)Lscala/collection/IterableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation
.end method

.method public abstract takeRight(I)Lscala/collection/IterableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation
.end method

.method public abstract zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
            "TThis;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
            "TThis;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "TThis;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation
.end method
