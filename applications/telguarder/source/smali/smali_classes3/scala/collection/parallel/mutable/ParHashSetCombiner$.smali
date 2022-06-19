.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$;
.super Ljava/lang/Object;
.source "ParHashSet.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;


# instance fields
.field private final discriminantbits:I

.field private final discriminantmask:I

.field private final nonmasklength:I

.field private final numblocks:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    const/4 v0, 0x5

    .line 322
    iput v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits:I

    .line 323
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->numblocks:I

    .line 324
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits()I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantmask:I

    .line 325
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->nonmasklength:I

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 327
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$1;-><init>()V

    return-object v0
.end method

.method public discriminantbits()I
    .locals 1

    .line 322
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantbits:I

    return v0
.end method

.method public discriminantmask()I
    .locals 1

    .line 324
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->discriminantmask:I

    return v0
.end method

.method public nonmasklength()I
    .locals 1

    .line 325
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->nonmasklength:I

    return v0
.end method

.method public numblocks()I
    .locals 1

    .line 323
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->numblocks:I

    return v0
.end method
