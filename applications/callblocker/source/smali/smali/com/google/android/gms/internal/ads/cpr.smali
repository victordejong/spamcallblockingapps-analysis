.class final Lcom/google/android/gms/internal/ads/cpr;
.super Lcom/google/android/gms/internal/ads/cpk;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpk",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/gms/internal/ads/cpg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpg",
            "<TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/android/gms/internal/ads/cpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpg;Lcom/google/android/gms/internal/ads/cpc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpg",
            "<TK;*>;",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpr;->a:Lcom/google/android/gms/internal/ads/cpg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cpr;->b:Lcom/google/android/gms/internal/ads/cpc;

    .line 4
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cpb;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpy",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpr;->a:Lcom/google/android/gms/internal/ads/cpg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cpg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpr;->b:Lcom/google/android/gms/internal/ads/cpc;

    return-object v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->a()Lcom/google/android/gms/internal/ads/cpy;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpr;->a:Lcom/google/android/gms/internal/ads/cpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpg;->size()I

    move-result v0

    return v0
.end method
