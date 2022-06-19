.class public Lcom/callapp/common/model/json/JSONFBUserOrPage;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final CLOSE_1_POSTFIX:Ljava/lang/String; = "_1_close"

.field private static final CLOSE_2_POSTFIX:Ljava/lang/String; = "_2_close"

.field private static final OPEN_1_POSTFIX:Ljava/lang/String; = "_1_open"

.field private static final OPEN_2_POSTFIX:Ljava/lang/String; = "_2_open"

.field private static final numToDayString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x67cb68679eb12d0cL


# instance fields
.field private about:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "about"
    .end annotation
.end field

.field private avgRating:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overall_star_rating"
    .end annotation
.end field

.field private bio:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bio"
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "birthday"
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBType;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation
.end field

.field private checkins:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkins"
    .end annotation
.end field

.field private cover:Lcom/callapp/common/model/json/JSONFBCover;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cover"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation
.end field

.field private emails:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "emails"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation
.end field

.field private fqlType:Ljava/lang/String;

.field private hometown:Lcom/callapp/common/model/json/JSONFBType;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hometown"
    .end annotation
.end field

.field private hours:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private jsonfbHoursList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBHour;",
            ">;"
        }
    .end annotation
.end field

.field private jsonfbHoursRaw:Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hours"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_name"
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "link"
    .end annotation
.end field

.field private location:Lcom/callapp/common/model/json/JSONFBLocation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private page:Lcom/callapp/common/model/json/JSONFBEntity;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "page"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation
.end field

.field private priceRange:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_range"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "username"
    .end annotation
.end field

.field private website:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "website"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    sput-object v0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->numToDayString:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbout()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->about:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgRating()D
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->avgRating:D

    return-wide v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBType;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckins()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->checkins:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCover()Lcom/callapp/common/model/json/JSONFBCover;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->cover:Lcom/callapp/common/model/json/JSONFBCover;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->email:Ljava/lang/String;

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->emails:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->emails:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFqlType()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->fqlType:Ljava/lang/String;

    return-object v0
.end method

.method public getHometown()Lcom/callapp/common/model/json/JSONFBType;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hometown:Lcom/callapp/common/model/json/JSONFBType;

    return-object v0
.end method

.method public getHometownName()Ljava/lang/String;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHometown()Lcom/callapp/common/model/json/JSONFBType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHometown()Lcom/callapp/common/model/json/JSONFBType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHours()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hours:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->jsonfbHoursList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hours:Ljava/util/Map;

    .line 179
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->jsonfbHoursList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONFBHour;

    .line 180
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hours:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBHour;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBHour;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hours:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationObject()Lcom/callapp/common/model/json/JSONFBLocation;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->location:Lcom/callapp/common/model/json/JSONFBLocation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 9

    .line 188
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHours()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONOpeningHours;-><init>()V

    .line 191
    sget-object v1, Lcom/callapp/common/model/json/JSONFBUserOrPage;->numToDayString:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/callapp/common/model/json/JSONOpeningHours;->setHoursPerDay(ILjava/util/Collection;)V

    .line 195
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHours()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_1_open"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHours()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_1_close"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHours()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_2_open"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHours()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2_close"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, " - "

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public getPage()Lcom/callapp/common/model/json/JSONFBEntity;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->page:Lcom/callapp/common/model/json/JSONFBEntity;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceRange()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->priceRange:Ljava/lang/String;

    return-object v0
.end method

.method public getRawHours()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->jsonfbHoursRaw:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getTranslatedPriceRange()I
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->priceRange:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->priceRange:Ljava/lang/String;

    const-string v1, "Unspecified"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->priceRange:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->website:Ljava/lang/String;

    return-object v0
.end method

.method public setAbout(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->about:Ljava/lang/String;

    return-void
.end method

.method public setAvgRating(D)V
    .locals 0

    .line 358
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->avgRating:D

    return-void
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->bio:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCategoriesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBType;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->categories:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->category:Ljava/lang/String;

    return-void
.end method

.method public setCheckins(Ljava/lang/Integer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->checkins:Ljava/lang/Integer;

    return-void
.end method

.method public setCover(Lcom/callapp/common/model/json/JSONFBCover;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->cover:Lcom/callapp/common/model/json/JSONFBCover;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->description:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->emails:Ljava/util/List;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFqlType(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->fqlType:Ljava/lang/String;

    return-void
.end method

.method public setHometown(Lcom/callapp/common/model/json/JSONFBType;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->hometown:Lcom/callapp/common/model/json/JSONFBType;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonfbHoursList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBHour;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->jsonfbHoursList:Ljava/util/List;

    return-void
.end method

.method public setJsonfbHoursRaw(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->jsonfbHoursRaw:Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->link:Ljava/lang/String;

    return-void
.end method

.method public setLocationObject(Lcom/callapp/common/model/json/JSONFBLocation;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->location:Lcom/callapp/common/model/json/JSONFBLocation;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->name:Ljava/lang/String;

    return-void
.end method

.method public setPage(Lcom/callapp/common/model/json/JSONFBEntity;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->page:Lcom/callapp/common/model/json/JSONFBEntity;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPriceRange(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->priceRange:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->username:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBUserOrPage;->website:Ljava/lang/String;

    return-void
.end method
