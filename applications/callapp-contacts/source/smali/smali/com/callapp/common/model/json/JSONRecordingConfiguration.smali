.class public Lcom/callapp/common/model/json/JSONRecordingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c81e5af612d9b15L


# instance fields
.field private audioSource:I

.field private device:Ljava/lang/String;

.field private force:Z

.field private manufacturer:Ljava/lang/String;

.field private method:I

.field private model:Ljava/lang/String;

.field private sdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->sdkVersion:I

    .line 18
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->manufacturer:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->model:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->device:Ljava/lang/String;

    .line 21
    iput p5, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->method:I

    .line 22
    iput p6, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->audioSource:I

    .line 23
    iput-boolean p7, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->force:Z

    return-void
.end method


# virtual methods
.method public getAudioSource()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->audioSource:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->method:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->sdkVersion:I

    return v0
.end method

.method public isForce()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->force:Z

    return v0
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->audioSource:I

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->device:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->force:Z

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setMethod(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->method:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->model:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->sdkVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONRecordingConfiguration{sdkVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->device:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->method:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->audioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONRecordingConfiguration;->force:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
