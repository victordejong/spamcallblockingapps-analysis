.class public Lcom/callapp/contacts/model/contact/PhotoUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;
    }
.end annotation


# instance fields
.field private currentDataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private currentPhotoBGColor:Ljava/lang/Integer;

.field private currentUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

.field private final dataSourceToStop:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->dataSourceToStop:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method


# virtual methods
.method public getCurrentPhotoBGColor()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentPhotoBGColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z
    .locals 7

    .line 25
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    .line 29
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    iget-object v3, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->dataSourceToStop:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz v3, :cond_0

    if-eq v3, v2, :cond_1

    :cond_0
    return v4

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->isOnlyThumbnail()Z

    move-result v3

    .line 42
    invoke-static {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->access$000(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->access$000(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v2

    .line 43
    :goto_0
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-direct {v6, v0, v1, v5}, Lcom/callapp/contacts/model/contact/PhotoUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    const/4 v0, 0x1

    if-eqz v5, :cond_4

    .line 46
    invoke-static {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    return v4

    .line 53
    :cond_4
    iput-object v6, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    .line 54
    iput-object v2, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 55
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->currentPhotoBGColor:Ljava/lang/Integer;

    .line 57
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    if-eqz v3, :cond_6

    .line 61
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    .line 65
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater;->dataSourceToStop:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz p1, :cond_7

    if-ne p1, v2, :cond_7

    return v0

    :cond_7
    return v4
.end method
