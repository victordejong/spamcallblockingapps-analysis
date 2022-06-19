.class public interface abstract Lscala/collection/IndexedSeqOptimized;
.super Ljava/lang/Object;
.source "IndexedSeqOptimized.scala"

# interfaces
.implements Lscala/collection/IndexedSeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IndexedSeqLike<",
        "TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r5a!C\u0001\u0003!\u0003\r\taBB\u0006\u0005MIe\u000eZ3yK\u0012\u001cV-](qi&l\u0017N_3e\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rA1CG\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\r\te.\u001f\t\u0005\u001d=\t\u0012$D\u0001\u0003\u0013\t\u0001\"A\u0001\u0008J]\u0012,\u00070\u001a3TKFd\u0015n[3\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\u0005\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0005\u000e\u0005\rm\u0001AQ1\u0001\u0016\u0005\u0011\u0011V\r\u001d:\t\u000bu\u0001A\u0011\u0001\u0010\u0002\r\u0011Jg.\u001b;%)\u0005y\u0002C\u0001\u0006!\u0013\t\tCA\u0001\u0003V]&$\u0008\"B\u0012\u0001\t\u0003\"\u0013aB5t\u000b6\u0004H/_\u000b\u0002KA\u0011!BJ\u0005\u0003O\u0011\u0011qAQ8pY\u0016\u000cg\u000eC\u0003*\u0001\u0011\u0005#&A\u0004g_J,\u0017m\u00195\u0016\u0005-\u0012DCA\u0010-\u0011\u0015i\u0003\u00061\u0001/\u0003\u00051\u0007\u0003\u0002\u00060#EJ!\u0001\r\u0003\u0003\u0013\u0019+hn\u0019;j_:\u000c\u0004C\u0001\n3\t\u0015\u0019\u0004F1\u0001\u0016\u0005\u0005)\u0006\"B\u001b\u0001\t\u00131\u0014\u0001\u00059sK\u001aL\u0007\u0010T3oORD\u0017*\u001c9m)\r9$(\u0010\t\u0003\u0015aJ!!\u000f\u0003\u0003\u0007%sG\u000fC\u0003<i\u0001\u0007A(A\u0001q!\u0011Qq&E\u0013\t\u000by\"\u0004\u0019A\u0013\u0002\u0015\u0015D\u0008/Z2u)J,X\rC\u0003A\u0001\u0011\u0005\u0013)\u0001\u0004g_J\u000cG\u000e\u001c\u000b\u0003K\tCQaO A\u0002qBQ\u0001\u0012\u0001\u0005B\u0015\u000ba!\u001a=jgR\u001cHCA\u0013G\u0011\u0015Y4\t1\u0001=\u0011\u0015A\u0005\u0001\"\u0011J\u0003\u00111\u0017N\u001c3\u0015\u0005)k\u0005c\u0001\u0006L#%\u0011A\n\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000bm:\u0005\u0019\u0001\u001f\t\u000b=\u0003A\u0011\u0002)\u0002\u000b\u0019|G\u000e\u001a7\u0016\u0005E\u001bF#\u0002*V/f[\u0006C\u0001\nT\t\u0015!fJ1\u0001\u0016\u0005\u0005\u0011\u0005\"\u0002,O\u0001\u00049\u0014!B:uCJ$\u0008\"\u0002-O\u0001\u00049\u0014aA3oI\")!L\u0014a\u0001%\u0006\t!\u0010C\u0003]\u001d\u0002\u0007Q,\u0001\u0002paB)!B\u0018*\u0012%&\u0011q\u000c\u0002\u0002\n\rVt7\r^5p]JB#AT1\u0011\u0005\t,W\"A2\u000b\u0005\u0011$\u0011AC1o]>$\u0018\r^5p]&\u0011am\u0019\u0002\u0008i\u0006LGN]3d\u0011\u0015A\u0007\u0001\"\u0003j\u0003\u00151w\u000e\u001c3s+\tQG\u000eF\u0003l[:|\u0007\u000f\u0005\u0002\u0013Y\u0012)Ak\u001ab\u0001+!)ak\u001aa\u0001o!)\u0001l\u001aa\u0001o!)!l\u001aa\u0001W\")Al\u001aa\u0001cB)!BX\tlW\"\u0012q-\u0019\u0005\u0006i\u0002!\t%^\u0001\tM>dG\rT3giV\u0011a/\u001f\u000b\u0003or$\"\u0001\u001f>\u0011\u0005IIH!\u0002+t\u0005\u0004)\u0002\"\u0002/t\u0001\u0004Y\u0008#\u0002\u0006_qFA\u0008\"\u0002.t\u0001\u0004A\u0008\"\u0002@\u0001\t\u0003z\u0018!\u00034pY\u0012\u0014\u0016n\u001a5u+\u0011\t\t!a\u0002\u0015\t\u0005\r\u0011Q\u0002\u000b\u0005\u0003\u000b\tI\u0001E\u0002\u0013\u0003\u000f!Q\u0001V?C\u0002UAa\u0001X?A\u0002\u0005-\u0001c\u0002\u0006_#\u0005\u0015\u0011Q\u0001\u0005\u00075v\u0004\r!!\u0002\t\u000f\u0005E\u0001\u0001\"\u0011\u0002\u0014\u0005Q!/\u001a3vG\u0016dUM\u001a;\u0016\t\u0005U\u0011\u0011\u0004\u000b\u0005\u0003/\ti\u0002E\u0002\u0013\u00033!q\u0001VA\u0008\u0005\u0004\tY\"\u0005\u0002\u0012\u0013!9A,a\u0004A\u0002\u0005}\u0001c\u0002\u0006_\u0003/\t\u0012q\u0003\u0005\u0008\u0003G\u0001A\u0011IA\u0013\u0003-\u0011X\rZ;dKJKw\r\u001b;\u0016\t\u0005\u001d\u00121\u0006\u000b\u0005\u0003S\ti\u0003E\u0002\u0013\u0003W!q\u0001VA\u0011\u0005\u0004\tY\u0002C\u0004]\u0003C\u0001\r!a\u000c\u0011\u000f)q\u0016#!\u000b\u0002*!9\u00111\u0007\u0001\u0005B\u0005U\u0012a\u0001>jaVA\u0011qGA-\u0003?\ni\u0004\u0006\u0003\u0002:\u0005\u0005D\u0003BA\u001e\u0003\u0003\u00022AEA\u001f\t\u001d\ty$!\rC\u0002U\u0011A\u0001\u00165bi\"A\u00111IA\u0019\u0001\u0008\t)%\u0001\u0002cMBI\u0011qIA\'3\u0005E\u00131H\u0007\u0003\u0003\u0013R1!a\u0013\u0003\u0003\u001d9WM\\3sS\u000eLA!a\u0014\u0002J\ta1)\u00198Ck&dGM\u0012:p[B9!\"a\u0015\u0002X\u0005u\u0013bAA+\t\t1A+\u001e9mKJ\u00022AEA-\t!\tY&!\rC\u0002\u0005m!AA!2!\r\u0011\u0012q\u000c\u0003\u0007)\u0006E\"\u0019A\u000b\t\u0011\u0005\r\u0014\u0011\u0007a\u0001\u0003K\nA\u0001\u001e5biB)a\"a\u001a\u0002^%\u0019\u0011\u0011\u000e\u0002\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\u0008\u0003[\u0002A\u0011IA8\u00031Q\u0018\u000e],ji\"Le\u000eZ3y+\u0019\t\t(a \u0002vQ!\u00111OA<!\r\u0011\u0012Q\u000f\u0003\u0008\u0003\u007f\tYG1\u0001\u0016\u0011!\t\u0019%a\u001bA\u0004\u0005e\u0004#CA$\u0003\u001bJ\u00121PA:!\u0019Q\u00111KA?oA\u0019!#a \u0005\u0011\u0005m\u00131\u000eb\u0001\u00037Aq!a!\u0001\t\u0003\n))A\u0003tY&\u001cW\rF\u0003\u001a\u0003\u000f\u000bY\tC\u0004\u0002\n\u0006\u0005\u0005\u0019A\u001c\u0002\t\u0019\u0014x.\u001c\u0005\u0008\u0003\u001b\u000b\t\t1\u00018\u0003\u0015)h\u000e^5m\u0011\u001d\t\t\n\u0001C!\u0003\'\u000bA\u0001[3bIV\t\u0011\u0003C\u0004\u0002\u0018\u0002!\t%!\'\u0002\tQ\u000c\u0017\u000e\\\u000b\u00023!9\u0011Q\u0014\u0001\u0005B\u0005M\u0015\u0001\u00027bgRDq!!)\u0001\t\u0003\nI*\u0001\u0003j]&$\u0008bBAS\u0001\u0011\u0005\u0013qU\u0001\u0005i\u0006\\W\rF\u0002\u001a\u0003SCq!a+\u0002$\u0002\u0007q\'A\u0001o\u0011\u001d\ty\u000b\u0001C!\u0003c\u000bA\u0001\u001a:paR\u0019\u0011$a-\t\u000f\u0005-\u0016Q\u0016a\u0001o!9\u0011q\u0017\u0001\u0005B\u0005e\u0016!\u0003;bW\u0016\u0014\u0016n\u001a5u)\rI\u00121\u0018\u0005\u0008\u0003W\u000b)\u000c1\u00018\u0011\u001d\ty\u000c\u0001C!\u0003\u0003\u000c\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007e\t\u0019\rC\u0004\u0002,\u0006u\u0006\u0019A\u001c\t\u000f\u0005\u001d\u0007\u0001\"\u0011\u0002J\u000691\u000f\u001d7ji\u0006#H\u0003BAf\u0003\u001b\u0004RACA*3eAq!a+\u0002F\u0002\u0007q\u0007C\u0004\u0002R\u0002!\t%a5\u0002\u0013Q\u000c7.Z,iS2,GcA\r\u0002V\"11(a4A\u0002qBq!!7\u0001\t\u0003\nY.A\u0005ee>\u0004x\u000b[5mKR\u0019\u0011$!8\t\rm\n9\u000e1\u0001=\u0011\u001d\t\t\u000f\u0001C!\u0003G\u000cAa\u001d9b]R!\u00111ZAs\u0011\u0019Y\u0014q\u001ca\u0001y!9\u0011\u0011\u001e\u0001\u0005B\u0005-\u0018\u0001D:b[\u0016,E.Z7f]R\u001cX\u0003BAw\u0003k$2!JAx\u0011!\t\u0019\'a:A\u0002\u0005E\u0008#\u0002\u0008\u0002h\u0005M\u0008c\u0001\n\u0002v\u00129A+a:C\u0002\u0005m\u0001bBA}\u0001\u0011\u0005\u00131`\u0001\u000cG>\u0004\u0018\u0010V8BeJ\u000c\u00170\u0006\u0003\u0002~\n-AcB\u0010\u0002\u0000\n5!q\u0002\u0005\t\u0005\u0003\t9\u00101\u0001\u0003\u0004\u0005\u0011\u0001p\u001d\t\u0006\u0015\t\u0015!\u0011B\u0005\u0004\u0005\u000f!!!B!se\u0006L\u0008c\u0001\n\u0003\u000c\u00119A+a>C\u0002\u0005m\u0001B\u0002,\u0002x\u0002\u0007q\u0007C\u0004\u0003\u0012\u0005]\u0008\u0019A\u001c\u0002\u00071,g\u000eC\u0004\u0003\u0016\u0001!\tEa\u0006\u0002\u001b1,gn\u001a;i\u0007>l\u0007/\u0019:f)\r9$\u0011\u0004\u0005\u0008\u0005#\u0011\u0019\u00021\u00018\u0011\u001d\u0011i\u0002\u0001C!\u0005?\tQb]3h[\u0016tG\u000fT3oORDG#B\u001c\u0003\"\t\r\u0002BB\u001e\u0003\u001c\u0001\u0007A\u0008C\u0004\u0002\n\nm\u0001\u0019A\u001c\t\u000f\t\u001d\u0002\u0001\"\u0003\u0003*\u0005Ia.Z4MK:<G\u000f\u001b\u000b\u0004o\t-\u0002bBAV\u0005K\u0001\ra\u000e\u0005\u0008\u0005_\u0001A\u0011\tB\u0019\u0003)Ig\u000eZ3y/\",\'/\u001a\u000b\u0006o\tM\"Q\u0007\u0005\u0007w\t5\u0002\u0019\u0001\u001f\t\u000f\u0005%%Q\u0006a\u0001o!9!\u0011\u0008\u0001\u0005B\tm\u0012A\u00047bgRLe\u000eZ3y/\",\'/\u001a\u000b\u0006o\tu\"q\u0008\u0005\u0007w\t]\u0002\u0019\u0001\u001f\t\ra\u00139\u00041\u00018\u0011\u001d\u0011\u0019\u0005\u0001C!\u00033\u000bqA]3wKJ\u001cX\rC\u0004\u0003H\u0001!\tE!\u0013\u0002\u001fI,g/\u001a:tK&#XM]1u_J,\"Aa\u0013\u0011\t9\u0011i%E\u0005\u0004\u0005\u001f\u0012!\u0001C%uKJ\u000cGo\u001c:\t\u000f\tM\u0003\u0001\"\u0011\u0003V\u0005Q1\u000f^1siN<\u0016\u000e\u001e5\u0016\t\t]#1\r\u000b\u0006K\te#Q\r\u0005\t\u0003G\u0012\t\u00061\u0001\u0003\\A)aB!\u0018\u0003b%\u0019!q\u000c\u0002\u0003\r\u001d+gnU3r!\r\u0011\"1\r\u0003\u0007)\nE#\u0019A\u000b\t\u000f\t\u001d$\u0011\u000ba\u0001o\u00051qN\u001a4tKRDqAa\u001b\u0001\t\u0003\u0012i\'\u0001\u0005f]\u0012\u001cx+\u001b;i+\u0011\u0011yGa\u001e\u0015\u0007\u0015\u0012\t\u0008\u0003\u0005\u0002d\t%\u0004\u0019\u0001B:!\u0015q!Q\u000cB;!\r\u0011\"q\u000f\u0003\u0007)\n%$\u0019A\u000b\t\u001d\tm\u0004\u0001%A\u0002\u0002\u0003%IA! \u0003\n\u0006\u00012/\u001e9fe\u0012\u0012X\rZ;dK2+g\r^\u000b\u0005\u0005\u007f\u0012\u0019\t\u0006\u0003\u0003\u0002\n\u0015\u0005c\u0001\n\u0003\u0004\u00129AK!\u001fC\u0002\u0005m\u0001b\u0002/\u0003z\u0001\u0007!q\u0011\t\u0008\u0015y\u0013\t)\u0005BA\u0013\u0011\t\tBa#\n\u0007\t5%AA\u0008Ue\u00064XM]:bE2,wJ\\2f\u00119\u0011\t\n\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002BJ\u0005?\u000b\u0011c];qKJ$#/\u001a3vG\u0016\u0014\u0016n\u001a5u+\u0011\u0011)J!\'\u0015\t\t]%1\u0014\t\u0004%\teEa\u0002+\u0003\u0010\n\u0007\u00111\u0004\u0005\u00089\n=\u0005\u0019\u0001BO!\u001dQa,\u0005BL\u0005/KA!a\t\u0003\"&\u0019!1\u0015\u0002\u0003\u0019%#XM]1cY\u0016d\u0015n[3\t\u001d\t\u001d\u0006\u0001%A\u0002\u0002\u0003%IA!+\u0003F\u0006I1/\u001e9fe\u0012R\u0018\u000e]\u000b\t\u0005W\u0013YLa0\u00032R!!Q\u0016Ba)\u0011\u0011yKa-\u0011\u0007I\u0011\t\u000cB\u0004\u0002@\t\u0015&\u0019A\u000b\t\u0011\u0005\r#Q\u0015a\u0002\u0005k\u0003\u0012\"a\u0012\u0002Ne\u00119La,\u0011\u000f)\t\u0019F!/\u0003>B\u0019!Ca/\u0005\u0011\u0005m#Q\u0015b\u0001\u00037\u00012A\u0005B`\t\u0019!&Q\u0015b\u0001+!A\u00111\rBS\u0001\u0004\u0011\u0019\rE\u0003\u000f\u0003O\u0012i,\u0003\u0003\u00024\t\u0005\u0006B\u0004Be\u0001A\u0005\u0019\u0011!A\u0005\n\u0005M%1Z\u0001\u000bgV\u0004XM\u001d\u0013iK\u0006$\u0017\u0002BAI\u0005CCaBa4\u0001!\u0003\r\t\u0011!C\u0005\u00033\u0013\t.\u0001\u0006tkB,\'\u000f\n;bS2LA!a&\u0003T&\u0019!Q\u001b\u0002\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.\u001a\'jW\u0016DaB!7\u0001!\u0003\r\t\u0011!C\u0005\u0003\'\u0013Y.\u0001\u0006tkB,\'\u000f\n7bgRLA!!(\u0003T\"q!q\u001c\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002\u001a\n\u0005\u0018AC:va\u0016\u0014H%\u001b8ji&!\u0011\u0011\u0015Bj\u00119\u0011)\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002Bt\u0005g\u000c!c];qKJ$3/Y7f\u000b2,W.\u001a8ugV!!\u0011\u001eBy)\r)#1\u001e\u0005\t\u0003G\u0012\u0019\u000f1\u0001\u0003nB)a\"a\u001a\u0003pB\u0019!C!=\u0005\u000fQ\u0013\u0019O1\u0001\u0002\u001c%!\u0011\u0011\u001eBQ\u00119\u00119\u0010\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002B}\u0007\u000b\tab];qKJ$SM\u001c3t/&$\u0008.\u0006\u0003\u0003|\u000e\rAcA\u0013\u0003~\"A\u00111\rB{\u0001\u0004\u0011y\u0010E\u0003\u000f\u0005;\u001a\t\u0001E\u0002\u0013\u0007\u0007!a\u0001\u0016B{\u0005\u0004)\u0012\u0002\u0002B6\u0007\u000fI1a!\u0003\u0003\u0005\u001d\u0019V-\u001d\'jW\u0016\u0004BA\u0004\u0001\u00123\u0001"
.end annotation


# virtual methods
.method public abstract copyToArray(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation
.end method

.method public abstract drop(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract dropRight(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract endsWith(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract exists(Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract find(Lscala/Function1;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract forall(Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract init()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract lengthCompare(I)I
.end method

.method public abstract reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract reverse()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract reverseIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract sameElements(Lscala/collection/GenIterable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end method

.method public abstract segmentLength(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract slice(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TRepr;"
        }
    .end annotation
.end method

.method public abstract span(Lscala/Function1;)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract splitAt(I)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract startsWith(Lscala/collection/GenSeq;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation
.end method

.method public abstract tail()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract take(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract takeRight(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
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
            "TRepr;",
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
            "TRepr;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation
.end method
