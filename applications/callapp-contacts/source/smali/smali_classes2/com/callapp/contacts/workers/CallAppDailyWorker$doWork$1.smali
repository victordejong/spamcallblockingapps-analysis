.class public final Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/workers/CallAppDailyWorker;->doWork()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/callapp/contacts/workers/CallAppDailyWorker$doWork$1",
        "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;",
        "onBillingClientSetupFinished",
        "",
        "onPurchasesUpdated",
        "purchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/workers/CallAppDailyWorker;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/workers/CallAppDailyWorker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker;

    invoke-static {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a(Lcom/callapp/contacts/workers/CallAppDailyWorker;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker;

    invoke-static {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a(Lcom/callapp/contacts/workers/CallAppDailyWorker;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker;

    invoke-static {p1}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a(Lcom/callapp/contacts/workers/CallAppDailyWorker;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker;

    invoke-static {p1}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->b(Lcom/callapp/contacts/workers/CallAppDailyWorker;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
