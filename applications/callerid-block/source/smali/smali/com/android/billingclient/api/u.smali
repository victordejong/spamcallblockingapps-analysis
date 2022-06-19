.class final Lcom/android/billingclient/api/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/android/billingclient/api/v;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/v;

    iget-object v0, v0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->t(Lcom/android/billingclient/api/d;I)I

    iget-object v0, p0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/v;

    iget-object v0, v0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->s(Lcom/android/billingclient/api/d;Le/c/a/a/a/e/d;)Le/c/a/a/a/e/d;

    iget-object v0, p0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/v;

    sget-object v1, Lcom/android/billingclient/api/y;->m:Lcom/android/billingclient/api/g;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/v;->d(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V

    return-void
.end method
