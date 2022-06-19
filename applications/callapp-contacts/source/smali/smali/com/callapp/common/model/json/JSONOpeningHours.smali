.class public Lcom/callapp/common/model/json/JSONOpeningHours;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x2b304716eb244d64L


# instance fields
.field private friday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private saturday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sunday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thursday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tuesday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wednesday:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

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

    .line 166
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 168
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONOpeningHours;

    .line 169
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    if-nez v2, :cond_3

    .line 170
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    if-eqz v2, :cond_4

    return v1

    .line 172
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    if-nez v2, :cond_5

    .line 175
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    if-eqz v2, :cond_6

    return v1

    .line 177
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 179
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    if-nez v2, :cond_7

    .line 180
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    if-eqz v2, :cond_8

    return v1

    .line 182
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 184
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    if-nez v2, :cond_9

    .line 185
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    if-eqz v2, :cond_a

    return v1

    .line 187
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 189
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    if-nez v2, :cond_b

    .line 190
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    if-eqz v2, :cond_c

    return v1

    .line 192
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 194
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    if-nez v2, :cond_d

    .line 195
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    if-eqz v2, :cond_e

    return v1

    .line 197
    :cond_d
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 199
    :cond_e
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    if-nez v2, :cond_f

    .line 200
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    if-eqz p1, :cond_10

    return v1

    .line 202
    :cond_f
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0
.end method

.method public getFriday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    return-object v0
.end method

.method public getHoursPerDay(I)Ljava/util/Collection;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 140
    :pswitch_0
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getSaturday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getFriday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_2
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getThursday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_3
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getWednesday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_4
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getTuesday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_5
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getMonday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 128
    :pswitch_6
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getSunday()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMonday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    return-object v0
.end method

.method public getOpeningHoursMap()Ljava/util/Map;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/callapp/common/model/json/JSONOpeningHours;->getHoursPerDay(I)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSaturday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    return-object v0
.end method

.method public getSunday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    return-object v0
.end method

.method public getThursday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    return-object v0
.end method

.method public getTuesday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    return-object v0
.end method

.method public getWednesday()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Lcom/callapp/common/model/json/JSONOpeningHours;->getHoursPerDay(I)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setFriday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    return-void
.end method

.method public setHoursPerDay(ILjava/util/Collection;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setSaturday(Ljava/util/Collection;)V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setFriday(Ljava/util/Collection;)V

    return-void

    .line 113
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setThursday(Ljava/util/Collection;)V

    return-void

    .line 110
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setWednesday(Ljava/util/Collection;)V

    return-void

    .line 107
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setTuesday(Ljava/util/Collection;)V

    return-void

    .line 104
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setMonday(Ljava/util/Collection;)V

    return-void

    .line 101
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/callapp/common/model/json/JSONOpeningHours;->setSunday(Ljava/util/Collection;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMonday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    return-void
.end method

.method public setSaturday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    return-void
.end method

.method public setSunday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    return-void
.end method

.method public setThursday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    return-void
.end method

.method public setTuesday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    return-void
.end method

.method public setWednesday(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONOpeningHours{sunday="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->sunday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->monday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tuesday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->tuesday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wednesday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->wednesday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thursday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->thursday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->friday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saturday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOpeningHours;->saturday:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
