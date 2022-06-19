.class public Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_DAY_INDEX:I = -0x1

.field private static final TYPE_DAY_OF_WEEK:Ljava/lang/String; = "dow"

.field private static final TYPE_EXTRA:Ljava/lang/String; = "extra"

.field private static final serialVersionUID:J = -0x17336f6dc0f04bdcL


# instance fields
.field private day:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private index:I

.field private start:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

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

    if-eqz p1, :cond_c

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 77
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;

    .line 79
    iget v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

    if-eq v2, v3, :cond_2

    return v1

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 82
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 83
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 84
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->text:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    if-nez p1, :cond_c

    return v0

    :cond_c
    :goto_4
    return v1
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

    return v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->text:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isDayOfWeek()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    const-string v1, "dow"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->day:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->end:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->index:I

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->start:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->type:Ljava/lang/String;

    return-void
.end method
