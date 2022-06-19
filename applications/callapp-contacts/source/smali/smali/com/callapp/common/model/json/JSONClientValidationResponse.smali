.class public Lcom/callapp/common/model/json/JSONClientValidationResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;
    }
.end annotation


# static fields
.field public static final transient CANNOT_RUN:I = 0x5

.field public static final transient DO_NOTHING:I = 0x1

.field public static final transient FORCE_UPDATE:I = 0x4

.field public static final transient SHOW_MESSAGE:I = 0x2

.field public static final transient SUGGEST_UPDATE:I = 0x3

.field public static final transient UPDATE_CONFIGURATION:I = 0x6

.field private static final serialVersionUID:J = 0x512628dfa6880eeeL


# instance fields
.field private creationTimeStamp:Ljava/util/Calendar;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private disableContactsUpload:Z

.field private message:Ljava/lang/String;

.field private messageType:I

.field private rejectedUrl:Ljava/lang/String;

.field private rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field private updatedClientConfiguration:Ljava/lang/String;

.field private upgradeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->disableContactsUpload:Z

    .line 42
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->initTimeStamp()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->disableContactsUpload:Z

    .line 50
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->initTimeStamp()V

    .line 51
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    .line 52
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    .line 54
    sget-object p1, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->NONE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 55
    iput-boolean p4, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->disableContactsUpload:Z

    return-void
.end method

.method private initTimeStamp()V
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 136
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    .line 138
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    if-eq v2, v3, :cond_2

    return v1

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 147
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 150
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    if-eq v2, v3, :cond_9

    return v1

    .line 153
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 157
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    :goto_4
    return v1

    :cond_d
    return v0

    :cond_e
    :goto_5
    return v1
.end method

.method public getCreationTimeStamp()Ljava/util/Calendar;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    return v0
.end method

.method public getRejectedUrl()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectionReason()Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    return-object v0
.end method

.method public getUpdatedClientConfiguration()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 168
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public isDisableContactsUpload()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->disableContactsUpload:Z

    return v0
.end method

.method public isExpired()Z
    .locals 3

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, -0x5a0

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 68
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCreationTimeStamp(Ljava/util/Calendar;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    return-void
.end method

.method public setDisableContactsUpload(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->disableContactsUpload:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    return-void
.end method

.method public setRejectedUrl(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    return-void
.end method

.method public setRejectionReason(Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    return-void
.end method

.method public setUpdatedClientConfiguration(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONClientValidationResponse{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->messageType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upgradeUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->upgradeUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updatedClientConfiguration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->updatedClientConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rejectionReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectionReason:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rejectedUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->rejectedUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", creationTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse;->creationTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
