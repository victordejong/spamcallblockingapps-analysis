.class public Lcom/callapp/contacts/model/contact/GmailEmailData;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x526c401dffcba8a9L


# instance fields
.field private body:Ljava/lang/String;

.field private email:Lcom/callapp/common/model/json/JSONEmail;

.field private fullName:Ljava/lang/String;

.field private internalDate:J

.field private snippet:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/common/model/json/JSONEmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    .line 21
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    .line 24
    iput-wide p6, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->internalDate:J

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

    .line 98
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;

    if-nez v2, :cond_2

    return v1

    .line 100
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/GmailEmailData;

    .line 101
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-eqz v2, :cond_4

    return v1

    .line 104
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONEmail;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 107
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 109
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 112
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 114
    :cond_7
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 116
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 117
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 119
    :cond_9
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 121
    :cond_a
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 122
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 124
    :cond_b
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 126
    :cond_c
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 127
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    if-eqz p1, :cond_e

    return v1

    .line 129
    :cond_d
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Lcom/callapp/common/model/json/JSONEmail;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalDate()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->internalDate:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setInternalDate(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->internalDate:J

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmailEmailData [fullName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->email:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GmailEmailData;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
