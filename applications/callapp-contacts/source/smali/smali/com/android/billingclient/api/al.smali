.class final Lcom/android/billingclient/api/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/a;

.field final synthetic b:Lcom/android/billingclient/api/b;

.field final synthetic c:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/al;->a:Lcom/android/billingclient/api/a;

    iput-object p3, p0, Lcom/android/billingclient/api/al;->b:Lcom/android/billingclient/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    .line 1000
    iget-object v0, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v1, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    .line 2000
    iget-object v1, v1, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/al;->a:Lcom/android/billingclient/api/a;

    .line 3000
    iget-object v2, v2, Lcom/android/billingclient/api/a;->a:Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    .line 4000
    iget-object v3, v3, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/f/a;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/f/d;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BillingClient"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/f/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    new-instance v3, Lcom/android/billingclient/api/ak;

    .line 8
    invoke-direct {v3, p0, v2, v0}, Lcom/android/billingclient/api/ak;-><init>(Lcom/android/billingclient/api/al;ILjava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/billingclient/api/al;->c:Lcom/android/billingclient/api/d;

    new-instance v2, Lcom/android/billingclient/api/aj;

    .line 5
    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/aj;-><init>(Lcom/android/billingclient/api/al;Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
