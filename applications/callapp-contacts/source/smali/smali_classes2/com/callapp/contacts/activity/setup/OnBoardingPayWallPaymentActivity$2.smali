.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$2;->a:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->onBackPressed()V

    return-void
.end method
