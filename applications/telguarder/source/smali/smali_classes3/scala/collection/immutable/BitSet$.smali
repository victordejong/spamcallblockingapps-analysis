.class public final Lscala/collection/immutable/BitSet$;
.super Ljava/lang/Object;
.source "BitSet.scala"

# interfaces
.implements Lscala/collection/generic/BitSetFactory;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/BitSetFactory<",
        "Lscala/collection/immutable/BitSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/BitSet$;


# instance fields
.field private final empty:Lscala/collection/immutable/BitSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/BitSet$;

    invoke-direct {v0}, Lscala/collection/immutable/BitSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-static {p0}, Lscala/collection/generic/BitSetFactory$class;->$init$(Lscala/collection/generic/BitSetFactory;)V

    .line 69
    new-instance v0, Lscala/collection/immutable/BitSet$BitSet1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/BitSet$BitSet1;-><init>(J)V

    iput-object v0, p0, Lscala/collection/immutable/BitSet$;->empty:Lscala/collection/immutable/BitSet;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 67
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/BitSet;
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lscala/collection/generic/BitSetFactory$class;->apply(Lscala/collection/generic/BitSetFactory;Lscala/collection/Seq;)Lscala/collection/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lscala/collection/generic/BitSetFactory$class;->bitsetCanBuildFrom(Lscala/collection/generic/BitSetFactory;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/BitSet;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/BitSet;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/BitSet;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/BitSet;
    .locals 1

    .line 69
    iget-object v0, p0, Lscala/collection/immutable/BitSet$;->empty:Lscala/collection/immutable/BitSet;

    return-object v0
.end method

.method public fromBitMask([J)Lscala/collection/immutable/BitSet;
    .locals 7

    .line 84
    array-length v5, p1

    if-nez v5, :cond_0

    .line 85
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v5, v1, :cond_1

    .line 86
    new-instance v1, Lscala/collection/immutable/BitSet$BitSet1;

    aget-wide v2, p1, v0

    invoke-direct {v1, v2, v3}, Lscala/collection/immutable/BitSet$BitSet1;-><init>(J)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v5, v2, :cond_2

    .line 87
    new-instance v2, Lscala/collection/immutable/BitSet$BitSet2;

    aget-wide v3, p1, v0

    aget-wide v0, p1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lscala/collection/immutable/BitSet$BitSet2;-><init>(JJ)V

    move-object p1, v2

    goto :goto_0

    .line 89
    :cond_2
    new-array v6, v5, [J

    .line 90
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    new-instance p1, Lscala/collection/immutable/BitSet$BitSetN;

    invoke-direct {p1, v6}, Lscala/collection/immutable/BitSet$BitSetN;-><init>([J)V

    :goto_0
    return-object p1
.end method

.method public fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;
    .locals 5

    .line 99
    array-length v0, p1

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 101
    new-instance v0, Lscala/collection/immutable/BitSet$BitSet1;

    aget-wide v1, p1, v1

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/BitSet$BitSet1;-><init>(J)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 102
    new-instance v0, Lscala/collection/immutable/BitSet$BitSet2;

    aget-wide v3, p1, v1

    aget-wide v1, p1, v2

    invoke-direct {v0, v3, v4, v1, v2}, Lscala/collection/immutable/BitSet$BitSet2;-><init>(JJ)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Lscala/collection/immutable/BitSet$BitSetN;

    invoke-direct {v0, p1}, Lscala/collection/immutable/BitSet$BitSetN;-><init>([J)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/BitSet;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lscala/collection/immutable/BitSet$$anon$1;

    invoke-direct {v0}, Lscala/collection/immutable/BitSet$$anon$1;-><init>()V

    return-object v0
.end method
