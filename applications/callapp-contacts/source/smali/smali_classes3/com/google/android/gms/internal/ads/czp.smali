.class final Lcom/google/android/gms/internal/ads/czp;
.super Lcom/google/android/gms/internal/ads/czc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/czc<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/gms/internal/ads/czd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czd<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/android/gms/internal/ads/cyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cyz<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/czd;Lcom/google/android/gms/internal/ads/cyz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/czd<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/ads/cyz<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/czc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czp;->a:Lcom/google/android/gms/internal/ads/czd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/czp;->b:Lcom/google/android/gms/internal/ads/cyz;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cyt;->e()Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cyt;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/android/gms/internal/ads/czu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/czu<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cyt;->e()Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/czu;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czp;->a:Lcom/google/android/gms/internal/ads/czd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/czd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/cyz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cyz<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czp;->b:Lcom/google/android/gms/internal/ads/cyz;

    return-object v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cyt;->a()Lcom/google/android/gms/internal/ads/czu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czp;->a:Lcom/google/android/gms/internal/ads/czd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/czd;->size()I

    move-result v0

    return v0
.end method
