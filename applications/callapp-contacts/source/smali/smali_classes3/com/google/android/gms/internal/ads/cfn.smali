.class final synthetic Lcom/google/android/gms/internal/ads/cfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cfk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfn;->a:Lcom/google/android/gms/internal/ads/cfk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfn;->a:Lcom/google/android/gms/internal/ads/cfk;

    .line 1007
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->cT:Lcom/google/android/gms/internal/ads/af;

    .line 1008
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1009
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cfk;->b:Ljava/util/Set;

    const-string v2, "rewarded"

    .line 2001
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "interstitial"

    .line 2002
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "native"

    .line 2003
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "banner"

    .line 2004
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 1010
    new-instance v1, Lcom/google/android/gms/internal/ads/cfl;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cfk;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qt;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cfl;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1011
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cfl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cfl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
