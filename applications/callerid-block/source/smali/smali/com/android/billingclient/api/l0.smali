.class final Lcom/android/billingclient/api/l0;
.super Ljava/lang/Object;
.source ""

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
.field final synthetic a:Lcom/android/billingclient/api/h;

.field final synthetic b:Lcom/android/billingclient/api/i;

.field final synthetic c:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/l0;->c:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/l0;->a:Lcom/android/billingclient/api/h;

    iput-object p3, p0, Lcom/android/billingclient/api/l0;->b:Lcom/android/billingclient/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/l0;->c:Lcom/android/billingclient/api/d;

    iget-object v1, p0, Lcom/android/billingclient/api/l0;->a:Lcom/android/billingclient/api/h;

    iget-object v2, p0, Lcom/android/billingclient/api/l0;->b:Lcom/android/billingclient/api/i;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/d;->q(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V

    const/4 v0, 0x0

    return-object v0
.end method
