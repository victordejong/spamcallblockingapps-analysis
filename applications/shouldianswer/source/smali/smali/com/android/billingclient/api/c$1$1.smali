.class Lcom/android/billingclient/api/c$1$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/h$a;

.field final synthetic b:Lcom/android/billingclient/api/c$1;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c$1;Lcom/android/billingclient/api/h$a;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/android/billingclient/api/c$1$1;->b:Lcom/android/billingclient/api/c$1;

    iput-object p2, p0, Lcom/android/billingclient/api/c$1$1;->a:Lcom/android/billingclient/api/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/android/billingclient/api/c$1$1;->b:Lcom/android/billingclient/api/c$1;

    iget-object v0, v0, Lcom/android/billingclient/api/c$1;->c:Lcom/android/billingclient/api/j;

    iget-object v1, p0, Lcom/android/billingclient/api/c$1$1;->a:Lcom/android/billingclient/api/h$a;

    .line 548
    invoke-virtual {v1}, Lcom/android/billingclient/api/h$a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/android/billingclient/api/c$1$1;->a:Lcom/android/billingclient/api/h$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/h$a;->a()Ljava/util/List;

    move-result-object v2

    .line 547
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/j;->a(ILjava/util/List;)V

    return-void
.end method
