.class public interface abstract Lscala/collection/mutable/FlatHashTable;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/FlatHashTable$Contents;,
        Lscala/collection/mutable/FlatHashTable$HashUtils;,
        Lscala/collection/mutable/FlatHashTable$NullSentinel$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/FlatHashTable$HashUtils<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tugaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000e\r2\u000cG\u000fS1tQR\u000b\'\r\\3\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0015\u0005M3c\u0001\u0001\u000c\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u000bA\ty!!\u0015\u000f\u0005E\u0011R\"\u0001\u0002\u0008\rM\u0011\u0001\u0012\u0001\u0003\u0015\u000351E.\u0019;ICNDG+\u00192mKB\u0011\u0011#\u0006\u0004\u0007\u0003\tA\t\u0001\u0002\u000c\u0014\u0005UY\u0001\"\u0002\r\u0016\t\u0003I\u0012A\u0002\u001fj]&$h\u0008F\u0001\u0015\u0011\u0015YR\u0003\"\u0002\u001d\u00035\u0019X-\u001a3HK:,\'/\u0019;peV\tQ\u0004E\u0002\u001fG\u0015j\u0011a\u0008\u0006\u0003A\u0005\nA\u0001\\1oO*\t!%\u0001\u0003kCZ\u000c\u0017B\u0001\u0013 \u0005-!\u0006N]3bI2{7-\u00197\u0011\u0005\u0019JS\"A\u0014\u000b\u0005!2\u0011\u0001B;uS2L!AK\u0014\u0003\rI\u000bg\u000eZ8n\u000f\u0015aS\u0003#\u0003.\u00031qU\u000f\u001c7TK:$\u0018N\\3m!\tqs&D\u0001\u0016\r\u0015\u0001T\u0003#\u00032\u00051qU\u000f\u001c7TK:$\u0018N\\3m\'\ty3\u0002C\u0003\u0019_\u0011\u00051\u0007F\u0001.\u0011\u0015)t\u0006\"\u00117\u0003!A\u0017m\u001d5D_\u0012,G#A\u001c\u0011\u00051A\u0014BA\u001d\u0007\u0005\rIe\u000e\u001e\u0005\u0006w=\"\t\u0005P\u0001\ti>\u001cFO]5oOR\tQ\u0008\u0005\u0002\u001f}%\u0011qh\u0008\u0002\u0007\'R\u0014\u0018N\\4\t\u000b\u0005+B\u0011\u0001\"\u0002#\u0011,g-Y;mi2{\u0017\r\u001a$bGR|\'/F\u00018\u0011\u0015!U\u0003\"\u0002C\u0003=aw.\u00193GC\u000e$xN\u001d#f]Vl\u0007\"\u0002$\u0016\t\u00039\u0015\u0001E:ju\u00164uN\u001d+ie\u0016\u001c\u0008n\u001c7e)\r9\u0004J\u0013\u0005\u0006\u0013\u0016\u0003\raN\u0001\u0005g&TX\rC\u0003L\u000b\u0002\u0007q\'A\u0006`Y>\u000cGMR1di>\u0014\u0008\"B\'\u0016\t\u0003q\u0015\u0001\u00048foRC\'/Z:i_2$GcA\u001cP!\")1\n\u0014a\u0001o!)\u0011\n\u0014a\u0001o\u0019!!+\u0006\u0001T\u0005!\u0019uN\u001c;f]R\u001cXC\u0001+y\'\t\t6\u0002\u0003\u0005W#\n\u0015\r\u0011\"\u0001C\u0003)aw.\u00193GC\u000e$xN\u001d\u0005\t1F\u0013\t\u0011)A\u0005o\u0005YAn\\1e\r\u0006\u001cGo\u001c:!\u0011!Q\u0016K!b\u0001\n\u0003Y\u0016!\u0002;bE2,W#\u0001/\u0011\u00071i6\"\u0003\u0002_\r\t)\u0011I\u001d:bs\"A\u0001-\u0015B\u0001B\u0003%A,\u0001\u0004uC\ndW\r\t\u0005\tEF\u0013)\u0019!C\u0001\u0005\u0006IA/\u00192mKNK\'0\u001a\u0005\tIF\u0013\t\u0011)A\u0005o\u0005QA/\u00192mKNK\'0\u001a\u0011\t\u0011\u0019\u000c&Q1A\u0005\u0002\t\u000b\u0011\u0002\u001e5sKNDw\u000e\u001c3\t\u0011!\u000c&\u0011!Q\u0001\n]\n!\u0002\u001e5sKNDw\u000e\u001c3!\u0011!Q\u0017K!b\u0001\n\u0003\u0011\u0015!C:fK\u00124\u0018\r\\;f\u0011!a\u0017K!A!\u0002\u00139\u0014AC:fK\u00124\u0018\r\\;fA!Aa.\u0015BC\u0002\u0013\u0005q.A\u0004tSj,W.\u00199\u0016\u0003A\u00042\u0001D/8\u0011!\u0011\u0018K!A!\u0002\u0013\u0001\u0018\u0001C:ju\u0016l\u0017\r\u001d\u0011\t\u000ba\tF\u0011\u0001;\u0015\u001bU\u000c\u0019!!\u0002\u0002\u0008\u0005%\u00111BA\u0007!\rq\u0013K\u001e\t\u0003obd\u0001\u0001B\u0003z#\n\u0007!PA\u0001B#\tYh\u0010\u0005\u0002\ry&\u0011QP\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taq0C\u0002\u0002\u0002\u0019\u00111!\u00118z\u0011\u001516\u000f1\u00018\u0011\u0015Q6\u000f1\u0001]\u0011\u0015\u00117\u000f1\u00018\u0011\u001517\u000f1\u00018\u0011\u0015Q7\u000f1\u00018\u0011\u0015q7\u000f1\u0001q\r%\t\t\"\u0006I\u0001\u0004\u0003\t\u0019BA\u0005ICNDW\u000b^5mgV!\u0011QCA#\'\r\tya\u0003\u0005\t\u00033\ty\u0001\"\u0001\u0002\u001c\u00051A%\u001b8ji\u0012\"\"!!\u0008\u0011\u00071\ty\"C\u0002\u0002\"\u0019\u0011A!\u00168ji\"9\u0011QEA\u0008\t+\u0011\u0015\u0001F:ju\u0016l\u0015\r\u001d\"vG.,GOQ5u\'&TX\rC\u0004\u0002*\u0005=AQ\u0003\"\u0002#ML\'0Z\'ba\n+8m[3u\'&TX\r\u0003\u0005\u0002.\u0005=AQCA\u0018\u0003\u001dIW\u000e\u001d:pm\u0016$RaNA\u0019\u0003kAq!a\r\u0002,\u0001\u0007q\'A\u0003iG>$W\rC\u0004\u00028\u0005-\u0002\u0019A\u001c\u0002\tM,W\r\u001a\u0005\t\u0003w\ty\u0001\"\u0006\u0002>\u0005YQ\r\\3n)>,e\u000e\u001e:z)\rY\u0011q\u0008\u0005\t\u0003\u0003\nI\u00041\u0001\u0002D\u0005!Q\r\\3n!\r9\u0018Q\t\u0003\u0007s\u0006=!\u0019\u0001>\t\u0011\u0005%\u0013q\u0002C\u000b\u0003\u0017\n1\"\u001a8uef$v.\u00127f[R!\u00111IA\'\u0011\u001d\ty%a\u0012A\u0002-\tQ!\u001a8uef\u00042a^A*\t\u0015I\u0008A1\u0001{\u0011\u001d\tI\u0002\u0001C\u0001\u00037Aq!!\u0017\u0001\t\u001b\tY&\u0001\u0006uC\ndW\rR3ck\u001e,\"!!\u0018\u0011\u00071\ty&C\u0002\u0002b\u0019\u0011qAQ8pY\u0016\u000cg\u000e\u0003\u0005L\u0001\u0001\u0007I\u0011\u0001\u0003C\u0011)\t9\u0007\u0001a\u0001\n\u0003!\u0011\u0011N\u0001\u0010?2|\u0017\r\u001a$bGR|\'o\u0018\u0013fcR!\u0011QDA6\u0011%\ti\'!\u001a\u0002\u0002\u0003\u0007q\'A\u0002yIEBq!!\u001d\u0001A\u0003&q\'\u0001\u0007`Y>\u000cGMR1di>\u0014\u0008\u0005\u000b\u0003\u0002p\u0005U\u0004c\u0001\u0007\u0002x%\u0019\u0011\u0011\u0010\u0004\u0003\u0013Q\u0014\u0018M\\:jK:$\u0008b\u0002.\u0001\u0001\u0004%\tb\u0017\u0005\n\u0003\u007f\u0002\u0001\u0019!C\t\u0003\u0003\u000b\u0011\u0002^1cY\u0016|F%Z9\u0015\t\u0005u\u00111\u0011\u0005\n\u0003[\ni(!AA\u0002qCa\u0001\u0019\u0001!B\u0013a\u0006\u0006BAC\u0003kBqA\u0019\u0001A\u0002\u0013E!\tC\u0005\u0002\u000e\u0002\u0001\r\u0011\"\u0005\u0002\u0010\u0006iA/\u00192mKNK\'0Z0%KF$B!!\u0008\u0002\u0012\"I\u0011QNAF\u0003\u0003\u0005\ra\u000e\u0005\u0007I\u0002\u0001\u000b\u0015B\u001c)\t\u0005M\u0015Q\u000f\u0005\u0008M\u0002\u0001\r\u0011\"\u0005C\u0011%\tY\n\u0001a\u0001\n#\ti*A\u0007uQJ,7\u000f[8mI~#S-\u001d\u000b\u0005\u0003;\ty\nC\u0005\u0002n\u0005e\u0015\u0011!a\u0001o!1\u0001\u000e\u0001Q!\n]BC!!)\u0002v!9a\u000e\u0001a\u0001\n#y\u0007\"CAU\u0001\u0001\u0007I\u0011CAV\u0003-\u0019\u0018N_3nCB|F%Z9\u0015\t\u0005u\u0011Q\u0016\u0005\n\u0003[\n9+!AA\u0002ADaA\u001d\u0001!B\u0013\u0001\u0008\u0006BAX\u0003kBqA\u001b\u0001A\u0002\u0013E!\tC\u0005\u00028\u0002\u0001\r\u0011\"\u0005\u0002:\u0006i1/Z3em\u0006dW/Z0%KF$B!!\u0008\u0002<\"I\u0011QNA[\u0003\u0003\u0005\ra\u000e\u0005\u0007Y\u0002\u0001\u000b\u0015B\u001c)\t\u0005u\u0016Q\u000f\u0005\u0008\u0003\u0007\u0004A\u0011CAc\u0003!\u0019\u0017\r]1dSRLHcA\u001c\u0002H\"9\u0011\u0011ZAa\u0001\u00049\u0014\u0001D3ya\u0016\u001cG/\u001a3TSj,\u0007BBAg\u0001\u0011\u0005!)A\u0006j]&$\u0018.\u00197TSj,\u0007BBAi\u0001\u0011%!)A\u0008j]&$\u0018.\u00197DCB\u000c7-\u001b;z\u0011\u0019\t)\u000e\u0001C\t\u0005\u0006Q!/\u00198e_6\u001cV-\u001a3\t\r\u0005e\u0007\u0001\"\u0005C\u00035!\u0018M\u00197f\'&TXmU3fI\"A\u0011Q\u001c\u0001\u0005\u0002\u0011\ty.\u0001\u0003j]&$HCBA\u000f\u0003C\u000c\t\u0010\u0003\u0005\u0002d\u0006m\u0007\u0019AAs\u0003\tIg\u000e\u0005\u0003\u0002h\u00065XBAAu\u0015\r\tY/I\u0001\u0003S>LA!a<\u0002j\n\trJ\u00196fGRLe\u000e];u\'R\u0014X-Y7\t\u0011\u0005M\u00181\u001ca\u0001\u0003k\u000c\u0011A\u001a\t\u0008\u0019\u0005]\u0018\u0011KA\u000f\u0013\r\tIP\u0002\u0002\n\rVt7\r^5p]FB\u0001\"!@\u0001\t\u0003!\u0011q`\u0001\u000cg\u0016\u0014\u0018.\u00197ju\u0016$v\u000e\u0006\u0003\u0002\u001e\t\u0005\u0001\u0002\u0003B\u0002\u0003w\u0004\rA!\u0002\u0002\u0007=,H\u000f\u0005\u0003\u0002h\n\u001d\u0011\u0002\u0002B\u0005\u0003S\u0014!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"9!Q\u0002\u0001\u0005\u0012\t=\u0011!\u00034j]\u0012,e\u000e\u001e:z)\u0011\u0011\tBa\u0006\u0011\u000b1\u0011\u0019\"!\u0015\n\u0007\tUaA\u0001\u0004PaRLwN\u001c\u0005\t\u0003\u0003\u0012Y\u00011\u0001\u0002R!B!1\u0002B\u000e\u0005C\u0011)\u0003E\u0002\r\u0005;I1Aa\u0008\u0007\u0005Q!W\r\u001d:fG\u0006$X\rZ(wKJ\u0014\u0018\u000eZ5oO\u0006\u0012!1E\u0001K\u0013:$XM\u001d8bY\u0002JW\u000e\u001d7f[\u0016tG/\u0019;j_:\u0004Cm\\3tA9|G\u000fI1e[&$\u0008e]3og&\u0014G.\u001a\u0011pm\u0016\u0014(/\u001b3j]\u001e\u0004sN\u001a\u0011uQ&\u001c\u0008%\\3uQ>$g&\t\u0002\u0003(\u00051!GL\u00192]ABqAa\u000b\u0001\t#\u0011i#\u0001\u0007d_:$\u0018-\u001b8t\u000b2,W\u000e\u0006\u0003\u0002^\t=\u0002\u0002CA!\u0005S\u0001\r!!\u0015)\u0011\t%\"1\u0004B\u0011\u0005KAqA!\u000e\u0001\t\u0013\u00119$\u0001\u0007gS:$W\t\\3n\u00136\u0004H\u000eF\u0002\u000c\u0005sA\u0001\"!\u0011\u00034\u0001\u0007\u0011\u0011\u000b\u0005\u0008\u0005{\u0001A\u0011\u0003B \u0003\u001d\tG\rZ#mK6$B!!\u0018\u0003B!A\u0011\u0011\tB\u001e\u0001\u0004\t\t\u0006C\u0004\u0003F\u0001!\tBa\u0012\u0002\u0011\u0005$G-\u00128uef$B!!\u0018\u0003J!9!1\nB\"\u0001\u0004Y\u0011\u0001\u00038fo\u0016sGO]=\t\u000f\t=\u0003\u0001\"\u0005\u0003R\u0005Q!/Z7pm\u0016,E.Z7\u0015\t\u0005u#1\u000b\u0005\t\u0003\u0003\u0012i\u00051\u0001\u0002R!9!q\u000b\u0001\u0005\u0012\te\u0013\u0001C5uKJ\u000cGo\u001c:\u0016\u0005\tm\u0003C\u0002B/\u0005?\n\t&D\u0001\u0005\u0013\r\u0011\t\u0007\u0002\u0002\t\u0013R,\'/\u0019;pe\"9!Q\r\u0001\u0005\n\u0005m\u0011!C4s_^$\u0016M\u00197f\u0011\u001d\u0011I\u0007\u0001C\u0005\u00037\tqb\u00195fG.\u001cuN\\:jgR,g\u000e\u001e\u0005\u0008\u0005[\u0002A\u0011\u0003B8\u00031qgnU5{K6\u000b\u0007/\u00113e)\u0011\tiB!\u001d\t\u000f\tM$1\u000ea\u0001o\u0005\t\u0001\u000e\u000b\u0005\u0003l\tm!\u0011\u0005B\u0013\u0011\u001d\u0011I\u0008\u0001C\t\u0005w\nqB\u001c8TSj,W*\u00199SK6|g/\u001a\u000b\u0005\u0003;\u0011i\u0008C\u0004\u0003t\t]\u0004\u0019A\u001c)\u0011\t]$1\u0004B\u0011\u0005KAqAa!\u0001\t#\u0011))\u0001\u0008o]NK\'0Z\'baJ+7/\u001a;\u0015\t\u0005u!q\u0011\u0005\u0008\u0005\u0013\u0013\t\t1\u00018\u0003-!\u0018M\u00197f\u0019\u0016tw\r\u001e5)\u0011\t\u0005%1\u0004B\u0011\u0005KAqAa$\u0001\t\u000b!!)A\nu_R\u000cGnU5{K6\u000b\u0007OQ;dW\u0016$8\u000fC\u0004\u0003\u0014\u0002!\tB!&\u0002\u001f\r\u000cGnY*ju\u0016l\u0015\r]*ju\u0016$2a\u000eBL\u0011\u001d\u0011II!%A\u0002]B\u0003B!%\u0003\u001c\t\u0005\"Q\u0005\u0005\u0008\u0005;\u0003A\u0011\u0003BP\u0003-\u0019\u0018N_3NCBLe.\u001b;\u0015\t\u0005u!\u0011\u0015\u0005\u0008\u0005\u0013\u0013Y\n1\u00018Q!\u0011YJa\u0007\u0003\"\t\u0015\u0002b\u0002BT\u0001\u0011E\u00111D\u0001\u0016g&TX-T1q\u0013:LG/\u00118e%\u0016\u0014W/\u001b7eQ!\u0011)Ka\u0007\u0003\"\t\u0015\u0002\u0002\u0003BW\u0001\u0011\u0005A!a\u0007\u0002\u0019A\u0014\u0018N\u001c;TSj,W*\u00199\t\u0011\tE\u0006\u0001\"\u0001\u0005\u00037\tQ\u0002\u001d:j]R\u001cuN\u001c;f]R\u001c\u0008b\u0002B[\u0001\u0011E\u00111D\u0001\u000fg&TX-T1q\t&\u001c\u0018M\u00197f\u0011\u001d\u0011I\u000c\u0001C\t\u00037\n\u0001#[:TSj,W*\u00199EK\u001aLg.\u001a3\t\u000f\tu\u0006\u0001\"\u0005\u0002\\\u0005\t\u0012\r\\<bsNLe.\u001b;TSj,W*\u00199\t\u000f\t\u0005\u0007\u0001\"\u0006\u0003D\u0006)\u0011N\u001c3fqR\u0019qG!2\t\u000f\u0005M\"q\u0018a\u0001o!9!\u0011\u001a\u0001\u0005\u0012\u0005m\u0011AC2mK\u0006\u0014H+\u00192mK\"A!Q\u001a\u0001\u0005\u0002\u0011\u0011y-A\tiCNDG+\u00192mK\u000e{g\u000e^3oiN,\"A!5\u0011\tA\t\u0016\u0011\u000b\u0005\u0008\u0005+\u0004A\u0011\u0003Bl\u0003AIg.\u001b;XSRD7i\u001c8uK:$8\u000f\u0006\u0003\u0002\u001e\te\u0007\u0002\u0003Bn\u0005\'\u0004\rA!5\u0002\u0003\r\u0004"
