.class public Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f08038e

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getChatDatas(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getYahooData()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getImColor()I
    .locals 1

    const v0, 0x7f060233

    return v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 62
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->YAHOO:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method

.method public hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 38
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 39
    sget-object v0, Lcom/callapp/contacts/loader/im/YahooLoader;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p2, v1, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;I[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper$1;-><init>(Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;)V

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Landroid/content/Context;Ljava/util/Collection;Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;)Z

    return-void
.end method
