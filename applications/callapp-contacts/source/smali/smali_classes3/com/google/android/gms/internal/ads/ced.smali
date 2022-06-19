.class final synthetic Lcom/google/android/gms/internal/ads/ced;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ced;->a:Lcom/google/android/gms/internal/ads/cee;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ced;->a:Lcom/google/android/gms/internal/ads/cee;

    .line 1006
    new-instance v1, Lcom/google/android/gms/internal/ads/cef;

    .line 1007
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cee;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1009
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dH:Lcom/google/android/gms/internal/ads/af;

    .line 1010
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1011
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cee;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "mobileads_consent"

    .line 1014
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "fc_consent"

    .line 1015
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cee;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaz(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/google/android/gms/internal/ads/cef;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ceg;)V

    return-object v1
.end method
