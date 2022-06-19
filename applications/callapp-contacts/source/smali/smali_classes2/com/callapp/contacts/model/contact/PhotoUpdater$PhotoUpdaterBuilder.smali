.class public Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/contact/PhotoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoUpdaterBuilder"
.end annotation


# instance fields
.field private dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private dataSourceToEnrich:Lcom/callapp/contacts/model/contact/DataSource;

.field private onlyThumbnail:Z

.field private photoBGColor:Ljava/lang/Integer;

.field private photoUrl:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 121
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->enrichUrl(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 122
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->photoUrl:Ljava/lang/String;

    .line 123
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->photoUrl:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->dataSourceToEnrich:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method


# virtual methods
.method public enrichUrl(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "https://graph.facebook.com/"

    .line 143
    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->dataSourceToEnrich:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v1, "/picture?type=normal"

    .line 145
    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/picture?width=600"

    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, v1, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "/picture?width="

    .line 147
    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, v3, v1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getPhotoBGColor()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->photoBGColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlyThumbnail()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail:Z

    return v0
.end method

.method public onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail:Z

    return-object p0
.end method

.method public withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method

.method public withPhotoBGColor(Ljava/lang/Integer;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->photoBGColor:Ljava/lang/Integer;

    return-object p0
.end method
