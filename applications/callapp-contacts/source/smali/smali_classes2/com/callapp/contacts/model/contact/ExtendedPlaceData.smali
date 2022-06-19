.class public Lcom/callapp/contacts/model/contact/ExtendedPlaceData;
.super Lcom/callapp/contacts/model/contact/PlaceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x77399518d56275acL


# instance fields
.field private atAGlance:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private menuUrl:Ljava/lang/String;

.field private openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

.field private priceRange:I

.field private reserveUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/PlaceData;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/PlaceData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 125
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;

    .line 126
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 127
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 129
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 132
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    .line 134
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 137
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    .line 139
    :cond_7
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-nez v1, :cond_9

    .line 142
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-eqz v1, :cond_a

    return v2

    .line 144
    :cond_9
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONOpeningHours;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 146
    :cond_a
    iget v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    iget v3, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    if-eq v1, v3, :cond_b

    return v2

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 149
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    if-eqz p1, :cond_d

    return v2

    .line 151
    :cond_c
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public getAtAGlance()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-object v0
.end method

.method public getPriceRange()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    return v0
.end method

.method public getReserveUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayOpeningHours()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Lcom/callapp/common/model/json/JSONOpeningHours;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONOpeningHours;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public isOpenNow()Ljava/lang/Boolean;
    .locals 7

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getTodayOpeningHours()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " "

    .line 78
    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 79
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    .line 81
    aget-object v3, v2, v3

    const-string v4, ":"

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 82
    aget-object v6, v2, v5

    invoke-static {v6, v4}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    aget-object v2, v2, v5

    invoke-static {v2, v4}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v3, v0, :cond_2

    if-lt v0, v4, :cond_1

    if-ne v0, v4, :cond_0

    if-lt v1, v2, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    if-ge v4, v3, :cond_2

    .line 90
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 92
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setAtAGlance(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->atAGlance:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->description:Ljava/lang/String;

    return-void
.end method

.method public setMenuUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->menuUrl:Ljava/lang/String;

    return-void
.end method

.method public setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-void
.end method

.method public setPriceRange(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->priceRange:I

    return-void
.end method

.method public setReserveUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->reserveUrl:Ljava/lang/String;

    return-void
.end method
