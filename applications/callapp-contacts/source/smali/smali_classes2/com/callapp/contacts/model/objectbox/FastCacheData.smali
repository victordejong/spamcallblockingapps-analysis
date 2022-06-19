.class public Lcom/callapp/contacts/model/objectbox/FastCacheData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field private expirationDate:Ljava/util/Date;

.field private fullName:Ljava/lang/String;

.field protected id:Ljava/lang/Long;

.field private isSpam:Z

.field private nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private phoneOrIdKey:Ljava/lang/String;

.field private photoBackGroundColor:Ljava/lang/Integer;

.field private photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field private photoUrl:Ljava/lang/String;

.field private photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

.field private spamScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->spamScore:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/callapp/contacts/model/contact/PhotoUrls;ZLcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->spamScore:I

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    .line 57
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    .line 59
    iput-boolean p6, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    .line 60
    iput-object p7, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 61
    iput-object p8, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 62
    iput-object p9, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->populateSpamScore()V

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

    if-eqz p1, :cond_b

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 167
    iget-boolean v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 175
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 177
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 179
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 181
    :cond_9
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v2, v3, :cond_a

    return v1

    .line 182
    :cond_a
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v2, p1, :cond_b

    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBackGroundColor()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/PhotoUrls;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 193
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 194
    iget-boolean v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 195
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DataSource;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DataSource;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public isExpired(I)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSpam()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    const v0, 0x7f0b0056

    .line 141
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isExpired(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public populateSpamScore()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->spamScore:I

    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setNameDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setPhotoBackGroundColor(Ljava/lang/Integer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setPhotoDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrls(Lcom/callapp/contacts/model/contact/PhotoUrls;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    return-void
.end method

.method public setSpam(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->populateSpamScore()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FastCacheData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expirationDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fullName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", photoBGColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoBackGroundColor:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isSpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", photoDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->photoDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nameDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->nameDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheData;->spamScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
