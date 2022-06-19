.class public Lcom/allinone/callerid/bean/CollectInfo;
.super Ljava/lang/Object;
.source "CollectInfo.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "collectinfo"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "number"
    .end annotation
.end field

.field private user_blocked:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "user_blocked"
    .end annotation
.end field

.field private user_commented:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "user_commented"
    .end annotation
.end field

.field private user_reported:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "user_reported"
    .end annotation
.end field

.field private user_upload_recording:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "user_upload_recording"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_blocked:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_commented:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_reported:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_upload_recording:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->id:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_blocked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_blocked:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_commented()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_commented:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_reported()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_reported:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_upload_recording()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_upload_recording:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->id:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setUser_blocked(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_blocked:Ljava/lang/String;

    return-void
.end method

.method public setUser_commented(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_commented:Ljava/lang/String;

    return-void
.end method

.method public setUser_reported(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_reported:Ljava/lang/String;

    return-void
.end method

.method public setUser_upload_recording(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_upload_recording:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/bean/CollectInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/CollectInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user_blocked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_blocked:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user_commented=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_commented:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user_reported=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_reported:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user_upload_recording=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/CollectInfo;->user_upload_recording:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
