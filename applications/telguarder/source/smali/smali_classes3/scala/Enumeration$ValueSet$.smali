.class public Lscala/Enumeration$ValueSet$;
.super Ljava/lang/Object;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueSet$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/Enumeration;

.field private final empty:Lscala/Enumeration$ValueSet;


# direct methods
.method public constructor <init>(Lscala/Enumeration;)V
    .locals 2

    .line 268
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$ValueSet$;->$outer:Lscala/Enumeration;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lscala/Enumeration$ValueSet;

    sget-object v1, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v1}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    iput-object v0, p0, Lscala/Enumeration$ValueSet$;->empty:Lscala/Enumeration$ValueSet;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 268
    iget-object v0, p0, Lscala/Enumeration$ValueSet$;->$outer:Lscala/Enumeration;

    invoke-virtual {v0}, Lscala/Enumeration;->ValueSet()Lscala/Enumeration$ValueSet$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/Enumeration$ValueSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Lscala/Enumeration$Value;",
            ">;)",
            "Lscala/Enumeration$ValueSet;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Enumeration$ValueSet;

    return-object p1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/Enumeration$ValueSet;",
            "Lscala/Enumeration$Value;",
            "Lscala/Enumeration$ValueSet;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Lscala/Enumeration$ValueSet$$anon$2;

    invoke-direct {v0, p0}, Lscala/Enumeration$ValueSet$$anon$2;-><init>(Lscala/Enumeration$ValueSet$;)V

    return-object v0
.end method

.method public empty()Lscala/Enumeration$ValueSet;
    .locals 1

    .line 272
    iget-object v0, p0, Lscala/Enumeration$ValueSet$;->empty:Lscala/Enumeration$ValueSet;

    return-object v0
.end method

.method public fromBitMask([J)Lscala/Enumeration$ValueSet;
    .locals 3

    .line 277
    new-instance v0, Lscala/Enumeration$ValueSet;

    iget-object v1, p0, Lscala/Enumeration$ValueSet$;->$outer:Lscala/Enumeration;

    sget-object v2, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v2, p1}, Lscala/collection/immutable/BitSet$;->fromBitMask([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Enumeration$Value;",
            "Lscala/Enumeration$ValueSet;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Lscala/Enumeration$ValueSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/Enumeration$ValueSet$$anon$1;-><init>(Lscala/Enumeration$ValueSet$;)V

    return-object v0
.end method

.method public synthetic scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;
    .locals 1

    .line 268
    iget-object v0, p0, Lscala/Enumeration$ValueSet$;->$outer:Lscala/Enumeration;

    return-object v0
.end method