.end annotation


# virtual methods
.method public abstract _loadFactor()I
.end method

.method public abstract _loadFactor_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract addElem(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract addEntry(Ljava/lang/Object;)Z
.end method

.method public abstract alwaysInitSizeMap()Z
.end method

.method public abstract calcSizeMapSize(I)I
.end method

.method public abstract capacity(I)I
.end method

.method public abstract clearTable()V
.end method

.method public abstract containsElem(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract findEntry(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract index(I)I
.end method

.method public abstract init(Ljava/io/ObjectInputStream;Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function1<",
            "TA;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract initialSize()I
.end method

.method public abstract isSizeMapDefined()Z
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract nnSizeMapAdd(I)V
.end method

.method public abstract nnSizeMapRemove(I)V
.end method

.method public abstract nnSizeMapReset(I)V
.end method

.method public abstract printContents()V
.end method

.method public abstract printSizeMap()V
.end method

.method public abstract randomSeed()I
.end method

.method public abstract removeElem(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract seedvalue()I
.end method

.method public abstract seedvalue_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract serializeTo(Ljava/io/ObjectOutputStream;)V
.end method

.method public abstract sizeMapDisable()V
.end method

.method public abstract sizeMapInit(I)V
.end method

.method public abstract sizeMapInitAndRebuild()V
.end method

.method public abstract sizemap()[I
.end method

.method public abstract sizemap_$eq([I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract table()[Ljava/lang/Object;
.end method

.method public abstract tableSize()I
.end method

.method public abstract tableSizeSeed()I
.end method

.method public abstract tableSize_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract table_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract threshold()I
.end method

.method public abstract threshold_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract totalSizeMapBuckets()I
.end method
