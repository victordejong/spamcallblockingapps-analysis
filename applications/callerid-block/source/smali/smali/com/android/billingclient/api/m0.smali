.class final Lcom/android/billingclient/api/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/android/billingclient/api/i;

.field final synthetic c:Lcom/android/billingclient/api/h;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/h;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/m0;->b:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/m0;->c:Lcom/android/billingclient/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/m0;->b:Lcom/android/billingclient/api/i;

    sget-object v1, Lcom/android/billingclient/api/y;->m:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/m0;->c:Lcom/android/billingclient/api/h;

    invoke-virtual {v2}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->a(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
