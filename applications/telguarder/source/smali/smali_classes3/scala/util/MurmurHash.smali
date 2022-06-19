.class public Lscala/util/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.scala"

# interfaces
.implements Lscala/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function1<",
        "TT;",
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t%c\u0001B\u0001\u0003\u0001\u001d\u0011!\"T;s[V\u0014\u0008*Y:i\u0015\t\u0019A!\u0001\u0003vi&d\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001BE\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB!!B\u0004\t0\u0013\tyAAA\u0005Gk:\u001cG/[8ocA\u0011\u0011C\u0005\u0007\u0001\t%\u0019\u0002\u0001)A\u0001\u0002\u000b\u0007ACA\u0001U#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=)\rIardI\u0014,!\tQQ$\u0003\u0002\u001f\t\tY1\u000f]3dS\u0006d\u0017N_3ec\u0011!\u0003%\t\u0012\u000f\u0005)\t\u0013B\u0001\u0012\u0005\u0003\rIe\u000e^\u0019\u0005I\u0011*cE\u0004\u0002\u000bK%\u0011a\u0005B\u0001\u0005\u0019>tw-\r\u0003%Q%RcB\u0001\u0006*\u0013\tQC!A\u0003GY>\u000cG/\r\u0003%Y5rcB\u0001\u0006.\u0013\tqC!\u0001\u0004E_V\u0014G.\u001a\t\u0003\u0015AJ!!\r\u0003\u0003\tUs\u0017\u000e\u001e\u0005\tg\u0001\u0011\t\u0011)A\u0005i\u0005!1/Z3e!\tQQ\'\u0003\u00027\t\t\u0019\u0011J\u001c;\t\u000ba\u0002A\u0011A\u001d\u0002\rqJg.\u001b;?)\tQD\u0008E\u0002<\u0001Ai\u0011A\u0001\u0005\u0006g]\u0002\r\u0001\u000e\u0005\u0008}\u0001\u0001\r\u0011\"\u0003@\u0003\u0005AW#\u0001\u001b\t\u000f\u0005\u0003\u0001\u0019!C\u0005\u0005\u0006)\u0001n\u0018\u0013fcR\u0011qf\u0011\u0005\u0008\t\u0002\u000b\t\u00111\u00015\u0003\rAH%\r\u0005\u0007\r\u0002\u0001\u000b\u0015\u0002\u001b\u0002\u0005!\u0004\u0003b\u0002%\u0001\u0001\u0004%IaP\u0001\u0002G\"9!\n\u0001a\u0001\n\u0013Y\u0015!B2`I\u0015\u000cHCA\u0018M\u0011\u001d!\u0015*!AA\u0002QBaA\u0014\u0001!B\u0013!\u0014AA2!\u0011\u001d\u0001\u0006\u00011A\u0005\n}\n\u0011a\u001b\u0005\u0008%\u0002\u0001\r\u0011\"\u0003T\u0003\u0015Yw\u000cJ3r)\tyC\u000bC\u0004E#\u0006\u0005\t\u0019\u0001\u001b\t\rY\u0003\u0001\u0015)\u00035\u0003\tY\u0007\u0005C\u0004Y\u0001\u0001\u0007I\u0011B-\u0002\r!\u000c7\u000f[3e+\u0005Q\u0006C\u0001\u0006\\\u0013\taFAA\u0004C_>dW-\u00198\t\u000fy\u0003\u0001\u0019!C\u0005?\u0006Q\u0001.Y:iK\u0012|F%Z9\u0015\u0005=\u0002\u0007b\u0002#^\u0003\u0003\u0005\rA\u0017\u0005\u0007E\u0002\u0001\u000b\u0015\u0002.\u0002\u000f!\u000c7\u000f[3eA!9A\r\u0001a\u0001\n\u0013y\u0014!\u00035bg\"4\u0018\r\\;f\u0011\u001d1\u0007\u00011A\u0005\n\u001d\u000cQ\u0002[1tQZ\u000cG.^3`I\u0015\u000cHCA\u0018i\u0011\u001d!U-!AA\u0002QBaA\u001b\u0001!B\u0013!\u0014A\u00035bg\"4\u0018\r\\;fA!)A\u000e\u0001C\u0001[\u0006)!/Z:fiR\tq\u0006C\u0003p\u0001\u0011\u0005\u0001/A\u0003baBd\u0017\u0010\u0006\u00020c\")!O\u001ca\u0001!\u0005\tA\u000fC\u0003u\u0001\u0011\u0005Q/\u0001\u0004baB,g\u000e\u001a\u000b\u0003_YDQa^:A\u0002Q\n\u0011!\u001b\u0005\u0006s\u0002!\taP\u0001\u0005Q\u0006\u001c\u0008\u000eC\u0003|\u0001\u0011\u0005C0\u0001\u0005iCND7i\u001c3f)\u0005!\u0004F\u0002\u0001\u007f\u0003\u0007\t9\u0001\u0005\u0002\u000b\u007f&\u0019\u0011\u0011\u0001\u0003\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0002\u0006\u0005\u0019Sk]3!i\",\u0007e\u001c2kK\u000e$\u0008%T;s[V\u0014\u0008*Y:ig\u0001Jgn\u001d;fC\u0012t\u0013EAA\u0005\u0003\u0019\u0011d&\r\u0019/a\u001d9\u0011Q\u0002\u0002\t\u0002\u0005=\u0011AC\'ve6,(\u000fS1tQB\u00191(!\u0005\u0007\r\u0005\u0011\u0001\u0012AA\n\'\r\t\t\"\u0003\u0005\u0008q\u0005EA\u0011AA\u000c)\t\ty\u0001\u0003\u0006\u0002\u001c\u0005E!\u0019!C\u0007\u0003;\tAB^5tS\ndW-T1hS\u000e,\"!a\u0008\u0010\u0005\u0005\u0005R\u0004BL\u001f\'mD\u0011\"!\n\u0002\u0012\u0001\u0006i!a\u0008\u0002\u001bYL7/\u001b2mK6\u000bw-[2!\u0011)\tI#!\u0005C\u0002\u00135\u00111F\u0001\rQ&$G-\u001a8NC\u001eL7-Q\u000b\u0003\u0003[y!!a\u000c\u001e\tU%vg\"\u0005\n\u0003g\t\t\u0002)A\u0007\u0003[\tQ\u0002[5eI\u0016tW*Y4jG\u0006\u0003\u0003BCA\u001c\u0003#\u0011\r\u0011\"\u0004\u0002:\u0005a\u0001.\u001b3eK:l\u0015mZ5d\u0005V\u0011\u00111H\u0008\u0003\u0003{iBAKllL!I\u0011\u0011IA\tA\u00035\u00111H\u0001\u000eQ&$G-\u001a8NC\u001eL7M\u0011\u0011\t\u0015\u0005\u0015\u0013\u0011\u0003b\u0001\n\u001b\t9%\u0001\u0007wSNL\'\r\\3NSb,\'/\u0006\u0002\u0002J=\u0011\u00111J\u000f\u0005%r?\u001f\u0006C\u0005\u0002P\u0005E\u0001\u0015!\u0004\u0002J\u0005ia/[:jE2,W*\u001b=fe\u0002B!\"a\u0015\u0002\u0012\t\u0007IQBA+\u00031A\u0017\u000e\u001a3f]6K\u00070\u001a:B+\t\t9f\u0004\u0002\u0002Zu!10`\u000b\u001d\u0012%\ti&!\u0005!\u0002\u001b\t9&A\u0007iS\u0012$WM\\\'jq\u0016\u0014\u0018\t\t\u0005\u000b\u0003C\n\tB1A\u0005\u000e\u0005\r\u0014\u0001\u00045jI\u0012,g.T5yKJ\u0014UCAA3\u001f\t\t9\'\u0008\u0003l\u001d\u00104\n\"CA6\u0003#\u0001\u000bQBA3\u00035A\u0017\u000e\u001a3f]6K\u00070\u001a:CA!Q\u0011qNA\t\u0005\u0004%i!!\u001d\u0002\u0017\u0019Lg.\u00197NSb,\'/M\u000b\u0003\u0003gz!!!\u001e\u001e\t\u0015]/z\u001b\u0005\n\u0003s\n\t\u0002)A\u0007\u0003g\nABZ5oC2l\u0015\u000e_3sc\u0001B!\"! \u0002\u0012\t\u0007IQBA@\u0003-1\u0017N\\1m\u001b&DXM\u001d\u001a\u0016\u0005\u0005\u0005uBAAB;\u0011\u0011-Wl\u001b\t\u0013\u0005\u001d\u0015\u0011\u0003Q\u0001\u000e\u0005\u0005\u0015\u0001\u00044j]\u0006dW*\u001b=feJ\u0002\u0003BCAF\u0003#\u0011\r\u0011\"\u0004\u0002\u000e\u0006Q1/Z3e\'R\u0014\u0018N\\4\u0016\u0005\u0005=uBAAI;\u001190z j\t\u0013\u0005U\u0015\u0011\u0003Q\u0001\u000e\u0005=\u0015aC:fK\u0012\u001cFO]5oO\u0002B!\"!\'\u0002\u0012\t\u0007IQBAN\u0003%\u0019X-\u001a3BeJ\u000c\u00170\u0006\u0002\u0002\u001e>\u0011\u0011qT\u000f\u0005y\u001dQ\u0015\rC\u0005\u0002$\u0006E\u0001\u0015!\u0004\u0002\u001e\u0006Q1/Z3e\u0003J\u0014\u0018-\u001f\u0011\t\u0015\u0005\u001d\u0016\u0011\u0003b\u0001\n\u0003\tI+\u0001\u0007ti>\u0014X\rZ\'bO&\u001c\u0017)\u0006\u0002\u0002,B!!\"!,5\u0013\r\ty\u000b\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\n\u0003g\u000b\t\u0002)A\u0005\u0003W\u000bQb\u001d;pe\u0016$W*Y4jG\u0006\u0003\u0003BCA\\\u0003#\u0011\r\u0011\"\u0001\u0002*\u0006a1\u000f^8sK\u0012l\u0015mZ5d\u0005\"I\u00111XA\tA\u0003%\u00111V\u0001\u000egR|\'/\u001a3NC\u001eL7M\u0011\u0011\t\u0011\u0005}\u0016\u0011\u0003C\u0001\u0003\u0003\u000c\u0011b\u001d;beRD\u0015m\u001d5\u0015\u0007Q\n\u0019\r\u0003\u00044\u0003{\u0003\r\u0001\u000e\u0005\u0008\u0003\u000f\u000c\t\u0002\"\u0001@\u0003-\u0019H/\u0019:u\u001b\u0006<\u0017nY!\t\u000f\u0005-\u0017\u0011\u0003C\u0001\u007f\u0005Y1\u000f^1si6\u000bw-[2C\u0011!\ty-!\u0005\u0005\u0002\u0005E\u0017AC3yi\u0016tG\rS1tQRIA\'a5\u0002V\u0006e\u0017Q\u001c\u0005\u0007s\u00065\u0007\u0019\u0001\u001b\t\u000f\u0005]\u0017Q\u001aa\u0001i\u0005)a/\u00197vK\"9\u00111\\Ag\u0001\u0004!\u0014AB7bO&\u001c\u0017\tC\u0004\u0002`\u00065\u0007\u0019\u0001\u001b\u0002\r5\u000cw-[2C\u0011!\t\u0019/!\u0005\u0005\u0002\u0005\u0015\u0018A\u00038fqRl\u0015mZ5d\u0003R\u0019A\'a:\t\u000f\u0005m\u0017\u0011\u001da\u0001i!A\u00111^A\t\t\u0003\ti/\u0001\u0006oKb$X*Y4jG\n#2\u0001NAx\u0011\u001d\ty.!;A\u0002QB\u0001\"a=\u0002\u0012\u0011\u0005\u0011Q_\u0001\rM&t\u0017\r\\5{K\"\u000b7\u000f\u001b\u000b\u0004i\u0005]\u0008BB=\u0002r\u0002\u0007A\u0007\u0003\u0005\u0002|\u0006EA\u0011AA\u007f\u0003%\t\'O]1z\u0011\u0006\u001c\u0008.\u0006\u0003\u0002\u0000\n%Ac\u0001\u001b\u0003\u0002!A!1AA}\u0001\u0004\u0011)!A\u0001b!\u0015Q\u0011Q\u0016B\u0004!\r\t\"\u0011\u0002\u0003\u000b\'\u0005e\u0008\u0015!A\u0001\u0006\u0004!\u0002f\u0001B\u00059!A!qBA\t\t\u0003\u0011\t\"\u0001\u0006tiJLgn\u001a%bg\"$2\u0001\u000eB\n\u0011!\u0011)B!\u0004A\u0002\t]\u0011!A:\u0011\t\te!q\u0004\u0008\u0004\u0015\tm\u0011b\u0001B\u000f\t\u00051\u0001K]3eK\u001aLAA!\t\u0003$\t11\u000b\u001e:j]\u001eT1A!\u0008\u0005\u0011!\u00119#!\u0005\u0005\u0002\t%\u0012!D:z[6,GO]5d\u0011\u0006\u001c\u0008.\u0006\u0003\u0003,\t}B#\u0002\u001b\u0003.\t\u0005\u0003\u0002\u0003B\u0018\u0005K\u0001\rA!\r\u0002\u0005a\u001c\u0008C\u0002B\u001a\u0005s\u0011i$\u0004\u0002\u00036)\u0019!q\u0007\u0003\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0003\u0003<\tU\"a\u0004+sCZ,\'o]1cY\u0016|enY3\u0011\u0007E\u0011y\u0004\u0002\u0004\u0014\u0005K\u0011\r\u0001\u0006\u0005\u0007g\t\u0015\u0002\u0019\u0001\u001b)\u000f\u0005Ea0a\u0001\u0002\u0008!:\u0011\u0011\u0003@\u0002\u0004\u0005\u001d\u0001fBA\u0006}\u0006\r\u0011q\u0001"
.end annotation


