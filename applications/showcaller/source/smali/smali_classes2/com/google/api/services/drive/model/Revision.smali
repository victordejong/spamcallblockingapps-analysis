.class public final Lcom/google/api/services/drive/model/Revision;
.super Lcom/google/api/client/json/b;
.source "Revision.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private keepForever:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private lastModifyingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private md5Checksum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private modifiedTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private originalFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private publishAuto:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private published:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private publishedOutsideDomain:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/h;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Revision;->clone()Lcom/google/api/services/drive/model/Revision;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Revision;->clone()Lcom/google/api/services/drive/model/Revision;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/Revision;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Revision;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Revision;->clone()Lcom/google/api/services/drive/model/Revision;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepForever()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->keepForever:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->md5Checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->modifiedTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->originalFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishAuto()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->publishAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPublished()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->published:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPublishedOutsideDomain()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->publishedOutsideDomain:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Revision;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Revision;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Revision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Revision;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Revision;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Revision;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKeepForever(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->keepForever:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setLastModifyingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method

.method public setMd5Checksum(Ljava/lang/String;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->md5Checksum:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setModifiedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->modifiedTime:Lcom/google/api/client/util/DateTime;

    return-object p0
.end method

.method public setOriginalFilename(Ljava/lang/String;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->originalFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setPublishAuto(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->publishAuto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPublished(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->published:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPublishedOutsideDomain(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->publishedOutsideDomain:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/Revision;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Revision;->size:Ljava/lang/Long;

    return-object p0
.end method
