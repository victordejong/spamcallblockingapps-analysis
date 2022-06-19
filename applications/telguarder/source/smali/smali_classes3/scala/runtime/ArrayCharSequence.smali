.class public final Lscala/runtime/ArrayCharSequence;
.super Ljava/lang/Object;
.source "SeqCharSequence.scala"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r3A!\u0001\u0002\u0003\u000f\t\t\u0012I\u001d:bs\u000eC\u0017M]*fcV,gnY3\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011c\u0001\u0001\t!A\u0011\u0011BD\u0007\u0002\u0015)\u00111\u0002D\u0001\u0005Y\u0006twMC\u0001\u000e\u0003\u0011Q\u0017M^1\n\u0005=Q!AB(cU\u0016\u001cG\u000f\u0005\u0002\n#%\u0011!C\u0003\u0002\r\u0007\"\u000c\'oU3rk\u0016t7-\u001a\u0005\t)\u0001\u0011)\u0019!C\u0001+\u0005\u0011\u0001p]\u000b\u0002-A\u0019q\u0003\u0007\u000e\u000e\u0003\u0011I!!\u0007\u0003\u0003\u000b\u0005\u0013(/Y=\u0011\u0005]Y\u0012B\u0001\u000f\u0005\u0005\u0011\u0019\u0005.\u0019:\t\u0011y\u0001!\u0011!Q\u0001\nY\t1\u0001_:!\u0011!\u0001\u0003A!A!\u0002\u0013\t\u0013!B:uCJ$\u0008CA\u000c#\u0013\t\u0019CAA\u0002J]RD\u0001\"\n\u0001\u0003\u0002\u0003\u0006I!I\u0001\u0004K:$\u0007\"B\u0014\u0001\t\u0003A\u0013A\u0002\u001fj]&$h\u0008\u0006\u0003*W1j\u0003C\u0001\u0016\u0001\u001b\u0005\u0011\u0001\"\u0002\u000b\'\u0001\u00041\u0002\"\u0002\u0011\'\u0001\u0004\t\u0003\"B\u0013\'\u0001\u0004\t\u0003\"B\u0018\u0001\t\u0003\u0001\u0014A\u00027f]\u001e$\u0008\u000eF\u0001\"\u0011\u0015\u0011\u0004\u0001\"\u00014\u0003\u0019\u0019\u0007.\u0019:BiR\u0011!\u0004\u000e\u0005\u0006kE\u0002\r!I\u0001\u0006S:$W\r\u001f\u0005\u0006o\u0001!\t\u0001O\u0001\u000cgV\u00147+Z9vK:\u001cW\rF\u0002\u0011smBQA\u000f\u001cA\u0002\u0005\naa\u001d;beR\u0004\u0004\"\u0002\u001f7\u0001\u0004\t\u0013\u0001B3oIBBQA\u0010\u0001\u0005B}\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002\u0001B\u0011\u0011\"Q\u0005\u0003\u0005*\u0011aa\u0015;sS:<\u0007"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final xs:[C


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 24
    iput-object p1, p0, Lscala/runtime/ArrayCharSequence;->xs:[C

    iput p2, p0, Lscala/runtime/ArrayCharSequence;->start:I

    iput p3, p0, Lscala/runtime/ArrayCharSequence;->end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    if-ltz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->xs()[C

    move-result-object v0

    iget v1, p0, Lscala/runtime/ArrayCharSequence;->start:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public length()I
    .locals 3

    .line 31
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    iget v1, p0, Lscala/runtime/ArrayCharSequence;->end:I

    iget v2, p0, Lscala/runtime/ArrayCharSequence;->start:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/math/package$;->max(II)I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p2, p1, :cond_0

    .line 40
    new-instance p1, Lscala/runtime/ArrayCharSequence;

    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->xs()[C

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lscala/runtime/ArrayCharSequence;-><init>([CII)V

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    .line 43
    iget v0, p0, Lscala/runtime/ArrayCharSequence;->start:I

    add-int/2addr v0, p1

    .line 44
    new-instance p1, Lscala/runtime/ArrayCharSequence;

    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->xs()[C

    move-result-object v1

    add-int/2addr p2, v0

    invoke-direct {p1, v1, v0, p2}, Lscala/runtime/ArrayCharSequence;-><init>([CII)V

    :goto_0
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 38
    :cond_2
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 48
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    iget v1, p0, Lscala/runtime/ArrayCharSequence;->start:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->max(II)I

    move-result v0

    .line 49
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->xs()[C

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lscala/math/package$;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lscala/runtime/ArrayCharSequence;->xs()[C

    move-result-object v3

    sub-int/2addr v1, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public xs()[C
    .locals 1

    .line 24
    iget-object v0, p0, Lscala/runtime/ArrayCharSequence;->xs:[C

    return-object v0
.end method
