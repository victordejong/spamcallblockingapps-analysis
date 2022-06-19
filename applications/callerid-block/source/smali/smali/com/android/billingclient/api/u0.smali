.class final Lcom/android/billingclient/api/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/android/billingclient/api/i;

.field final synthetic c:Lcom/android/billingclient/api/g;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/u0;->b:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/u0;->c:Lcom/android/billingclient/api/g;

    iput-object p4, p0, Lcom/android/billingclient/api/u0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Successfully consumed purchase."

    invoke-static {v0, v1}, Le/c/a/a/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/u0;->b:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/u0;->c:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/u0;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->a(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
