.class Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->refreshListData(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 238
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 239
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const-string v1, "Address presenter pressed icon"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard$5;->b:Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/ContactInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
