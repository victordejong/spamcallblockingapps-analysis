.class public Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;
.super Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;-><init>(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setNotificationTelegramData(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;->isLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/NameValidationUtils;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3f7

    return v0
.end method

.method protected isLoaderEnabled()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->isTelegramSenderNameOK()Z

    move-result v0

    return v0
.end method
