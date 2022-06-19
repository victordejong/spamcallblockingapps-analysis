.class public Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private signal:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "org.thoughtcrime.securesms"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private viber:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "com.viber.voip"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private whatsapp:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "com.whatsapp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private whatsappDark:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "com.whatsapp.dark"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;

    .line 58
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsapp:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsapp:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsappDark:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsappDark:Ljava/util/List;

    .line 59
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->viber:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->viber:Ljava/util/List;

    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->signal:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->signal:Ljava/util/List;

    .line 61
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSignal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->signal:Ljava/util/List;

    return-object v0
.end method

.method public getViber()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->viber:Ljava/util/List;

    return-object v0
.end method

.method public getWhatsapp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsapp:Ljava/util/List;

    return-object v0
.end method

.method public getWhatsappDark()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsappDark:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsapp:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsappDark:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->viber:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->signal:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSignal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->signal:Ljava/util/List;

    return-void
.end method

.method public setViber(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->viber:Ljava/util/List;

    return-void
.end method

.method public setWhatsapp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsapp:Ljava/util/List;

    return-void
.end method

.method public setWhatsappDark(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->whatsappDark:Ljava/util/List;

    return-void
.end method
