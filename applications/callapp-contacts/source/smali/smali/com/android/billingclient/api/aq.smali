.class final Lcom/android/billingclient/api/aq;
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
.field final synthetic a:I

.field final synthetic b:Lcom/android/billingclient/api/k;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/android/billingclient/api/f;

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;ILcom/android/billingclient/api/k;Ljava/lang/String;Lcom/android/billingclient/api/f;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/aq;->f:Lcom/android/billingclient/api/d;

    iput p2, p0, Lcom/android/billingclient/api/aq;->a:I

    iput-object p3, p0, Lcom/android/billingclient/api/aq;->b:Lcom/android/billingclient/api/k;

    iput-object p4, p0, Lcom/android/billingclient/api/aq;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/billingclient/api/aq;->d:Lcom/android/billingclient/api/f;

    iput-object p6, p0, Lcom/android/billingclient/api/aq;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/aq;->f:Lcom/android/billingclient/api/d;

    .line 1000
    iget-object v1, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget v2, p0, Lcom/android/billingclient/api/aq;->a:I

    iget-object v0, p0, Lcom/android/billingclient/api/aq;->f:Lcom/android/billingclient/api/d;

    .line 2000
    iget-object v0, v0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/billingclient/api/aq;->b:Lcom/android/billingclient/api/k;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/aq;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/billingclient/api/aq;->e:Landroid/os/Bundle;

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/f/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
