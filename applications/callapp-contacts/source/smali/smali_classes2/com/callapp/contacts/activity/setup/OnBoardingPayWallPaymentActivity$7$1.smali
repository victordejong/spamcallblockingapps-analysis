.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Ljava/util/List;)V

    return-void

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7$1;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->f(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    return-void
.end method
