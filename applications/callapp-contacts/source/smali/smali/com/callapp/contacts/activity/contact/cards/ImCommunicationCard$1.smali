.class Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 100
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;

    if-eqz p1, :cond_1

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Pressed on "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Contact Details"

    const-string p5, "Im communication card"

    invoke-virtual {p2, p4, p5, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->isAppInstalled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1202f0

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
