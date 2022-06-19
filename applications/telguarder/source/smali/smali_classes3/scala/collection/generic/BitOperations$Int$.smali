.class public Lscala/collection/generic/BitOperations$Int$;
.super Ljava/lang/Object;
.source "BitOperations.scala"

# interfaces
.implements Lscala/collection/generic/BitOperations$Int;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/BitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Int$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/generic/BitOperations$Int$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/BitOperations$Int$;

    invoke-direct {v0}, Lscala/collection/generic/BitOperations$Int$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/BitOperations$Int$;->MODULE$:Lscala/collection/generic/BitOperations$Int$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->$init$(Lscala/collection/generic/BitOperations$Int;)V

    return-void
.end method


# virtual methods
.method public bitString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->bitString(Lscala/collection/generic/BitOperations$Int;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bitString$default$2()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->bitString$default$2(Lscala/collection/generic/BitOperations$Int;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bits(I)Lscala/collection/immutable/IndexedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->bits(Lscala/collection/generic/BitOperations$Int;I)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public complement(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->complement(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public hasMatch(III)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/BitOperations$Int$class;->hasMatch(Lscala/collection/generic/BitOperations$Int;III)Z

    move-result p1

    return p1
.end method

.method public highestOneBit(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->highestOneBit(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public mask(II)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->mask(Lscala/collection/generic/BitOperations$Int;II)I

    move-result p1

    return p1
.end method

.method public shorter(II)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->shorter(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public unsignedCompare(II)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->unsignedCompare(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public zero(II)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->zero(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method
