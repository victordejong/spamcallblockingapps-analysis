.class public final synthetic Li2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b;

.field public final synthetic b:Li2/a;

.field public final synthetic c:Ls2/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Li2/a;Ls2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/t;->a:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Li2/t;->b:Li2/a;

    iput-object p3, p0, Li2/t;->c:Ls2/b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Li2/t;->a:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Li2/t;->b:Li2/a;

    iget-object v2, p0, Li2/t;->c:Ls2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "BillingClient"

    .line 1
    :try_start_0
    iget-object v4, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/16 v5, 0x9

    iget-object v6, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v7, v1, Li2/a;->a:Ljava/lang/String;

    .line 3
    iget-object v0, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzc(Li2/a;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-interface {v4, v5, v6, v7, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, v2, Ls2/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/a;

    sget-object v1, Lf8/a;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 10
    invoke-static {}, Lf8/a;->g()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error acknowledge purchase!"

    .line 11
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Li2/n;->l:Li2/c;

    iget-object v0, v2, Ls2/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/a;

    sget-object v1, Lf8/a;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 14
    invoke-static {}, Lf8/a;->g()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
