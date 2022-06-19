.class public Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x72ab6ece8b2541b0L


# instance fields
.field private is_now_open:Ljava/lang/String;

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
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

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    .line 34
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->is_now_open:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->is_now_open:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getIs_now_open()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->is_now_open:Ljava/lang/String;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->is_now_open:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setIs_now_open(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->is_now_open:Ljava/lang/String;

    return-void
.end method

.method public setRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->rows:Ljava/util/List;

    return-void
.end method
