.class public Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field private dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private date:J

.field protected id:Ljava/lang/Long;

.field private phoneOrIdKey:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    .line 32
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->phoneOrIdKey:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 34
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->date:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->date:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMExtractedPhotoData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dataSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
