.class final Lcom/android/billingclient/api/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/o;->c:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/o;->a:Lcom/android/billingclient/api/k;

    iput-object p3, p0, Lcom/android/billingclient/api/o;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/billingclient/api/o;->c:Lcom/android/billingclient/api/d;

    .line 1000
    iget-object v0, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v1, p0, Lcom/android/billingclient/api/o;->c:Lcom/android/billingclient/api/d;

    .line 2000
    iget-object v1, v1, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/o;->a:Lcom/android/billingclient/api/k;

    .line 2
    invoke-virtual {v2}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/o;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
