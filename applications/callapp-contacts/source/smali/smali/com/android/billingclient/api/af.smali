.class final Lcom/android/billingclient/api/af;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/android/billingclient/api/ag;

.field private final c:Lcom/android/billingclient/api/j;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/ag;Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/af;->b:Lcom/android/billingclient/api/ag;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/af;->c:Lcom/android/billingclient/api/j;

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/af;)Lcom/android/billingclient/api/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/af;->c:Lcom/android/billingclient/api/j;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/a;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/f/a;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/billingclient/api/af;->c:Lcom/android/billingclient/api/j;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
