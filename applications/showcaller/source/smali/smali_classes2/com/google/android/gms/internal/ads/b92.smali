.class public final Lcom/google/android/gms/internal/ads/b92;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/c92;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s03;Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/s03;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b92;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b92;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b92;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/c92;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b92;->c:Ljava/util/Set;

    const-string v1, "rewarded"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "interstitial"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "native"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "banner"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/c92;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b92;->b:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/gb0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/c92;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/c92;

    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/c92;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/c92;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b92;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/a92;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/a92;-><init>(Lcom/google/android/gms/internal/ads/b92;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
