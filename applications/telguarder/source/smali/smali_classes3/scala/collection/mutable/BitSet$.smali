.class public final Lscala/collection/mutable/BitSet$;
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
        "Lscala/collection/mutable/BitSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/BitSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/BitSet$;

    invoke-direct {v0}, Lscala/collection/mutable/BitSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    invoke-static {p0}, Lscala/collection/generic/BitSetFactory$class;->$init$(Lscala/collection/generic/BitSetFactory;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 181
    sget-object v0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/BitSet;
    .locals 0

    .line 181
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

    .line 181
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
            "Lscala/collection/mutable/BitSet;",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/BitSet;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet$;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/BitSet;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet$;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/BitSet;
    .locals 1

    .line 182
    new-instance v0, Lscala/collection/mutable/BitSet;

    invoke-direct {v0}, Lscala/collection/mutable/BitSet;-><init>()V

    return-object v0
.end method

.method public fromBitMask([J)Lscala/collection/mutable/BitSet;
    .locals 7

    .line 192
    array-length v5, p1

    .line 193
    new-array v6, v5, [J

    .line 194
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    new-instance p1, Lscala/collection/mutable/BitSet;

    invoke-direct {p1, v6}, Lscala/collection/mutable/BitSet;-><init>([J)V

    return-object p1
.end method

.method public fromBitMaskNoCopy([J)Lscala/collection/mutable/BitSet;
    .locals 1

    .line 201
    new-instance v0, Lscala/collection/mutable/BitSet;

    invoke-direct {v0, p1}, Lscala/collection/mutable/BitSet;-><init>([J)V

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/BitSet;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Lscala/collection/mutable/GrowingBuilder;

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet$;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v0
.end method
