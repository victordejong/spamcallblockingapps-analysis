.class public Lcom/b/a/a/a/c;
.super Lcom/b/a/a/a/a;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/c$a;,
        Lcom/b/a/a/a/c$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Date;

.field private static final b:Ljava/util/Date;


# instance fields
.field private c:Lcom/android/vending/billing/IInAppBillingService;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/b/a/a/a/b;

.field private g:Lcom/b/a/a/a/b;

.field private h:Lcom/b/a/a/a/c$b;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    const/16 v1, 0x7dc

    const/16 v2, 0xb

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/a/c;->a:Ljava/util/Date;

    .line 71
    const/16 v1, 0x7df

    const/4 v2, 0x6

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/c;->b:Ljava/util/Date;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/a/a/c$b;Z)V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Lcom/b/a/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/c$1;-><init>(Lcom/b/a/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/a/c;->k:Landroid/content/ServiceConnection;

    .line 176
    iput-object p2, p0, Lcom/b/a/a/a/c;->e:Ljava/lang/String;

    .line 177
    iput-object p4, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    .line 178
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/b/a/a/a/b;

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ".products.cache.v2_6"

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/a/a/c;->f:Lcom/b/a/a/a/b;

    .line 180
    new-instance v0, Lcom/b/a/a/a/b;

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ".subscriptions.cache.v2_6"

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/a/a/c;->g:Lcom/b/a/a/a/b;

    .line 181
    iput-object p3, p0, Lcom/b/a/a/a/c;->i:Ljava/lang/String;

    .line 182
    if-eqz p5, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/b/a/a/a/c;->i()V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/c;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;
    .locals 6

    .prologue
    .line 158
    new-instance v0, Lcom/b/a/a/a/c;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/a/a/c$b;Z)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/b/a/a/a/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-string/jumbo v0, "subs"

    .line 909
    :goto_0
    return-object v0

    .line 905
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "autoRenewing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const-string/jumbo v0, "subs"

    goto :goto_0

    .line 909
    :cond_1
    const-string/jumbo v0, "inapp"

    goto :goto_0
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    invoke-interface {v0, p1, p2}, Lcom/b/a/a/a/c$b;->a(ILjava/lang/Throwable;)V

    .line 1018
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 598
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/a/a/c;->a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 720
    :goto_0
    return v0

    .line 610
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 611
    const-string/jumbo v0, "subs"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 615
    :cond_2
    if-eqz p5, :cond_3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 619
    :cond_3
    invoke-direct {p0, v6}, Lcom/b/a/a/a/c;->e(Ljava/lang/String;)V

    .line 621
    if-eqz p2, :cond_7

    const-string/jumbo v0, "subs"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    if-nez p6, :cond_5

    .line 625
    iget-object v0, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 669
    :goto_1
    if-eqz v0, :cond_4

    .line 671
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 672
    if-nez v1, :cond_a

    .line 674
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 675
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    .line 677
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x7ecb

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 713
    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 634
    :cond_5
    const-string/jumbo v0, "skusToReplace"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 636
    const-string/jumbo v0, "skusToReplace"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p6, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 640
    :cond_6
    iget-object v1, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 650
    :cond_7
    if-nez p6, :cond_8

    .line 652
    iget-object v1, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 660
    :cond_8
    iget-object v1, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 683
    :cond_9
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 715
    :catch_0
    move-exception v0

    .line 717
    const-string/jumbo v1, "iabv3"

    const-string/jumbo v2, "Error in purchase"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    const/16 v1, 0x6e

    invoke-direct {p0, v1, v0}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    .line 720
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 686
    :cond_a
    const/4 v0, 0x7

    if-ne v1, v0, :cond_e

    .line 688
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p3}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 690
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->f()Z

    .line 692
    :cond_b
    invoke-virtual {p0, p3}, Lcom/b/a/a/a/c;->c(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v0

    .line 693
    invoke-direct {p0, v0}, Lcom/b/a/a/a/c;->a(Lcom/b/a/a/a/h;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 695
    const-string/jumbo v0, "iabv3"

    const-string/jumbo v1, "Invalid or tampered merchant id!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    .line 697
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 699
    :cond_c
    iget-object v1, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    if-eqz v1, :cond_4

    .line 701
    if-nez v0, :cond_d

    .line 703
    invoke-virtual {p0, p3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v0

    .line 705
    :cond_d
    iget-object v1, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    invoke-interface {v1, p3, v0}, Lcom/b/a/a/a/c$b;->a(Ljava/lang/String;Lcom/b/a/a/a/h;)V

    goto/16 :goto_2

    .line 710
    :cond_e
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/b/a/a/a/c;->h()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/b/a/a/a/c;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/a/a/c;->j()Z

    move-result v0

    return v0
.end method

.method private a(Lcom/b/a/a/a/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 733
    iget-object v2, p0, Lcom/b/a/a/a/c;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 737
    :cond_1
    iget-object v2, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    sget-object v3, Lcom/b/a/a/a/c;->a:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    iget-object v2, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    sget-object v3, Lcom/b/a/a/a/c;->b:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 745
    iget-object v2, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    .line 746
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 748
    goto :goto_0

    .line 750
    :cond_3
    iget-object v2, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 751
    if-gtz v2, :cond_4

    move v0, v1

    .line 753
    goto :goto_0

    .line 756
    :cond_4
    iget-object v3, p1, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v3, v3, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v3, v3, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 757
    iget-object v3, p0, Lcom/b/a/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/b/a/a/a/b;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 307
    :goto_0
    return v0

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, p1, v5}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 277
    invoke-virtual {p2}, Lcom/b/a/a/a/b;->c()V

    .line 278
    const-string/jumbo v1, "INAPP_PURCHASE_DATA_LIST"

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 280
    const-string/jumbo v1, "INAPP_DATA_SIGNATURE_LIST"

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 282
    if-eqz v5, :cond_3

    move v4, v2

    .line 284
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 286
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 292
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    :goto_2
    const-string/jumbo v8, "productId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v0, v1}, Lcom/b/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 292
    goto :goto_2

    .line 299
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    .line 305
    const-string/jumbo v1, "iabv3"

    const-string/jumbo v3, "Error in loadPurchasesByType"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move v0, v2

    .line 307
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/a/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/c;->e:Ljava/lang/String;

    .line 976
    invoke-static {p1, v1, p2, p3}, Lcom/b/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 980
    :cond_1
    :goto_0
    return v0

    .line 978
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/b/a/a/a/b;)Lcom/b/a/a/a/h;
    .locals 2

    .prologue
    .line 763
    invoke-virtual {p2, p1}, Lcom/b/a/a/a/b;->b(Ljava/lang/String;)Lcom/b/a/a/a/e;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lcom/b/a/a/a/h;

    invoke-direct {v0, v1}, Lcom/b/a/a/a/h;-><init>(Lcom/b/a/a/a/e;)V

    .line 768
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a/a/c;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/a/a/c;->k()V

    return-void
.end method

.method static synthetic c(Lcom/b/a/a/a/c;)Lcom/b/a/a/a/c$b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1005
    return-void
.end method

.method private static h()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/b/a/a/a/c;->h()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/a/c;->k:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "iabv3"

    const-string/jumbo v2, "error in bindPlayServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/16 v1, 0x71

    invoke-direct {p0, v1, v0}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 1000
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 914
    const/16 v2, 0x7ecb

    if-eq p1, v2, :cond_0

    .line 964
    :goto_0
    return v0

    .line 918
    :cond_0
    if-nez p3, :cond_1

    .line 920
    const-string/jumbo v1, "iabv3"

    const-string/jumbo v2, "handleActivityResult: data is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 923
    :cond_1
    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 924
    const-string/jumbo v3, "iabv3"

    const-string/jumbo v4, "resultCode = %d, responseCode = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-nez v2, :cond_5

    .line 928
    const-string/jumbo v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 929
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 933
    const-string/jumbo v4, "productId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-direct {p0, v4, v2, v3}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 936
    invoke-direct {p0, v0}, Lcom/b/a/a/a/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 937
    const-string/jumbo v5, "subs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/a/c;->g:Lcom/b/a/a/a/b;

    .line 939
    :goto_1
    invoke-virtual {v0, v4, v2, v3}, Lcom/b/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/b/a/a/a/c;->h:Lcom/b/a/a/a/c$b;

    new-instance v5, Lcom/b/a/a/a/h;

    new-instance v6, Lcom/b/a/a/a/e;

    invoke-direct {v6, v2, v3}, Lcom/b/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/b/a/a/a/h;-><init>(Lcom/b/a/a/a/e;)V

    invoke-interface {v0, v4, v5}, Lcom/b/a/a/a/c$b;->a(Ljava/lang/String;Lcom/b/a/a/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_2
    :goto_2
    invoke-direct {p0, v7}, Lcom/b/a/a/a/c;->e(Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 964
    goto :goto_0

    .line 937
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/a/c;->f:Lcom/b/a/a/a/b;

    goto :goto_1

    .line 949
    :cond_4
    const-string/jumbo v0, "iabv3"

    const-string/jumbo v2, "Public key signature doesn\'t match!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/16 v0, 0x66

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 953
    :catch_0
    move-exception v0

    .line 955
    const-string/jumbo v2, "iabv3"

    const-string/jumbo v3, "Error in handleActivityResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    const/16 v2, 0x6e

    invoke-direct {p0, v2, v0}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    goto :goto_2

    .line 962
    :cond_5
    invoke-direct {p0, v2, v7}, Lcom/b/a/a/a/c;->a(ILjava/lang/Throwable;)V

    goto :goto_3
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 328
    const-string/jumbo v4, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/a/c;->a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/b/a/a/a/c;->f:Lcom/b/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/b/a/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/b/a/a/a/c;->g:Lcom/b/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/b/a/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/b/a/a/a/h;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/b/a/a/a/c;->f:Lcom/b/a/a/a/b;

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;Lcom/b/a/a/a/b;)Lcom/b/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/b/a/a/a/c;->i()V

    .line 195
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/b/a/a/a/h;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/b/a/a/a/c;->g:Lcom/b/a/a/a/b;

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;Lcom/b/a/a/a/b;)Lcom/b/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/c;->k:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/c;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    .line 238
    :cond_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const-string/jumbo v1, "iabv3"

    const-string/jumbo v2, "Error in release"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 317
    const-string/jumbo v0, "inapp"

    iget-object v1, p0, Lcom/b/a/a/a/c;->f:Lcom/b/a/a/a/b;

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Lcom/b/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "subs"

    iget-object v1, p0, Lcom/b/a/a/a/c;->g:Lcom/b/a/a/a/b;

    .line 318
    invoke-direct {p0, v0, v1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;Lcom/b/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-boolean v1, p0, Lcom/b/a/a/a/c;->j:Z

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    return v0

    .line 416
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/a/c;->c:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/b/a/a/a/c;->d:Ljava/lang/String;

    const-string/jumbo v4, "subs"

    .line 417
    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 420
    if-nez v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/b/a/a/a/c;->j:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_2
    iget-boolean v0, p0, Lcom/b/a/a/a/c;->j:Z

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
