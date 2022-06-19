.class Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;
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
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->c:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->b:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 142
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->c:Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->a:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;->b:Landroid/widget/RadioButton;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    return-void
.end method
