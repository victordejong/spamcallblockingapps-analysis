.class public Lscala/collection/mutable/UnrolledBuffer;
.super Lscala/collection/mutable/AbstractBuffer;
.source "UnrolledBuffer.scala"

# interfaces
.implements Lscala/collection/generic/GenericClassTagTraversableTemplate;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/UnrolledBuffer$Unrolled;,
        Lscala/collection/mutable/UnrolledBuffer$Unrolled$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer<",
        "TT;>;",
        "Lscala/collection/generic/GenericClassTagTraversableTemplate<",
        "TT;",
        "Lscala/collection/mutable/UnrolledBuffer;",
        ">;",
        "Lscala/collection/mutable/Builder<",
        "TT;",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rEf\u0001B\u0001\u0003\u0001%\u0011a\"\u00168s_2dW\r\u001a\"vM\u001a,\'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012\'\u001d\u00011b\u0007\u0010#S1\u00022\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\u0008\u0003\u00059\t%m\u001d;sC\u000e$()\u001e4gKJ\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001\'\t\tA+\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJ\u0004B\u0001D\u0010\u0010C%\u0011\u0001E\u0001\u0002\u000b\u0005V4g-\u001a:MS.,\u0007c\u0001\u0007\u0001\u001fA!1EJ\u0008)\u001b\u0005!#BA\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!a\n\u0013\u0003E\u001d+g.\u001a:jG\u000ec\u0017m]:UC\u001e$&/\u0019<feN\u000c\'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rU=\t\u0013BA\u0016\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!F\u0017\n\u000592!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\u0002\u0003\u0019\u0001\u0005\u000b\u0007I1A\u0019\u0002\u0007Q\u000cw-F\u00013!\r\u0019dgD\u0007\u0002i)\u0011QGB\u0001\u0008e\u00164G.Z2u\u0013\t9DG\u0001\u0005DY\u0006\u001c8\u000fV1h\u0011!I\u0004A!A!\u0002\u0013\u0011\u0014\u0001\u0002;bO\u0002BQa\u000f\u0001\u0005\u0002q\na\u0001P5oSRtD#A\u001f\u0015\u0005\u0005r\u0004\"\u0002\u0019;\u0001\u0008\u0011\u0004b\u0002!\u0001\u0001\u0004%I!Q\u0001\u0008Q\u0016\u000cG\r\u001d;s+\u0005\u0011\u0005cA\"|\u001f9\u0011A\u0002R\u0004\u0006\u000b\nA\tAR\u0001\u000f+:\u0014x\u000e\u001c7fI\n+hMZ3s!\taqIB\u0003\u0002\u0005!\u0005\u0001jE\u0002H\u00132\u00022a\t&)\u0013\tYEE\u0001\u000eDY\u0006\u001c8\u000fV1h)J\u000cg/\u001a:tC\ndWMR1di>\u0014\u0018\u0010C\u0003<\u000f\u0012\u0005Q\nF\u0001G\u0011\u0015yu\tb\u0001Q\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\t\tF\u000c\u0006\u0002S=B)1eU+\\;&\u0011A\u000b\n\u0002\r\u0007\u0006t\')^5mI\u001a\u0013x.\u001c\t\u0003-^k\u0011aR\u0005\u00031f\u0013AaQ8mY&\u0011!\u000c\n\u0002\u0019\u000f\u0016tWM]5d\u00072\u000c7o\u001d+bO\u000e{W\u000e]1oS>t\u0007C\u0001\t]\t\u0015\u0011bJ1\u0001\u0014!\ra\u0001a\u0017\u0005\u0006?:\u0003\u001d\u0001Y\u0001\u0002iB\u00191GN.\t\u000b\t<E\u0011A2\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u0002eOR\u0011Q-\u001b\t\u0005\u0019)2\u0007\u000e\u0005\u0002\u0011O\u0012)!#\u0019b\u0001\'A\u0019A\u0002\u00014\t\u000b}\u000b\u00079\u00016\u0011\u0007M2d\rC\u0004m\u000f\n\u0007I\u0011A7\u0002\u0013]\u000cG/\u001a:mS:,W#\u00018\u0011\u0005Uy\u0017B\u00019\u0007\u0005\rIe\u000e\u001e\u0005\u0007e\u001e\u0003\u000b\u0011\u00028\u0002\u0015]\u000cG/\u001a:mS:,\u0007\u0005C\u0004u\u000f\n\u0007I\u0011A7\u0002\u001d]\u000cG/\u001a:mS:,G)\u001a7j[\"1ao\u0012Q\u0001\n9\u000cqb^1uKJd\u0017N\\3EK2LW\u000e\t\u0005\tq\u001e\u0013\r\u0011\"\u0001\u0005[\u0006qQO\u001c:pY2,G\r\\3oORD\u0007B\u0002>HA\u0003%a.A\u0008v]J|G\u000e\\3eY\u0016tw\r\u001e5!\r\u0011ax\tA?\u0003\u0011Us\'o\u001c7mK\u0012,2A`A\u0016\'\tYx\u0010E\u0002\u0016\u0003\u0003I1!a\u0001\u0007\u0005\u0019\te.\u001f*fM\"I\u0011qA>\u0003\u0002\u0004%\t!\\\u0001\u0005g&TX\r\u0003\u0006\u0002\u000cm\u0014\t\u0019!C\u0001\u0003\u001b\t\u0001b]5{K~#S-\u001d\u000b\u0005\u0003\u001f\t)\u0002E\u0002\u0016\u0003#I1!a\u0005\u0007\u0005\u0011)f.\u001b;\t\u0013\u0005]\u0011\u0011BA\u0001\u0002\u0004q\u0017a\u0001=%c!I\u00111D>\u0003\u0002\u0003\u0006KA\\\u0001\u0006g&TX\r\t\u0005\u000b\u0003?Y(\u00111A\u0005\u0002\u0005\u0005\u0012!B1se\u0006LXCAA\u0012!\u0015)\u0012QEA\u0015\u0013\r\t9C\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004!\u0005-B!\u0002\n|\u0005\u0004\u0019\u0002BCA\u0018w\n\u0005\r\u0011\"\u0001\u00022\u0005I\u0011M\u001d:bs~#S-\u001d\u000b\u0005\u0003\u001f\t\u0019\u0004\u0003\u0006\u0002\u0018\u00055\u0012\u0011!a\u0001\u0003GA!\"a\u000e|\u0005\u0003\u0005\u000b\u0015BA\u0012\u0003\u0019\t\'O]1zA!Q\u00111H>\u0003\u0002\u0004%\t!!\u0010\u0002\t9,\u0007\u0010^\u000b\u0003\u0003\u007f\u0001BAV>\u0002*!Q\u00111I>\u0003\u0002\u0004%\t!!\u0012\u0002\u00119,\u0007\u0010^0%KF$B!a\u0004\u0002H!Q\u0011qCA!\u0003\u0003\u0005\r!a\u0010\t\u0015\u0005-3P!A!B\u0013\ty$A\u0003oKb$\u0008\u0005\u0003\u0006\u0002Pm\u0014)\u0019!C\u0001\u0003#\nAAY;gMV\u0011\u00111\u000b\t\u0005\u0019\u0001\tI\u0003\u0003\u0006\u0002Xm\u0014\t\u0011)A\u0005\u0003\'\nQAY;gM\u0002B!\"a\u0017|\u0005\u0007\u0005\u000b1BA/\u0003))g/\u001b3f]\u000e,G%\r\t\u0005gY\nI\u0003C\u0004<w\u0012\u0005A!!\u0019\u0015\u0015\u0005\r\u0014qMA5\u0003W\ni\u0007\u0006\u0003\u0002@\u0005\u0015\u0004\u0002CA.\u0003?\u0002\u001d!!\u0018\t\u000f\u0005\u001d\u0011q\u000ca\u0001]\"A\u0011qDA0\u0001\u0004\t\u0019\u0003\u0003\u0005\u0002<\u0005}\u0003\u0019AA \u0011)\ty%a\u0018\u0011\u0002\u0003\u0007\u00111\u000b\u0005\u0008wm$\t\u0001BA9)\t\t\u0019\u0008\u0006\u0003\u0002@\u0005U\u0004BCA<\u0003_\n\t\u0011q\u0001\u0002^\u0005QQM^5eK:\u001cW\r\n\u001a\t\u000fmZH\u0011\u0001\u0003\u0002|Q!\u0011QPAB)\u0011\ty$a \t\u0015\u0005\u0005\u0015\u0011PA\u0001\u0002\u0008\ti&\u0001\u0006fm&$WM\\2fIMB\u0001\"!\"\u0002z\u0001\u0007\u00111K\u0001\u0002E\"1\u0011\u0011R>\u0005\n5\u000c!B\\3yi2,gn\u001a;i\u0011\u001d\tii\u001fC\u0003\u0003\u001f\u000ba!\u00199qK:$G\u0003BA \u0003#C\u0001\"a%\u0002\u000c\u0002\u0007\u0011\u0011F\u0001\u0005K2,W\u000e\u000b\u0003\u0002\u000c\u0006]\u0005\u0003BAM\u0003?k!!a\'\u000b\u0007\u0005ue!\u0001\u0006b]:|G/\u0019;j_:LA!!)\u0002\u001c\n9A/Y5me\u0016\u001c\u0007bBASw\u0012\u0005\u0011qU\u0001\u0008M>\u0014X-Y2i+\u0011\tI+a.\u0015\t\u0005=\u00111\u0016\u0005\t\u0003[\u000b\u0019\u000b1\u0001\u00020\u0006\ta\rE\u0004\u0016\u0003c\u000bI#!.\n\u0007\u0005MfAA\u0005Gk:\u001cG/[8ocA\u0019\u0001#a.\u0005\u000f\u0005e\u00161\u0015b\u0001\'\t\tQ\u000bC\u0004\u0002>n$)!a0\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\t\u0005%\u0012\u0011\u0019\u0005\u0008\u0003\u0007\u000cY\u000c1\u0001o\u0003\rIG\r\u001f\u0015\u0005\u0003w\u000b9\nC\u0004\u0002Jn$)!a3\u0002\rU\u0004H-\u0019;f)\u0019\ty!!4\u0002P\"9\u00111YAd\u0001\u0004q\u0007\u0002CAi\u0003\u000f\u0004\r!!\u000b\u0002\u000f9,w/\u001a7f[\"\"\u0011qYAL\u0011\u001d\t9n\u001fC\u0003\u00033\u000ca\u0001\\8dCR,G\u0003BA \u00037Dq!a1\u0002V\u0002\u0007a\u000e\u000b\u0003\u0002V\u0006]\u0005bBAqw\u0012\u0005\u00111]\u0001\u0008aJ,\u0007/\u001a8e)\u0011\ty$!:\t\u0011\u0005M\u0015q\u001ca\u0001\u0003SAq!!;|\t\u0013\tY/\u0001\u0006tQ&4GO]5hQR$\"!a\u0004\t\u000f\u0005=8\u0010\"\u0002\u0002r\u00061!/Z7pm\u0016$b!!\u000b\u0002t\u0006U\u0008bBAb\u0003[\u0004\rA\u001c\u0005\t\u0003o\u000ci\u000f1\u0001\u0002T\u00051!-\u001e4gKJDC!!<\u0002\u0018\"9\u0011Q`>\u0005\n\u0005}\u0018!C:iS\u001a$H.\u001a4u)\u0011\tyA!\u0001\t\u000f\t\r\u00111 a\u0001]\u0006)A.\u001a4uE\"9!qA>\u0005\u0012\t%\u0011\u0001\u0005;ss6+\'oZ3XSRDg*\u001a=u)\t\u0011Y\u0001E\u0002\u0016\u0005\u001bI1Aa\u0004\u0007\u0005\u001d\u0011un\u001c7fC:DqAa\u0005|\t\u000b\u0011)\"A\u0005j]N,\'\u000f^!mYRA\u0011q\u0002B\u000c\u00053\u0011\u0019\u0003C\u0004\u0002D\nE\u0001\u0019\u00018\t\u000f}\u0013\t\u00021\u0001\u0003\u001cA1!Q\u0004B\u0010\u0003Si\u0011\u0001B\u0005\u0004\u0005C!!a\u0003+sCZ,\'o]1cY\u0016D\u0001\"a>\u0003\u0012\u0001\u0007\u00111\u000b\u0015\u0005\u0005#\t9\nC\u0004\u0003*m$IAa\u000b\u0002\u000f9,H\u000e\\8viR1\u0011q\u0002B\u0017\u0005cAqAa\u000c\u0003(\u0001\u0007a.\u0001\u0003ge>l\u0007b\u0002B\u001a\u0005O\u0001\rA\\\u0001\u0006k:$\u0018\u000e\u001c\u0005\u0008\u0005oYH\u0011\u0001B\u001d\u0003\u0011\u0011\u0017N\u001c3\u0015\t\t-!1\u0008\u0005\t\u0005{\u0011)\u00041\u0001\u0002@\u0005AA\u000f[1uQ\u0016\u000cG\rC\u0004\u0003Bm$\tEa\u0011\u0002\u0011Q|7\u000b\u001e:j]\u001e$\"A!\u0012\u0011\t\t\u001d#\u0011K\u0007\u0003\u0005\u0013RAAa\u0013\u0003N\u0005!A.\u00198h\u0015\t\u0011y%\u0001\u0003kCZ\u000c\u0017\u0002\u0002B*\u0005\u0013\u0012aa\u0015;sS:<w!\u0003B,\u000f\u0006\u0005\t\u0012\u0001B-\u0003!)fN]8mY\u0016$\u0007c\u0001,\u0003\\\u0019AApRA\u0001\u0012\u0003\u0011ifE\u0002\u0003\\}Dqa\u000fB.\t\u0003\u0011\t\u0007\u0006\u0002\u0003Z!Q!Q\rB.#\u0003%\tAa\u001a\u00027\u0011bWm]:j]&$He\u001a:fCR,\'\u000f\n3fM\u0006,H\u000e\u001e\u00135+\u0011\u0011IG!!\u0016\u0005\t-$\u0006\u0002B7\u0005g\u00022!\u0006B8\u0013\r\u0011\tH\u0002\u0002\u0005\u001dVdGn\u000b\u0002\u0003vA!!q\u000fB?\u001b\t\u0011IH\u0003\u0003\u0003|\u0005m\u0015!C;oG\",7m[3e\u0013\u0011\u0011yH!\u001f\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0002\u0004\u0013\u0005G\u0012\ra\u0005\u0005\n\u0005\u000b;\u0015\u0011!C\u0005\u0005\u000f\u000b1B]3bIJ+7o\u001c7wKR\u0011!\u0011\u0012\t\u0005\u0005\u000f\u0012Y)\u0003\u0003\u0003\u000e\n%#AB(cU\u0016\u001cG\u000fC\u0005\u0003\u0012\u0002\u0001\r\u0011\"\u0003\u0003\u0014\u0006Y\u0001.Z1eaR\u0014x\u000cJ3r)\u0011\tyA!&\t\u0013\u0005]!qRA\u0001\u0002\u0004\u0011\u0005b\u0002BM\u0001\u0001\u0006KAQ\u0001\tQ\u0016\u000cG\r\u001d;sA!\"!q\u0013BO!\r)\"qT\u0005\u0004\u0005C3!!\u0003;sC:\u001c\u0018.\u001a8u\u0011!\u0011)\u000b\u0001a\u0001\n\u0013\t\u0015a\u00027bgR\u0004HO\u001d\u0005\n\u0005S\u0003\u0001\u0019!C\u0005\u0005W\u000b1\u0002\\1tiB$(o\u0018\u0013fcR!\u0011q\u0002BW\u0011%\t9Ba*\u0002\u0002\u0003\u0007!\tC\u0004\u00032\u0002\u0001\u000b\u0015\u0002\"\u0002\u00111\u000c7\u000f\u001e9ue\u0002BCAa,\u0003\u001e\"A!q\u0017\u0001A\u0002\u0013%Q.\u0001\u0002tu\"I!1\u0018\u0001A\u0002\u0013%!QX\u0001\u0007gj|F%Z9\u0015\t\u0005=!q\u0018\u0005\n\u0003/\u0011I,!AA\u00029DqAa1\u0001A\u0003&a.A\u0002tu\u0002BCA!1\u0003\u001e\"9!\u0011\u001a\u0001\u0005\u0002\u0011\t\u0015a\u00025fC\u0012\u0004FO\u001d\u0005\t\u0005\u001b\u0004A\u0011\u0001\u0003\u0003P\u0006Y\u0001.Z1e!R\u0014x\u000cJ3r)\u0011\tyA!5\t\u000f\tM\'1\u001aa\u0001\u0005\u0006!\u0001.Z1e\u0011\u001d\u00119\u000e\u0001C\u0001\t\u0005\u000bq\u0001\\1tiB#(\u000f\u0003\u0005\u0003\\\u0002!\t\u0001\u0002Bo\u0003-a\u0017m\u001d;QiJ|F%Z9\u0015\t\u0005=!q\u001c\u0005\u0008\u0005C\u0014I\u000e1\u0001C\u0003\u0011a\u0017m\u001d;\t\u0011\u0005-\u0001\u0001\"\u0001\u0005\u0005K$B!a\u0004\u0003h\"9!\u0011\u001eBr\u0001\u0004q\u0017!A:\t\u000f\t\u0004\u0001\u0015\"\u0015\u0003nV\t\u0011\u0005\u0003\u0004\u0003r\u0002!\t\"Q\u0001\u000c]\u0016<XK\u001c:pY2,G\r\u0003\u0005\u0003v\u0002!\t\u0001\u0002B|\u00039\u0019\u0017\r\\2OKb$H*\u001a8hi\"$2A\u001cB}\u0011\u001d\u00119La=A\u00029DqA!@\u0001\t\u0003\u0011y0A\tdY\u0006\u001c8\u000fV1h\u0007>l\u0007/\u00198j_:,\u0012a\u0011\u0005\u0008\u0007\u0007\u0001A\u0011AB\u0003\u0003\u0019\u0019wN\\2biR\u0019\u0011ea\u0002\t\u000f\r%1\u0011\u0001a\u0001C\u0005!A\u000f[1u\u0011\u001d\u0019i\u0001\u0001C\u0001\u0007\u001f\t\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0007#\u0019\u0019\"D\u0001\u0001\u0011\u001d\t\u0019ja\u0003A\u0002=Aqaa\u0006\u0001\t\u0003\tY/A\u0003dY\u0016\u000c\'\u000fC\u0004\u0004\u001c\u0001!\ta!\u0008\u0002\u0011%$XM]1u_J,\"aa\u0008\u0011\u000b\tu1\u0011E\u0008\n\u0007\r\rBA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\t)\u000b\u0001C!\u0007O)Ba!\u000b\u00042Q!\u0011qBB\u0016\u0011!\tik!\nA\u0002\r5\u0002CB\u000b\u00022>\u0019y\u0003E\u0002\u0011\u0007c!q!!/\u0004&\t\u00071\u0003C\u0004\u00046\u0001!\taa\u000e\u0002\rI,7/\u001e7u)\u0005\t\u0003BBB\u001e\u0001\u0011\u0005Q.\u0001\u0004mK:<G\u000f\u001b\u0005\u0008\u0003{\u0003A\u0011AB )\ry1\u0011\t\u0005\u0008\u0003\u0007\u001ci\u00041\u0001o\u0011\u001d\tI\r\u0001C\u0001\u0007\u000b\"b!a\u0004\u0004H\r%\u0003bBAb\u0007\u0007\u0002\rA\u001c\u0005\u0008\u0003#\u001c\u0019\u00051\u0001\u0010\u0011\u001d\ty\u000f\u0001C\u0001\u0007\u001b\"2aDB(\u0011\u001d\t\u0019ma\u0013A\u00029Dqaa\u0015\u0001\t\u0003\u0019)&\u0001\u0008%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\t\rE1q\u000b\u0005\u0008\u0003\'\u001b\t\u00061\u0001\u0010\u0011\u001d\u0011\u0019\u0002\u0001C\u0001\u00077\"b!a\u0004\u0004^\r}\u0003bBAb\u00073\u0002\rA\u001c\u0005\t\u0007C\u001aI\u00061\u0001\u0004d\u0005)Q\r\\3ngB)!Q\u0004B\u0010\u001f!91q\r\u0001\u0005\n\r%\u0014aC<sSR,wJ\u00196fGR$B!a\u0004\u0004l!A1QNB3\u0001\u0004\u0019y\'A\u0002pkR\u0004Ba!\u001d\u0004x5\u001111\u000f\u0006\u0005\u0007k\u0012i%\u0001\u0002j_&!1\u0011PB:\u0005Iy%M[3di>+H\u000f];u\'R\u0014X-Y7\t\u000f\ru\u0004\u0001\"\u0003\u0004\u0000\u0005Q!/Z1e\u001f\nTWm\u0019;\u0015\t\u0005=1\u0011\u0011\u0005\t\u0007\u0007\u001bY\u00081\u0001\u0004\u0006\u0006\u0011\u0011N\u001c\t\u0005\u0007c\u001a9)\u0003\u0003\u0004\n\u000eM$!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"91Q\u0012\u0001\u0005B\r]\u0012!B2m_:,\u0007bBBI\u0001\u0011\u000531S\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005\u000bBs\u0001ABL\u0007;\u001b\t\u000bE\u0002\u0016\u00073K1aa\'\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\u000c#aa(\u0002\u0001Vs\'o\u001c7mK\u0012\u0014UO\u001a4fe\u0002J7\u000f\t8pi\u0002\"Wm]5h]\u0016$\u0007\u0005^8!K:\u000c\'\r\\3![\u0016\u000cg.\u001b8hMVd\u0007e];cG2\u000c7o]5oO:\n#aa)\u0002\rIr\u0013\'\r\u00181Q\u001d\u00011qUBW\u0007_\u00032!FBU\u0013\r\u0019YK\u0002\u0002\u0011\'\u0016\u0014\u0018.\u00197WKJ\u001c\u0018n\u001c8V\u0013\u0012\u000bQA^1mk\u0016t\u0012!\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private transient lastptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transient scala$collection$mutable$UnrolledBuffer$$headptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transient sz:I

