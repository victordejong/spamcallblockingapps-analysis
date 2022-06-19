.class public Lcom/allinone/callerid/callscreen/bean/HomeInfo;
.super Ljava/lang/Object;
.source "HomeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "HomeInfo"
.end annotation


# instance fields
.field private audio_path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "audio_path"
    .end annotation
.end field

.field private audio_url:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private contacts_diy:Z

.field private contacts_diy_counts:I

.field private data_id:Ljava/lang/String;

.field private defautl_diy:Z

.field private downloads:I

.field private gifimg_url:Ljava/lang/String;

.field private hdvideo_size:J

.field private hdvideo_url:Ljava/lang/String;

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
        property = "NOT NULL"
    .end annotation
.end field

.field private isUnLock:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isUnLock"
    .end annotation
.end field

.field private isUseVideoAudioRing:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isUseVideoAudioRing"
    .end annotation
.end field

.field private isdefault:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isdefault"
    .end annotation
.end field

.field private isdiy:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isdiy"
    .end annotation
.end field

.field private islike:Z

.field private isreport:Z

.field private isselect:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isselect"
    .end annotation
.end field

.field private jpgimg_url:Ljava/lang/String;

.field private like_count:I

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "phone"
    .end annotation
.end field

.field private sdvideo_size:J

.field private sdvideo_url:Ljava/lang/String;

.field private time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_path:Ljava/lang/String;

    return-object v0
.end method

.method public getAudio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_url:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts_diy_counts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy_counts:I

    return v0
.end method

.method public getData_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->data_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->downloads:I

    return v0
.end method

.method public getGifimg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->gifimg_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHdvideo_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_size:J

    return-wide v0
.end method

.method public getHdvideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->id:I

    return v0
.end method

.method public getJpgimg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->jpgimg_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->like_count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSdvideo_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_size:J

    return-wide v0
.end method

.method public getSdvideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->time:J

    return-wide v0
.end method

.method public isContacts_diy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy:Z

    return v0
.end method

.method public isDefautl_diy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->defautl_diy:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIsdefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdefault:Z

    return v0
.end method

.method public isIsdiy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdiy:Z

    return v0
.end method

.method public isIslike()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->islike:Z

    return v0
.end method

.method public isIsreport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isreport:Z

    return v0
.end method

.method public isIsselect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isselect:Z

    return v0
.end method

.method public isUnLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock:Z

    return v0
.end method

.method public isUseVideoAudioRing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing:Z

    return v0
.end method

.method public setAudio_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_path:Ljava/lang/String;

    return-void
.end method

.method public setAudio_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_url:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public setContacts_diy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy:Z

    return-void
.end method

.method public setContacts_diy_counts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy_counts:I

    return-void
.end method

.method public setData_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->data_id:Ljava/lang/String;

    return-void
.end method

.method public setDefautl_diy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->defautl_diy:Z

    return-void
.end method

.method public setDownloads(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->downloads:I

    return-void
.end method

.method public setGifimg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->gifimg_url:Ljava/lang/String;

    return-void
.end method

.method public setHdvideo_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_size:J

    return-void
.end method

.method public setHdvideo_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->id:I

    return-void
.end method

.method public setIsdefault(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdefault:Z

    return-void
.end method

.method public setIsdiy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdiy:Z

    return-void
.end method

.method public setIslike(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->islike:Z

    return-void
.end method

.method public setIsreport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isreport:Z

    return-void
.end method

.method public setIsselect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isselect:Z

    return-void
.end method

.method public setJpgimg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->jpgimg_url:Ljava/lang/String;

    return-void
.end method

.method public setLike_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->like_count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSdvideo_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_size:J

    return-void
.end method

.method public setSdvideo_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_url:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->time:J

    return-void
.end method

.method public setUnLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock:Z

    return-void
.end method

.method public setUseVideoAudioRing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeInfo{data_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->data_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gifimg_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->gifimg_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jpgimg_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->jpgimg_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdvideo_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdvideo_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->sdvideo_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hdvideo_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hdvideo_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->hdvideo_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", audio_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloads="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->downloads:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", like_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->like_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", islike="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->islike:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isreport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isreport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", defautl_diy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->defautl_diy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contacts_diy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contacts_diy_counts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->contacts_diy_counts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audio_path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->audio_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isselect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isselect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isdefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isdiy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isdiy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUnLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
