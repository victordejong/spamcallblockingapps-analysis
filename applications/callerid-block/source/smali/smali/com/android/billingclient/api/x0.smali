.class final Lcom/android/billingclient/api/x0;
.super Ljava/lang/Object;
.source ""

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

.field final synthetic b:Lcom/android/billingclient/api/SkuDetails;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/android/billingclient/api/f;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/x0;->e:Lcom/android/billingclient/api/d;

    iput p2, p0, Lcom/android/billingclient/api/x0;->a:I

    iput-object p3, p0, Lcom/android/billingclient/api/x0;->b:Lcom/android/billingclient/api/SkuDetails;

    iput-object p4, p0, Lcom/android/billingclient/api/x0;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/billingclient/api/x0;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/billingclient/api/x0;->e:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->n(Lcom/android/billingclient/api/d;)Le/c/a/a/a/e/d;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/x0;->a:I

    iget-object v0, p0, Lcom/android/billingclient/api/x0;->e:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/billingclient/api/x0;->b:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/x0;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/billingclient/api/x0;->d:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Le/c/a/a/a/e/d;->u2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
