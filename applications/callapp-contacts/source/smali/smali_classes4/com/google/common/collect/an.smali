.class public abstract Lcom/google/common/collect/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/an<",
            "TT;>;"
        }
    .end annotation

    .line 182
    instance-of v0, p0, Lcom/google/common/collect/an;

    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Lcom/google/common/collect/an;

    return-object p0

    .line 184
    :cond_0
    new-instance v0, Lcom/google/common/collect/m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static b()Lcom/google/common/collect/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/an<",
            "TC;>;"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/common/collect/al;->a:Lcom/google/common/collect/al;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/an<",
            "TS;>;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/google/common/collect/as;

    invoke-direct {v0, p0}, Lcom/google/common/collect/as;-><init>(Lcom/google/common/collect/an;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/base/Function;)Lcom/google/common/collect/an;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lcom/google/common/collect/an<",
            "TF;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/google/common/collect/h;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/h;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/an;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
