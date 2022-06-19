.class final Lcom/google/android/gms/internal/ads/q9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/h9;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/h9;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/h9;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q9;->b:Lcom/google/android/gms/internal/ads/h9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/p9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p9<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/q9;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q9;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q9;->b:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h9;->b()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/p9;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/j9;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/ads/o9;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/o9<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q9;->d:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q9;->b:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/h9;->a(I)Lcom/google/android/gms/internal/ads/h9;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/q9;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/o9;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/p9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p9<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q9;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q9;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q9;->b:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->b()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/h9;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/h9;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/q9;->b:Lcom/google/android/gms/internal/ads/h9;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/q9;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/p9;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/j9;)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/q9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/q9;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q9;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
