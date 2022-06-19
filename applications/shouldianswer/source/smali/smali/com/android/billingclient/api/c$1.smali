.class Lcom/android/billingclient/api/c$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/android/billingclient/api/j;

.field final synthetic d:Lcom/android/billingclient/api/c;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/j;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/billingclient/api/c$1;->d:Lcom/android/billingclient/api/c;

    iput-object p2, p0, Lcom/android/billingclient/api/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/c$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/c$1;->c:Lcom/android/billingclient/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/android/billingclient/api/c$1;->d:Lcom/android/billingclient/api/c;

    iget-object v1, p0, Lcom/android/billingclient/api/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/c$1;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->a(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/h$a;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/billingclient/api/c$1;->d:Lcom/android/billingclient/api/c;

    new-instance v2, Lcom/android/billingclient/api/c$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/c$1$1;-><init>(Lcom/android/billingclient/api/c$1;Lcom/android/billingclient/api/h$a;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/c;Ljava/lang/Runnable;)V

    return-void
.end method
