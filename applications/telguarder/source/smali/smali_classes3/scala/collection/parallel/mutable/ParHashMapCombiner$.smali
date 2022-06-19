.class public final Lscala/collection/parallel/mutable/ParHashMapCombiner$;
.super Ljava/lang/Object;
.source "ParHashMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;


# instance fields
.field private final discriminantbits:I

.field private final discriminantmask:I

.field private final nonmasklength:I

.field private final numblocks:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    const/4 v0, 0x5

    .line 296
    iput v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantbits:I

    .line 297
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantbits()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks:I

    .line 298
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantbits()I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantmask:I

    .line 299
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantbits()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    iput v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->nonmasklength:I

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 301
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anon$1;-><init>()V

    return-object v0
.end method

.method public discriminantbits()I
    .locals 1

    .line 296
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantbits:I

    return v0
.end method

.method public discriminantmask()I
    .locals 1

    .line 298
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->discriminantmask:I

    return v0
.end method

.method public nonmasklength()I
    .locals 1

    .line 299
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->nonmasklength:I

    return v0
.end method

.method public numblocks()I
    .locals 1

    .line 297
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks:I

    return v0
.end method
