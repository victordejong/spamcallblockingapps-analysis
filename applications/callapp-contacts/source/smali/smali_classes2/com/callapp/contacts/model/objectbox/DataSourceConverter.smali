.class public Lcom/callapp/contacts/model/objectbox/DataSourceConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/model/contact/DataSource;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToDatabaseValue(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/DataSource;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 2

    .line 13
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/callapp/contacts/model/contact/DataSource;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;->convertToEntityProperty(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    return-object p1
.end method
