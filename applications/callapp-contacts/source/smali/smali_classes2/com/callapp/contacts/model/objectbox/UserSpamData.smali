.class public Lcom/callapp/contacts/model/objectbox/UserSpamData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;
    }
.end annotation


# static fields
.field public static final NOT_SPAM:I = 0x0

.field public static final SPAM_MAX_THRESHOLD:I = 0x7fffffff

.field private static final serialVersionUID:J = -0x71ffe99d6d73c7faL


# instance fields
.field private id:J

.field private phone:Ljava/lang/String;

.field private spamScore:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    .line 49
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

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

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    .line 71
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    iget-wide v3, p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    if-eq v1, v2, :cond_3

    return v0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getId()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    return-wide v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSpamScore()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isSpam()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setId(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    return-void
.end method

.method public setIsSpam(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSpamScore(I)V
    .locals 0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserSpamData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", spamScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamData;->spamScore:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
