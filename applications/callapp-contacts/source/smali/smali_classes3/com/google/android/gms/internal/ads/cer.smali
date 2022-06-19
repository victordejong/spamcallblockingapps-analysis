.class final synthetic Lcom/google/android/gms/internal/ads/cer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ces;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ces;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cer;->a:Lcom/google/android/gms/internal/ads/ces;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cer;->a:Lcom/google/android/gms/internal/ads/ces;

    .line 1017
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dy:Lcom/google/android/gms/internal/ads/af;

    .line 1018
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1019
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ces;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ces;->c:Ljava/util/Set;

    const-string v2, "banner"

    .line 1020
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    new-instance v1, Lcom/google/android/gms/internal/ads/cep;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ces;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cep;-><init>(Ljava/lang/Boolean;)V

    return-object v1

    .line 1022
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dz:Lcom/google/android/gms/internal/ads/af;

    .line 1023
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1024
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ces;->c:Ljava/util/Set;

    const-string v2, "native"

    .line 1025
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ces;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1026
    new-instance v1, Lcom/google/android/gms/internal/ads/cep;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ces;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ces;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cep;-><init>(Ljava/lang/Boolean;)V

    return-object v1

    .line 1027
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cep;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cep;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method
