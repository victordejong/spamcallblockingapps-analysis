.class public final Lscala/util/hashing/ByteswapHashing;
.super Ljava/lang/Object;
.source "ByteswapHashing.scala"

# interfaces
.implements Lscala/util/hashing/Hashing;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/util/hashing/ByteswapHashing$Chained;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/util/hashing/Hashing<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001a3A!\u0001\u0002\u0003\u0013\ty!)\u001f;fg^\u000c\u0007\u000fS1tQ&twM\u0003\u0002\u0004\t\u00059\u0001.Y:iS:<\'BA\u0003\u0007\u0003\u0011)H/\u001b7\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b+M\u0019\u0001aC\u0008\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011q\u0001S1tQ&tw\r\u0005\u0002\u0015+1\u0001A!\u0002\u000c\u0001\u0005\u00049\"!\u0001+\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\u0005\u0006?\u0001!\t\u0001I\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0005\u00022\u0001\u0005\u0001\u0014\u0011\u0015\u0019\u0003\u0001\"\u0001%\u0003\u0011A\u0017m\u001d5\u0015\u0005\u0015B\u0003C\u0001\u0007\'\u0013\t9cAA\u0002J]RDQ!\u000b\u0012A\u0002M\t\u0011A^\u0004\u0006W\tA\t\u0001L\u0001\u0010\u0005f$Xm]<ba\"\u000b7\u000f[5oOB\u0011\u0001#\u000c\u0004\u0006\u0003\tA\tAL\n\u0004[-y\u0003C\u0001\u00071\u0013\t\tdA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003 [\u0011\u00051\u0007F\u0001-\r\u0011)T\u0006\u0002\u001c\u0003\u000f\rC\u0017-\u001b8fIV\u0011qGO\n\u0004i-A\u0004c\u0001\t\u0012sA\u0011AC\u000f\u0003\u0006-Q\u0012\ra\u0006\u0005\tyQ\u0012\t\u0011)A\u0005q\u0005\t\u0001\u000eC\u0003 i\u0011\u0005a\u0008\u0006\u0002@\u0003B\u0019\u0001\tN\u001d\u000e\u00035BQ\u0001P\u001fA\u0002aBQa\t\u001b\u0005\u0002\r#\"!\n#\t\u000b%\u0012\u0005\u0019A\u001d\t\u000b\u0019kC\u0011A$\u0002\u000b\rD\u0017-\u001b8\u0016\u0005![ECA%M!\r\u0001\u0012C\u0013\t\u0003)-#QAF#C\u0002]AQ\u0001P#A\u0002%CqAT\u0017\u0002\u0002\u0013%q*A\u0006sK\u0006$\'+Z:pYZ,G#\u0001)\u0011\u0005E3V\"\u0001*\u000b\u0005M#\u0016\u0001\u00027b]\u001eT\u0011!V\u0001\u0005U\u00064\u0018-\u0003\u0002X%\n1qJ\u00196fGR\u0004"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chain(Lscala/util/hashing/Hashing;)Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/hashing/Hashing<",
            "TT;>;)",
            "Lscala/util/hashing/Hashing<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/ByteswapHashing$;->MODULE$:Lscala/util/hashing/ByteswapHashing$;

    invoke-virtual {v0, p0}, Lscala/util/hashing/ByteswapHashing$;->chain(Lscala/util/hashing/Hashing;)Lscala/util/hashing/Hashing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 21
    sget-object v0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result p1

    return p1
.end method
