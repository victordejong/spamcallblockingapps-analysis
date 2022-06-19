.class public Lcom/callapp/common/model/json/JSONDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14dddf99a92b86a8L


# instance fields
.field private formattedDay:I

.field private formattedMonth:I

.field private formattedYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    .line 24
    iput p2, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    .line 25
    iput p3, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->getFormattedYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->getFormattedMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->getFormattedDay()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/callapp/common/model/json/JSONDate;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    const/4 p1, 0x5

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

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

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONDate;

    .line 67
    iget v2, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    if-eq v2, v3, :cond_2

    return v1

    .line 68
    :cond_2
    iget v2, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    if-eq v2, v3, :cond_3

    return v1

    .line 69
    :cond_3
    iget v2, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    iget p1, p1, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getFormattedDay()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    return v0
.end method

.method public getFormattedMonth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    return v0
.end method

.method public getFormattedYear()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    iget v0, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    ushr-int/lit8 v1, v0, 0x20

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setFormattedDay(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    return-void
.end method

.method public setFormattedMonth(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    return-void
.end method

.method public setFormattedYear(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    return-void
.end method

.method public toCalendar()Ljava/util/Calendar;
    .locals 8

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 75
    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    iget v0, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONDate{year="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONDate;->formattedDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