# instance fields
.field private hashvalue:I

.field private scala$util$MurmurHash$$c:I

.field private scala$util$MurmurHash$$h:I

.field private scala$util$MurmurHash$$hashed:Z

.field private scala$util$MurmurHash$$k:I

.field private final seed:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    iput p1, p0, Lscala/util/MurmurHash;->seed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    .line 35
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p1}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result p1

    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h:I

    const p1, -0x6aabc879

    .line 36
    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c:I

    const p1, 0x2ad7eb25

    .line 37
    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed:Z

    .line 39
    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h()I

    move-result p1

    iput p1, p0, Lscala/util/MurmurHash;->hashvalue:I

    return-void
.end method

.method public static arrayHash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->arrayHash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static extendHash(IIII)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p0

    return p0
.end method

.method public static finalizeHash(I)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p0

    return p0
.end method

.method private hashvalue()I
    .locals 1

    .line 39
    iget v0, p0, Lscala/util/MurmurHash;->hashvalue:I

    return v0
.end method

.method private hashvalue_$eq(I)V
    .locals 0

    .line 39
    iput p1, p0, Lscala/util/MurmurHash;->hashvalue:I

    return-void
.end method

.method public static nextMagicA(I)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p0

    return p0
.end method

.method public static nextMagicB(I)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result p0

    return p0
