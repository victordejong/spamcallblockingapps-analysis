.class public Lcom/callapp/common/model/json/JSONEvent;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient EVENT_ANNIVERSARY_TYPE_ID:I = 0x1

.field public static final transient EVENT_BIRTHDAY_TYPE_ID:I = 0x3

.field public static final transient EVENT_CUSTOM_TYPE_ID:I = 0x0

.field public static final transient EVENT_OTHER_TYPE_ID:I = 0x2

.field private static final serialVersionUID:J = 0x47b23963340268aeL


# instance fields
.field private formattedDate:Lcom/callapp/common/model/json/JSONDate;

.field private label:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONEvent;)V
    .locals 2

    .line 26
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    iget v1, p1, Lcom/callapp/common/model/json/JSONEvent;->type:I

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {p0, v0, v1, p1}, Lcom/callapp/common/model/json/JSONEvent;-><init>(Ljava/lang/String;ILcom/callapp/common/model/json/JSONDate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/callapp/common/model/json/JSONDate;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    .line 20
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    .line 22
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

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

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONEvent;

    .line 60
    iget v2, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONEvent;->type:I

    if-eq v2, v3, :cond_2

    return v1

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getFormattedDate()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 67
    iget v0, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDate;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setFormattedDate(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONEvent{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONEvent;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONEvent;->formattedDate:Lcom/callapp/common/model/json/JSONDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
