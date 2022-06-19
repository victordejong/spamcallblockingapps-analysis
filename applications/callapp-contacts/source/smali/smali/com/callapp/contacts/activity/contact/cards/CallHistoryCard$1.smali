.class Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 34
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 35
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a(Landroid/content/Context;JLcom/callapp/framework/phone/Phone;)V

    return-void
.end method
