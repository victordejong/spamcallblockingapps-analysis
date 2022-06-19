.class public Lcom/callapp/common/model/json/JSONXingUserBirthday;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5950226794d31f4cL


# instance fields
.field private day:Ljava/lang/Integer;

.field private month:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;

    if-nez v2, :cond_2

    return v1

    .line 54
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;

    .line 55
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 56
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    return v1

    .line 58
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    if-nez v2, :cond_5

    .line 61
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    return v1

    .line 63
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 65
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    if-nez v2, :cond_7

    .line 66
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    return v1

    .line 68
    :cond_7
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getDay()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setDay(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->day:Ljava/lang/Integer;

    return-void
.end method

.method public setMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->month:Ljava/lang/Integer;

    return-void
.end method

.method public setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserBirthday;->year:Ljava/lang/Integer;

    return-void
.end method
