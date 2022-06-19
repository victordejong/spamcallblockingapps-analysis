.class public Lcom/callapp/contacts/model/contact/PhotoUrls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/model/contact/PhotoUrls;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private final photoUrl:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1, p2}, Lcom/callapp/contacts/model/contact/PhotoUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/callapp/contacts/model/contact/PhotoUrls;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->compareTo(Lcom/callapp/contacts/model/contact/PhotoUrls;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/PhotoUrls;

    .line 54
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    .line 55
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 56
    invoke-static {v2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotEmpty()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toDatabaseValue()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@##@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhotoUrls{photoUrl=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUrls;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
