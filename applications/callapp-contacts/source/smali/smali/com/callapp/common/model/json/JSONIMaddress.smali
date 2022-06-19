.class public Lcom/callapp/common/model/json/JSONIMaddress;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient IM_AIM_PROTOCOL_ID:I = 0x0

.field public static final transient IM_ALLO_PROTOCOL_ID:I = 0x5e6

.field public static final transient IM_BBM_PROTOCOL_ID:I = 0x5e3

.field public static final transient IM_DUO_PROTOCOL_ID:I = 0x5e4

.field public static final transient IM_GOOGLE_TALK_PROTOCOL_ID:I = 0x5

.field public static final transient IM_HOME_TYPE_ID:I = 0x1

.field public static final transient IM_ICQ_PROTOCOL_ID:I = 0x6

.field public static final transient IM_JABBER_PROTOCOL_ID:I = 0x7

.field public static final transient IM_MESSENGER_PROTOCOL_ID:I = 0x5e7

.field public static final transient IM_MSN_PROTOCOL_ID:I = 0x1

.field public static final transient IM_NETMEETING_PROTOCOL_ID:I = 0x8

.field public static final transient IM_OTHER_TYPE_ID:I = 0x3

.field public static final transient IM_QQ_PROTOCOL_ID:I = 0x4

.field public static final transient IM_SIGNAL_PROTOCOL_ID:I = 0x5e5

.field public static final transient IM_SKYPE_PROTOCOL_ID:I = 0x3

.field public static final transient IM_TANGO_PROTOCOL_ID:I = 0x5df

.field public static final transient IM_TELEGRAM_PROTOCOL_ID:I = 0x5e2

.field public static final transient IM_VIBER_PROTOCOL_ID:I = 0x5dd

.field public static final transient IM_VOXER_PROTOCOL_ID:I = 0x5e0

.field public static final transient IM_WECHAT_PROTOCOL_ID:I = 0x5e1

.field public static final transient IM_WHATSAPP_PROTOCOL_ID:I = 0x5de

.field public static final transient IM_WORK_TYPE_ID:I = 0x2

.field public static final transient IM_YAHOO_PROTOCOL_ID:I = 0x2

.field private static final serialVersionUID:J = 0x5e4f7fdc868b5ba6L


# instance fields
.field private iMAddress:Ljava/lang/String;

.field private protocol:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONIMaddress;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 45
    iget v0, p1, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    iput v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    .line 46
    iget v0, p1, Lcom/callapp/common/model/json/JSONIMaddress;->type:I

    iput v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->type:I

    .line 47
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 51
    iput p3, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    .line 52
    iput p2, p0, Lcom/callapp/common/model/json/JSONIMaddress;->type:I

    .line 53
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

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

    if-nez p1, :cond_1

    return v1

    .line 97
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONIMaddress;

    if-nez v2, :cond_2

    return v1

    .line 100
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 101
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 105
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 108
    :cond_4
    iget v2, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    iget p1, p1, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public getIMAddress()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setIMAddress(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONIMaddress{iMAddress=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->iMAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONIMaddress;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
