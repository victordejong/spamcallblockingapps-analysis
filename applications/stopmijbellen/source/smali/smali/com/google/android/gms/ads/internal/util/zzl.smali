.class final Lcom/google/android/gms/ads/internal/util/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbmf;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbmh;

.field public final synthetic zzb:Landroid/content/Context;

.field public final synthetic zzc:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzt;Lcom/google/android/gms/internal/ads/zzbmh;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zza()Lp/e;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Lp/e;->c:Landroid/content/ComponentName;

    .line 4
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lp/e;->b:La/a;

    check-cast v0, La/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v4, "android.support.customtabs.extra.SESSION"

    .line 7
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 12
    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1, v3}, Ld0/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    .line 15
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmh;->zzf(Landroid/app/Activity;)V

    return-void
.end method
