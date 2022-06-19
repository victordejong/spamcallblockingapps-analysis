.class public abstract Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonModel"


# instance fields
.field protected fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p0, p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->bind(Lnet/pubnative/lite/sdk/utils/json/JsonModel;)V

    return-void
.end method

.method private castNumber(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 260
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 261
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 262
    const-class v1, Ljava/lang/Integer;

    if-ne p2, v1, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    const-class v1, Ljava/lang/Long;

    if-ne p2, v1, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 266
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-ne p2, v1, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 268
    :cond_2
    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_3

    .line 269
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 270
    :cond_3
    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_4

    .line 271
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 272
    :cond_4
    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_5

    .line 273
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    :cond_5
    return-object p1
.end method


# virtual methods
.method bind(Lnet/pubnative/lite/sdk/utils/json/JsonModel;)V
    .locals 7

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/utils/json/JsonModelFieldCache;->checkIfModelCached(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/json/JsonModelFieldCache;->getFields(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    return-void

    .line 89
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 91
    const-class v4, Lnet/pubnative/lite/sdk/utils/json/BindField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/utils/json/BindField;

    if-eqz v4, :cond_3

    .line 93
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 94
    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->parseArray(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    :cond_1
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->parseMap(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_2
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->parseLiteral(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/json/JsonModelFieldCache;->setFields(Ljava/lang/Class;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected castObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/pubnative/lite/sdk/utils/json/JsonModel;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 329
    const-class v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    return-object p1
.end method

.method public fromJson(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 220
    sget-object p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t parse JSON object because of null input"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 223
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 224
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 225
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 226
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    .line 227
    iget-object v5, v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    iget-boolean v5, v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isArray:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 231
    :try_start_0
    iget-object v5, v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v6, :cond_3

    .line 237
    invoke-virtual {p0, v4, v6}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fromJsonArray(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 239
    :cond_1
    iget-boolean v5, v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isMap:Z

    if-eqz v5, :cond_2

    .line 242
    :try_start_1
    iget-object v5, v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-eqz v6, :cond_3

    .line 248
    invoke-virtual {p0, v4, v6}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fromJsonMap(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 251
    :cond_2
    invoke-virtual {p0, v4, p1}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fromJsonLiteral(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->castNumber(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected fromJsonArray(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-boolean v1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 286
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->entityType:Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->castObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 290
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 291
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected fromJsonLiteral(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    iget-boolean v0, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->entityType:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->castObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    move-result-object p1

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected fromJsonMap(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 299
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 300
    iget-boolean v2, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz v2, :cond_0

    .line 301
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->entityType:Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->castObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 308
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected parseArray(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;
    .locals 2

    .line 111
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 113
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 114
    check-cast v0, Ljava/lang/Class;

    .line 116
    new-instance v1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0, p2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v1
.end method

.method protected parseLiteral(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;
    .locals 1

    .line 133
    new-instance v0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected parseMap(Ljava/lang/reflect/Field;Ljava/lang/Class;)Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;
    .locals 3

    .line 120
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 123
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 124
    check-cast v1, Ljava/lang/Class;

    .line 126
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 127
    check-cast v0, Ljava/lang/Class;

    .line 129
    new-instance v2, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1, v0, p2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v2
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 148
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 150
    iget-object v6, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    .line 151
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    iget-object v6, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->fields:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;

    .line 153
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 155
    iget-boolean v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isArray:Z

    if-eqz v6, :cond_0

    .line 156
    iget-object v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJsonArray(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 157
    :cond_0
    iget-boolean v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isMap:Z

    if-eqz v6, :cond_1

    .line 158
    iget-object v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJsonMap(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 160
    :cond_1
    iget-object v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJsonLiteral(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-boolean v6, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz v6, :cond_2

    .line 162
    iget-object v5, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    check-cast v4, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 164
    :cond_2
    iget-object v5, v5, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected toJsonArray(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    check-cast p2, Ljava/lang/Iterable;

    .line 176
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 177
    iget-boolean p1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 179
    check-cast p2, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 183
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected toJsonLiteral(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-boolean p1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz p1, :cond_0

    .line 207
    check-cast p2, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected toJsonMap(Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    check-cast p2, Ljava/util/Map;

    .line 191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    iget-boolean p1, p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    return-object v0
.end method
