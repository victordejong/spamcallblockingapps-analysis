.class public abstract Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper;->getChatDatas(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected abstract getChatDatas(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;
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
.end method
