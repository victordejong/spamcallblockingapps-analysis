.class public Lcom/callapp/common/model/json/JSONEmail;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient EMAIL_HOME_TYPE_ID:I = 0x1

.field public static final transient EMAIL_MOBILE_TYPE_ID:I = 0x4

.field public static final transient EMAIL_OTHER_TYPE_ID:I = 0x3

.field public static final transient EMAIL_WORK_TYPE_ID:I = 0x2

.field private static final serialVersionUID:J = -0xeea2564629c904L


# instance fields
.field private callappUser:Z

.field private email:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONEmail;->callappUser:Z

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONEmail;->isFromUserProfile()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>(Z)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONEmail;->callappUser:Z

    .line 34
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    .line 35
    iget p1, p1, Lcom/callapp/common/model/json/JSONEmail;->type:I

    iput p1, p0, Lcom/callapp/common/model/json/JSONEmail;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 27
    invoke-direct {p0, p3}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>(Z)V

    const/4 p3, 0x0

    .line 12
    iput-boolean p3, p0, Lcom/callapp/common/model/json/JSONEmail;->callappUser:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/common/model/json/JSONEmail;->setEmail(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONEmail;->setType(I)V

    return-void
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 84
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONEmail;

    if-nez v2, :cond_2

    return v1

    .line 87
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONEmail;

    .line 88
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 89
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 92
    :cond_3
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/callapp/common/model/json/JSONEmail;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isCallappUser()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONEmail;->callappUser:Z

    return v0
.end method

.method public setCallappUser(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONEmail;->callappUser:Z

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/callapp/common/model/json/JSONEmail;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/callapp/common/model/json/JSONEmail;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONEmail{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONEmail;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONEmail;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
