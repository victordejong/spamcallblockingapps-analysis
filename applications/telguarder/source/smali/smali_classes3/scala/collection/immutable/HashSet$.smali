.class public final Lscala/collection/immutable/HashSet$;
.super Lscala/collection/generic/ImmutableSetFactory;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSetFactory<",
        "Lscala/collection/immutable/HashSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashSet$;

    invoke-direct {v0}, Lscala/collection/immutable/HashSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 217
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/HashSet<",
            "*>;TA;",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public emptyInstance()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lscala/collection/immutable/HashSet$EmptyHashSet$;->MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;

    return-object v0
.end method

.method public bridge synthetic emptyInstance()Lscala/collection/immutable/Set;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$;->emptyInstance()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public scala$collection$immutable$HashSet$$bufferSize(I)I
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 989
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {v1, p1}, Lscala/Predef$;->intWrapper(I)I

    move-result p1

    const/16 v1, 0xe0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    return p1
.end method

.method public scala$collection$immutable$HashSet$$keepBits(II)I
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

.method public scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet$HashTrieSet<",
            "TA;>;"
        }
    .end annotation

    ushr-int v0, p1, p5

    and-int/lit8 v0, v0, 0x1f

    ushr-int v1, p3, p5

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    shl-int p1, v3, v0

    shl-int p3, v3, v1

    or-int/2addr p1, p3

    const/4 p3, 0x2

    new-array p3, p3, [Lscala/collection/immutable/HashSet;

    if-ge v0, v1, :cond_0

    aput-object p2, p3, v2

    aput-object p4, p3, v3

    goto :goto_0

    :cond_0
    aput-object p4, p3, v2

    aput-object p2, p3, v3

    .line 239
    :goto_0
    new-instance p5, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p2}, Lscala/collection/immutable/HashSet;->size()I

    move-result p2

    invoke-virtual {p4}, Lscala/collection/immutable/HashSet;->size()I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p5, p1, p3, p2}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_1

    :cond_1
    new-array v1, v3, [Lscala/collection/immutable/HashSet;

    shl-int v0, v3, v0

    add-int/lit8 v8, p5, 0x5

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 243
    invoke-virtual/range {v3 .. v8}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p1

    aput-object p1, v1, v2

    .line 245
    new-instance p5, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result p1

    invoke-direct {p5, v0, v1, p1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    :goto_1
    return-object p5
.end method

.method public scala$collection$immutable$HashSet$$nullToEmpty(Lscala/collection/immutable/HashSet;)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 995
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object p1
.end method

.method public scala$collection$immutable$HashSet$$unsignedCompare(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v2

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    xor-int/2addr p1, v0

    return p1
.end method
