.class final Lcom/android/billingclient/api/r;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.3"

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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/android/billingclient/api/m;

.field final synthetic d:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/r;->d:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/r;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/android/billingclient/api/r;->c:Lcom/android/billingclient/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/r;->d:Lcom/android/billingclient/api/d;

    iget-object v1, p0, Lcom/android/billingclient/api/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/r;->b:Ljava/util/List;

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/d;->l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/r;->d:Lcom/android/billingclient/api/d;

    new-instance v2, Lcom/android/billingclient/api/q;

    .line 2
    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/q;-><init>(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/b0;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    return-object v3
.end method
