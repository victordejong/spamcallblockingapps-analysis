.class public Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;
.super Ljava/lang/Object;
.source "AudioSourceInfo.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "AudioSourceInfo"
.end annotation


# instance fields
.field private audiosource:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "audiosource"
    .end annotation
.end field

.field private brand:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "brand"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private isselected:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isselected"
    .end annotation
.end field

.field private phonemodel:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "phonemodel"
    .end annotation
.end field

.field private sdk:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "sdk"
    .end annotation
.end field

.field private showname:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "showname"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "version"
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
.method public getAudiosource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->audiosource:I

    return v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonemodel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->phonemodel:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->sdk:I

    return v0
.end method

.method public getShowname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->showname:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isselected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->isselected:Z

    return v0
.end method

.method public setAudiosource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->audiosource:I

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method public setIsselected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->isselected:Z

    return-void
.end method

.method public setPhonemodel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->phonemodel:Ljava/lang/String;

    return-void
.end method

.method public setSdk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->sdk:I

    return-void
.end method

.method public setShowname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->showname:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->version:Ljava/lang/String;

    return-void
.end method
