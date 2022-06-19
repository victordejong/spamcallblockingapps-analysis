.class public Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Ljava/util/Set<",
        "Lcom/callapp/common/model/json/JSONDataAndSource<",
        "TT;>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 18
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->value:Ljava/lang/Object;

    return-void
.end method

.method public static convertDataSourceToSrcInt(Lcom/callapp/contacts/model/contact/DataSource;)I
    .locals 1

    .line 64
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 66
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    if-lez v0, :cond_1

    .line 67
    iget p0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    return p0

    .line 68
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x3e9

    return p0

    .line 70
    :cond_2
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->yahooLocal:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x3eb

    return p0

    .line 72
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_4

    const/16 p0, 0x3ea

    return p0

    .line 74
    :cond_4
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_5

    const/16 p0, 0x3f1

    return p0

    .line 76
    :cond_5
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_6

    const/16 p0, 0x3f8

    return p0

    .line 78
    :cond_6
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x3f7

    return p0

    .line 80
    :cond_7
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_8

    const/16 p0, 0x3f6

    return p0

    .line 82
    :cond_8
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_9

    const/16 p0, 0x3f5

    return p0

    .line 84
    :cond_9
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, v0, :cond_a

    const/16 p0, 0x3f9

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static convertSrcIntToDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    const/16 v0, 0x3f1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 56
    invoke-static {p0}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p0

    goto :goto_0

    .line 52
    :pswitch_0
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 43
    :pswitch_2
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 49
    :pswitch_4
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 31
    :pswitch_5
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->yahooLocal:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 34
    :pswitch_6
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 28
    :pswitch_7
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 25
    :pswitch_8
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 37
    :cond_0
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    :goto_0
    if-nez p0, :cond_1

    .line 60
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->unknown:Lcom/callapp/contacts/model/contact/DataSource;

    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "execute()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;
    .locals 3

    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 99
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 101
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    new-instance v1, Lcom/callapp/common/model/json/JSONDataAndSource;

    invoke-static {p3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertDataSourceToSrcInt(Lcom/callapp/contacts/model/contact/DataSource;)I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/callapp/common/model/json/JSONDataAndSource;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 105
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->value:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    new-instance v0, Lcom/callapp/common/model/json/JSONDataAndSource;

    invoke-static {p3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertDataSourceToSrcInt(Lcom/callapp/contacts/model/contact/DataSource;)I

    move-result p3

    invoke-direct {v0, p3, p1}, Lcom/callapp/common/model/json/JSONDataAndSource;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method
