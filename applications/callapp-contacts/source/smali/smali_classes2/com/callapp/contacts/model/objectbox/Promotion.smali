.class public Lcom/callapp/contacts/model/objectbox/Promotion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;,
        Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    }
.end annotation


# instance fields
.field private currentNumberToGetGift:I

.field private expiredDate:Ljava/util/Date;

.field private id:J

.field private numberOfGift:I

.field private numberOfUsedGift:I

.field private numberToGetGift:I

.field private typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field private typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;IILcom/callapp/contacts/model/objectbox/Promotion$ProductType;ILcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    .line 92
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    .line 93
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 94
    iput p5, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    .line 95
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;IILcom/callapp/contacts/model/objectbox/Promotion$ProductType;ILcom/callapp/contacts/model/objectbox/Promotion$ProductType;J)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    .line 79
    iput p2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    .line 80
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    .line 81
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 82
    iput p5, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    .line 83
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 84
    iput-wide p7, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/Promotion;

    .line 175
    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 176
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    if-eq v2, v3, :cond_3

    return v1

    .line 177
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    if-eq v2, v3, :cond_4

    return v1

    .line 178
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    if-eq v2, v3, :cond_5

    return v1

    .line 179
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    if-eq v2, v3, :cond_6

    return v1

    .line 180
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    if-eq v2, v3, :cond_7

    return v1

    .line 181
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 183
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    if-ne v2, p1, :cond_9

    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public getCurrentNumberToGetGift()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    return v0
.end method

.method public getExpiredDate()Ljava/util/Date;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    return-wide v0
.end method

.method public getNumberOfGift()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    return v0
.end method

.method public getNumberOfUsedGift()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    return v0
.end method

.method public getNumberToGetGift()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    return v0
.end method

.method public getTypeOfGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public getTypeToBuyToGetGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 188
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 189
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 190
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 192
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 193
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public incrementCurrentProductNumber()V
    .locals 1

    .line 141
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    return-void
.end method

.method public setCurrentNumberToGetGift(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    return-void
.end method

.method public setExpiredDate(Ljava/util/Date;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    return-void
.end method

.method public setNumberOfGift(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    return-void
.end method

.method public setNumberOfUsedGift(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    return-void
.end method

.method public setNumberToGetGift(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    return-void
.end method

.method public setTypeOfGift(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-void
.end method

.method public setTypeToBuyToGetGift(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Promotion{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numberToGetGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberToGetGift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentNumberToGetGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->currentNumberToGetGift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeToBuyToGetGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeToBuyToGetGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfGift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfUsedGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->numberOfUsedGift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expiredDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->expiredDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeOfGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/Promotion;->typeOfGift:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
