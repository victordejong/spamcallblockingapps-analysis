.class final Lcom/android/billingclient/api/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/android/billingclient/api/af;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/ag;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/af;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p1, p0, p2, v0}, Lcom/android/billingclient/api/af;-><init>(Lcom/android/billingclient/api/ag;Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/ae;)V

    iput-object p1, p0, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    return-void
.end method
