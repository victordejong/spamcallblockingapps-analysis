.class public Lcom/callapp/contacts/model/objectbox/CacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private booleanVal:Ljava/lang/Boolean;

.field private bytesVal:[B

.field private expires:Ljava/util/Date;

.field private file:Ljava/lang/String;

.field private id:J

.field private integerVal:Ljava/lang/Integer;

.field private longVal:Ljava/lang/Long;

.field private stringVal:Ljava/lang/String;

.field private valueType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_a

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CacheData;

    .line 106
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    iget-wide v3, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 112
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 116
    :cond_7
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    return v0
.end method

.method public getBooleanVal()Ljava/lang/Boolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBytesVal()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    return-wide v0
.end method

.method public getIntegerVal()Ljava/lang/Integer;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLongVal()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    return-object v0
.end method

.method public getStringVal()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 125
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public setBooleanVal(Ljava/lang/Boolean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    return-void
.end method

.method public setBytesVal([B)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    return-void
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    return-void
.end method

.method public setIntegerVal(Ljava/lang/Integer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    return-void
.end method

.method public setLongVal(Ljava/lang/Long;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    return-void
.end method

.method public setStringVal(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    return-void
.end method

.method public setValueType(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expires="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->expires:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", valueType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->valueType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stringVal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->stringVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", longVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->longVal:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", booleanVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->booleanVal:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", integerVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->integerVal:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytesVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CacheData;->bytesVal:[B

    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
