.class public Lcom/callapp/contacts/model/objectbox/CommonSpammer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private commonSpammerName:Ljava/lang/String;

.field private commonSpammerPhone:Ljava/lang/String;

.field private commonSpammerScore:I

.field protected id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    .line 23
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    .line 67
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    iget v2, p1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    if-eq v1, v2, :cond_2

    return v0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getCommonSpammerName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonSpammerPhone()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonSpammerScore()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setCommonSpammerName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    return-void
.end method

.method public setCommonSpammerPhone(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    return-void
.end method

.method public setCommonSpammerScore(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommonSpammer{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commonSpammerName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commonSpammerPhone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", commonSpammerScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->commonSpammerScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
