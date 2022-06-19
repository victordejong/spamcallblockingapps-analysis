.class public final Lscala/collection/immutable/HashMap$;
.super Lscala/collection/generic/ImmutableMapFactory;
.source "HashMap.scala"

# interfaces
.implements Lscala/collection/generic/BitOperations$Int;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableMapFactory<",
        "Lscala/collection/immutable/HashMap;",
        ">;",
        "Lscala/collection/generic/BitOperations$Int;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashMap$;


# instance fields
.field private final defaultMerger:Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashMap$Merger<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashMap$;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lscala/collection/generic/ImmutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->$init$(Lscala/collection/generic/BitOperations$Int;)V

    .line 144
    new-instance v0, Lscala/collection/immutable/HashMap$$anonfun$1;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap$$anonfun$1;-><init>()V

    new-instance v1, Lscala/collection/immutable/HashMap$$anon$2;

    invoke-direct {v1, v0}, Lscala/collection/immutable/HashMap$$anon$2;-><init>(Lscala/Function2;)V

    iput-object v1, p0, Lscala/collection/immutable/HashMap$;->defaultMerger:Lscala/collection/immutable/HashMap$Merger;

    return-void
.end method

.method private liftMerger0(Lscala/Function2;)Lscala/collection/immutable/HashMap$Merger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA1;TB1;>;",
            "Lscala/Tuple2<",
            "TA1;TB1;>;",
            "Lscala/Tuple2<",
            "TA1;TB1;>;>;)",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lscala/collection/immutable/HashMap$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/immutable/HashMap$$anon$2;-><init>(Lscala/Function2;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 132
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    return-object v0
.end method


# virtual methods
.method public bitString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->bitString(Lscala/collection/generic/BitOperations$Int;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bitString$default$2()Ljava/lang/String;
    .locals 1

    .line 132
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

    .line 132
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->bits(Lscala/collection/generic/BitOperations$Int;I)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/HashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public complement(I)I
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->complement(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 157
    sget-object v0, Lscala/collection/immutable/HashMap$EmptyHashMap$;->MODULE$:Lscala/collection/immutable/HashMap$EmptyHashMap$;

    return-object v0
.end method

.method public hasMatch(III)Z
    .locals 0

    .line 132
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/BitOperations$Int$class;->hasMatch(Lscala/collection/generic/BitOperations$Int;III)Z

    move-result p1

    return p1
.end method

.method public highestOneBit(I)I
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->highestOneBit(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public mask(II)I
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->mask(Lscala/collection/generic/BitOperations$Int;II)I

    move-result p1

    return p1
.end method

.method public scala$collection$immutable$HashMap$$bufferSize(I)I
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 529
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, p1}, Lscala/Predef$;->intWrapper(I)I

    move-result p1

    const/16 v1, 0xe0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    return p1
.end method

.method public scala$collection$immutable$HashMap$$keepBits(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    xor-int/2addr v1, p1

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    or-int/2addr v0, v1

    :cond_0
    not-int v1, v1

    and-int/2addr p1, v1

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public scala$collection$immutable$HashMap$$liftMerger(Lscala/Function2;)Lscala/collection/immutable/HashMap$Merger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA1;TB1;>;",
            "Lscala/Tuple2<",
            "TA1;TB1;>;",
            "Lscala/Tuple2<",
            "TA1;TB1;>;>;)",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA1;TB1;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lscala/collection/immutable/HashMap$;->defaultMerger:Lscala/collection/immutable/HashMap$Merger;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/collection/immutable/HashMap$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/immutable/HashMap$$anon$2;-><init>(Lscala/Function2;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;I",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;II)",
            "Lscala/collection/immutable/HashMap$HashTrieMap<",
            "TA;TB;>;"
        }
    .end annotation

    move/from16 v7, p6

    ushr-int v0, p1, p5

    and-int/lit8 v0, v0, 0x1f

    ushr-int v1, p3, p5

    and-int/lit8 v1, v1, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    shl-int v3, v2, v0

    shl-int v4, v2, v1

    or-int/2addr v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Lscala/collection/immutable/HashMap;

    if-ge v0, v1, :cond_0

    aput-object p2, v4, v8

    aput-object p4, v4, v2

    goto :goto_0

    :cond_0
    aput-object p4, v4, v8

    aput-object p2, v4, v2

    .line 175
    :goto_0
    new-instance v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {v0, v3, v4, v7}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_1

    :cond_1
    new-array v9, v2, [Lscala/collection/immutable/HashMap;

    shl-int v10, v2, v0

    add-int/lit8 v5, p5, 0x5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v6, p6

    .line 179
    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object v0

    aput-object v0, v9, v8

    .line 180
    new-instance v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {v0, v10, v9, v7}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    :goto_1
    return-object v0
.end method

.method public scala$collection$immutable$HashMap$$nullToEmpty(Lscala/collection/immutable/HashMap;)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 535
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public shorter(II)Z
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->shorter(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public unsignedCompare(II)Z
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->unsignedCompare(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public zero(II)Z
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->zero(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method
