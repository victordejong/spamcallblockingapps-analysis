.class public Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/model/contact/PhotoUrls;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final del:Ljava/lang/String; = "@##@"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PhotoUrls(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PhotoUrls;
    .locals 4

    .line 34
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "@##@"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 36
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    aget-object v0, p0, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 39
    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, p0, v3

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    aget-object p0, p0, v3

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 46
    :goto_1
    new-instance v2, Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-direct {v2, v0, p0, v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-object v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/PhotoUrls;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToDatabaseValue(Lcom/callapp/contacts/model/contact/PhotoUrls;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->toDatabaseValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PhotoUrls;
    .locals 2

    .line 15
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;->PhotoUrls(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;->convertToEntityProperty(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    return-object p1
.end method
