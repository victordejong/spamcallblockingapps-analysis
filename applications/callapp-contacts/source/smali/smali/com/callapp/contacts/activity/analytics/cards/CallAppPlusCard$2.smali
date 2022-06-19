.class Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->setBanner(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$1300(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->openNotificationAccsess()V

    return-void
.end method