.end method

.method private scala$util$MurmurHash$$hashed()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed:Z

    return v0
.end method

.method public static startHash(I)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result p0

    return p0
.end method

.method public static startMagicA()I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0}, Lscala/util/MurmurHash$;->startMagicA()I

    move-result v0

    return v0
.end method

.method public static startMagicB()I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0}, Lscala/util/MurmurHash$;->startMagicB()I

    move-result v0

    return v0
.end method

.method public static storedMagicA()[I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0}, Lscala/util/MurmurHash$;->storedMagicA()[I

    move-result-object v0

    return-object v0
.end method

.method public static storedMagicB()[I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0}, Lscala/util/MurmurHash$;->storedMagicB()[I

    move-result-object v0

    return-object v0
.end method

.method public static stringHash(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0}, Lscala/util/MurmurHash$;->stringHash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static symmetricHash(Lscala/collection/TraversableOnce;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;I)I"
        }
    .end annotation

    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p0, p1}, Lscala/util/MurmurHash$;->symmetricHash(Lscala/collection/TraversableOnce;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/runtime/BoxedUnit;",
            "TA;>;)",
            "Lscala/Function1<",
            "TT;TA;>;"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->andThen(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public append(I)V
    .locals 4

    .line 59
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h()I

    move-result v1

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c()I

    move-result v2

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h_$eq(I)V

    .line 60
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c_$eq(I)V

    .line 61
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k_$eq(I)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed_$eq(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h()I

    move-result v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c()I

    move-result v2

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h_$eq(I)V

    .line 52
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c_$eq(I)V

    .line 53
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k_$eq(I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed_$eq(Z)V

    return-void
.end method

.method public apply$mcD$sp(D)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcF$sp(F)V
    .locals 0

    .line 50
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcI$sp(I)V
    .locals 0

    .line 50
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJ$sp(J)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TT;>;)",
            "Lscala/Function1<",
            "TA;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public hash()I
    .locals 2

    .line 67
    invoke-direct {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lscala/util/MurmurHash;->hashvalue_$eq(I)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed_$eq(Z)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lscala/util/MurmurHash;->hashvalue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lscala/util/MurmurHash;->hash()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 43
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    iget v1, p0, Lscala/util/MurmurHash;->seed:I

    invoke-virtual {v0, v1}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h_$eq(I)V

    const v0, -0x6aabc879

    .line 44
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c_$eq(I)V

    const v0, 0x2ad7eb25

    .line 45
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k_$eq(I)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed_$eq(Z)V

    return-void
.end method

.method public scala$util$MurmurHash$$c()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c:I

    return v0
.end method

.method public scala$util$MurmurHash$$c_$eq(I)V
    .locals 0

    .line 36
    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$c:I

    return-void
.end method

.method public scala$util$MurmurHash$$h()I
    .locals 1

    .line 35
    iget v0, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h:I

    return v0
.end method

.method public scala$util$MurmurHash$$h_$eq(I)V
    .locals 0

    .line 35
    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$h:I

    return-void
.end method

.method public scala$util$MurmurHash$$hashed_$eq(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$hashed:Z

    return-void
.end method

.method public scala$util$MurmurHash$$k()I
    .locals 1

    .line 37
    iget v0, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k:I

    return v0
.end method

.method public scala$util$MurmurHash$$k_$eq(I)V
    .locals 0

    .line 37
    iput p1, p0, Lscala/util/MurmurHash;->scala$util$MurmurHash$$k:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
