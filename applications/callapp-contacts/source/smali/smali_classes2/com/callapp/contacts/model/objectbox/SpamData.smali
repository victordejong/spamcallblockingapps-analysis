.class public Lcom/callapp/contacts/model/objectbox/SpamData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:J

.field private phoneAsRaw:Ljava/lang/String;

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    .line 27
    iput-wide p4, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SpamData;

    .line 61
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    iget-wide v3, p1, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 62
    :cond_2
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    iget-wide v3, p1, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getId()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    return-wide v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 68
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 70
    iget-wide v3, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public setId(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    return-void
.end method

.method public setPhoneAsRaw(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method

.method public setWhen(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpamData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phoneAsRaw=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
