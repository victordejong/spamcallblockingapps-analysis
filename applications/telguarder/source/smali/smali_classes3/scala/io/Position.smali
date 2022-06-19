.class public abstract Lscala/io/Position;
.super Ljava/lang/Object;
.source "Position.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\u00111!\u0001\u0003)pg&$\u0018n\u001c8\u000b\u0005\r!\u0011AA5p\u0015\u0005)\u0011!B:dC2\u000c7C\u0001\u0001\u0008!\tA\u0011\"D\u0001\u0005\u0013\tQAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u0019\u0001!\tAD\u0001\u0007y%t\u0017\u000e\u001e \u0004\u0001Q\tq\u0002\u0005\u0002\u0011\u00015\t!\u0001C\u0003\u0013\u0001\u0019\u00051#\u0001\u0006dQ\u0016\u001c7.\u00138qkR$2\u0001F\u000c\u001d!\tAQ#\u0003\u0002\u0017\t\t!QK\\5u\u0011\u0015A\u0012\u00031\u0001\u001a\u0003\u0011a\u0017N\\3\u0011\u0005!Q\u0012BA\u000e\u0005\u0005\rIe\u000e\u001e\u0005\u0006;E\u0001\r!G\u0001\u0007G>dW/\u001c8\t\u000f}\u0001!\u0019!C\u0003A\u0005IA*\u0013(F?\nKEkU\u000b\u0002C=\t!%H\u0001\u0015\u0011\u0019!\u0003\u0001)A\u0007C\u0005QA*\u0013(F?\nKEk\u0015\u0011\t\u000f\u0019\u0002!\u0019!C\u0003O\u0005Y1i\u0014\'V\u001b:{&)\u0013+T+\u0005As\"A\u0015\u001e\u0003-Aaa\u000b\u0001!\u0002\u001bA\u0013\u0001D\"P\u0019Vkej\u0018\"J)N\u0003\u0003bB\u0017\u0001\u0005\u0004%)AL\u0001\n\u0019&sUiX\'B\'.+\u0012aL\u0008\u0002au\u0019qb\u0000\u0000\t\rI\u0002\u0001\u0015!\u00040\u0003)a\u0015JT#`\u001b\u0006\u001b6\n\t\u0005\u0008i\u0001\u0011\r\u0011\"\u00026\u0003-\u0019u\nT+N\u001d~k\u0015iU&\u0016\u0003Yz\u0011aN\u000f\u0003\u000f}Ha!\u000f\u0001!\u0002\u001b1\u0014\u0001D\"P\u0019VkejX\'B\'.\u0003\u0003\"B\u001e\u0001\t\u000ba\u0014AB3oG>$W\rF\u0002\u001a{yBQ\u0001\u0007\u001eA\u0002eAQ!\u0008\u001eA\u0002eAQ\u0001\u0007\u0001\u0005\u0006\u0001#\"!G!\t\u000b\t{\u0004\u0019A\r\u0002\u0007A|7\u000fC\u0003\u001e\u0001\u0011\u0015A\t\u0006\u0002\u001a\u000b\")!i\u0011a\u00013!)q\t\u0001C\u0001\u0011\u0006AAo\\*ue&tw\r\u0006\u0002J!B\u0011!*\u0014\u0008\u0003\u0011-K!\u0001\u0014\u0003\u0002\rA\u0013X\rZ3g\u0013\tquJ\u0001\u0004TiJLgn\u001a\u0006\u0003\u0019\u0012AQA\u0011$A\u0002eAC\u0001\u0001*V/B\u0011\u0001bU\u0005\u0003)\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u00051\u0016a\u0007+iSN\u00043\r\\1tg\u0002:\u0018\u000e\u001c7!E\u0016\u0004#/Z7pm\u0016$g&I\u0001Y\u0003\u0019\u0011d&\r\u0019/a\u001d1!L\u0001E\u0001\tm\u000b\u0001\u0002U8tSRLwN\u001c\t\u0003!q3a!\u0001\u0002\t\u0002\u0011i6C\u0001/\u0010\u0011\u0015aA\u000c\"\u0001`)\u0005Y\u0006\"\u0002\n]\t\u0003\tGc\u0001\u000bcG\")\u0001\u0004\u0019a\u00013!)Q\u0004\u0019a\u00013!\"ALU+X\u0001"
.end annotation


# instance fields
.field private final COLUMN_BITS:I

.field private final COLUMN_MASK:I

.field private final LINE_BITS:I

.field private final LINE_MASK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final COLUMN_BITS()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public final COLUMN_MASK()I
    .locals 1

    const/16 v0, 0x7ff

    return v0
.end method

.method public final LINE_BITS()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final LINE_MASK()I
    .locals 1

    const v0, 0xfffff

    return v0
.end method

.method public abstract checkInput(II)V
.end method

.method public final column(I)I
    .locals 0

    and-int/lit16 p1, p1, 0x7ff

    return p1
.end method

.method public final encode(II)I
    .locals 2

    .line 53
    invoke-virtual {p0, p1, p2}, Lscala/io/Position;->checkInput(II)V

    const v0, 0xfffff

    if-lt p1, v0, :cond_0

    const p1, 0x7ffff800

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0xb

    .line 58
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/16 v1, 0x7ff

    invoke-virtual {v0, v1, p2}, Lscala/math/package$;->min(II)I

    move-result p2

    or-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public final line(I)I
    .locals 1

    shr-int/lit8 p1, p1, 0xb

    const v0, 0xfffff

    and-int/2addr p1, v0

    return p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lscala/io/Position;->line(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lscala/io/Position;->column(I)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
