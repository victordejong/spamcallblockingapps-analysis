.class public Lcom/callapp/contacts/model/contact/FastPhotoCache;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x62533caf9be80e76L


# instance fields
.field private dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->thumbnailUrl:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method


# virtual methods
.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FastPhotoCache;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method