.field private final tag:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer;->tag:Lscala/reflect/ClassTag;

    .line 48
    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/GenericClassTagTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericClassTagTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->newUnrolled()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 58
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer;->lastptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lscala/collection/mutable/UnrolledBuffer;->sz:I

    return-void
.end method

.method public static canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "*>;TT;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/UnrolledBuffer$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    return-object p0
.end method

.method public static empty(Lscala/reflect/ClassTag;)Lscala/collection/Traversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/UnrolledBuffer$;->empty(Lscala/reflect/ClassTag;)Lscala/collection/Traversable;

    move-result-object p0

    return-object p0
.end method

.method private lastptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer;->lastptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-object v0
.end method

.method private lastptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer;->lastptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 186
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->newUnrolled()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/mutable/UnrolledBuffer;->headPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 189
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/mutable/UnrolledBuffer;->lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, v1}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scala$collection$mutable$UnrolledBuffer$$headptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-void
.end method

.method private sz()I
    .locals 1

    .line 59
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer;->sz:I

    return v0
.end method

.method private sz_$eq(I)V
    .locals 0

    .line 59
    iput p1, p0, Lscala/collection/mutable/UnrolledBuffer;->sz:I

    return-void
.end method

.method public static waterline()I
    .locals 1

    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$;->waterline()I

    move-result v0

    return v0
