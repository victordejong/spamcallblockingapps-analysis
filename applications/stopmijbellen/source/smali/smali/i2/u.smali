.class public final synthetic Li2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b;

.field public final synthetic b:Li2/d;

.field public final synthetic c:Li2/e;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Li2/d;Li2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/u;->a:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Li2/u;->b:Li2/d;

    iput-object p3, p0, Li2/u;->c:Li2/e;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Li2/u;->a:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Li2/u;->b:Li2/d;

    iget-object v2, p0, Li2/u;->c:Li2/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "BillingClient"

    .line 1
    iget-object v4, v1, Li2/d;->a:Ljava/lang/String;

    :try_start_0
    const-string v5, "Consuming purchase with token: "

    .line 2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3
    :cond_0
    new-instance v6, Ljava/lang/String;

    .line 4
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_0
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/billingclient/api/b;->k:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/16 v6, 0x9

    iget-object v7, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 5
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/billingclient/api/b;->k:Z

    iget-object v0, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    .line 6
    invoke-static {v1, v8, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzd(Li2/d;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7
    invoke-interface {v5, v6, v7, v4, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/4 v5, 0x3

    iget-object v0, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-interface {v1, v5, v0, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    .line 13
    :goto_1
    :try_start_1
    new-instance v5, Li2/c;

    invoke-direct {v5}, Li2/c;-><init>()V

    .line 14
    iput v1, v5, Li2/c;->a:I

    .line 15
    iput-object v0, v5, Li2/c;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v0, "Successfully consumed purchase."

    .line 16
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {v2, v5, v4}, Li2/e;->a(Li2/c;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x3f

    .line 18
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error consuming purchase with token. Response code: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {v2, v5, v4}, Li2/e;->a(Li2/c;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Error consuming purchase!"

    .line 20
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    sget-object v0, Li2/n;->l:Li2/c;

    invoke-interface {v2, v0, v4}, Li2/e;->a(Li2/c;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
