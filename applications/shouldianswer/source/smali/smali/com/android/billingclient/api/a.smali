.class Lcom/android/billingclient/api/a;
.super Ljava/lang/Object;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/billingclient/api/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/g;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/billingclient/api/a;->a:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/android/billingclient/api/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/billingclient/api/a$a;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/a$1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->b:Lcom/android/billingclient/api/a$a;

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/a;)Lcom/android/billingclient/api/a$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/billingclient/api/a;->b:Lcom/android/billingclient/api/a$a;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/billingclient/api/a;->b:Lcom/android/billingclient/api/a$a;

    iget-object v1, p0, Lcom/android/billingclient/api/a;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/a$a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method

.method b()Lcom/android/billingclient/api/g;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/billingclient/api/a;->b:Lcom/android/billingclient/api/a$a;

    invoke-static {v0}, Lcom/android/billingclient/api/a$a;->a(Lcom/android/billingclient/api/a$a;)Lcom/android/billingclient/api/g;

    move-result-object v0

    return-object v0
.end method