.end method

.method public static waterlineDelim()I
    .locals 1

    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$;->waterlineDelim()I

    move-result v0

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 179
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 180
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$$anonfun$writeObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/UnrolledBuffer$$anonfun$writeObject$1;-><init>(Lscala/collection/mutable/UnrolledBuffer;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->foreach(Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/UnrolledBuffer;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->lastptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->append(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->lastptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 113
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->prepend(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 167
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    return-object p0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 152
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public calcNextLength(I)I
    .locals 0

    return p1
.end method

.method public classManifestCompanion()Lscala/collection/generic/GenericClassTagCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericClassTagCompanion<",
            "Lscala/collection/mutable/UnrolledBuffer;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/generic/GenericClassTagTraversableTemplate$class;->classManifestCompanion(Lscala/collection/generic/GenericClassTagTraversableTemplate;)Lscala/collection/generic/GenericClassTagCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic classTagCompanion()Lscala/collection/generic/GenericClassTagCompanion;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->classTagCompanion()Lscala/collection/mutable/UnrolledBuffer$;

    move-result-object v0

    return-object v0
.end method

.method public classTagCompanion()Lscala/collection/mutable/UnrolledBuffer$;
    .locals 1

    .line 86
    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->newUnrolled()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 119
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->lastptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->clone()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Buffer;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->clone()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/UnrolledBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->tag()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    invoke-virtual {v0, p0}, Lscala/collection/mutable/UnrolledBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/UnrolledBuffer;

    return-object v0
.end method

.method public concat(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;)",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->lastptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->bind(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->lastptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    invoke-direct {p1}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    .line 105
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->clear()V

    return-object p0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public genericClassManifestBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TB;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/generic/GenericClassTagTraversableTemplate$class;->genericClassManifestBuilder(Lscala/collection/generic/GenericClassTagTraversableTemplate;Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public genericClassTagBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TB;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/generic/GenericClassTagTraversableTemplate$class;->genericClassTagBuilder(Lscala/collection/generic/GenericClassTagTraversableTemplate;Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    return-object v0
.end method

.method public headPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    return-void
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TT;>;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->insertAll(ILscala/collection/Traversable;Lscala/collection/mutable/UnrolledBuffer;)V

    .line 174
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result p1

    invoke-interface {p2}, Lscala/collection/Traversable;->size()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    return-void

    .line 175
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;-><init>(Lscala/collection/mutable/UnrolledBuffer;)V

    return-object v0
.end method

.method public lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->lastptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    return-object v0
.end method

.method public lastPtr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->lastptr_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    return-void
.end method

.method public length()I
    .locals 1

    .line 149
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    return v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TT;TNewTo;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->newBuilder()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/UnrolledBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->tag()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public newUnrolled()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->tag()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    .line 162
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->remove(ILscala/collection/mutable/UnrolledBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->result()Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/UnrolledBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 47
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

    .line 47
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

    .line 47
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

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public size_$eq(I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->sz_$eq(I)V

    return-void
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "UnrolledBuffer"

    return-object v0
.end method

.method public tag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer;->tag:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 156
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer;->sz()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->update(ILjava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/UnrolledBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/UnrolledBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
