.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$FileType;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    }
.end annotation


# instance fields
.field private accessKey:Ljava/lang/String;

.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "channel"
    .end annotation
.end field

.field private channelIndex:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "channel_index"
    .end annotation
.end field

.field private content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "content"
    .end annotation
.end field

.field private groupName:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "group_name"
    .end annotation
.end field

.field private localVersion:J

.field private packageType:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "package_type"
    .end annotation
.end field

.field private version:J
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "package_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    .line 67
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    .line 69
    invoke-static {p1, p4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$002(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {p1, p5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$102(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channelIndex:I

    return v0
.end method

.method public getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$000(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalVersion()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->localVersion:J

    return-wide v0
.end method

.method public getPackageType()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->packageType:I

    return v0
.end method

.method public getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$100(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$200(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    return-wide v0
.end method

.method public isFullUpdate()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPatchUpdate()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    return-void
.end method

.method public setChannelIndex(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channelIndex:I

    return-void
.end method

.method public setFullPackage(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$002(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setLocalVersion(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->localVersion:J

    return-void
.end method

.method public setPatch(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$102(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-void
.end method

.method public setStrategy(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$202(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatePackage{version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->packageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
