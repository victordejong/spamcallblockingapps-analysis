.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TARGET_TYPE_COUNT:I


# instance fields
.field protected _defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

.field protected final _defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

.field protected _perClassCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected _perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/LogicalType;->values()[Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "[",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 61
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    return-void
.end method

.method private static _copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_1

    .line 77
    :cond_0
    array-length v0, v0

    .line 78
    new-array v2, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 80
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_2

    goto :goto_3

    .line 87
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 92
    :cond_3
    :goto_3
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-object v0
.end method

.method public defaultCoercions()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    return-object v0
.end method

.method public findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 167
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 177
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v0

    aget-object p3, p3, v0

    if-eqz p3, :cond_1

    .line 180
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_1

    return-object p3

    .line 188
    :cond_1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 194
    :cond_2
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape:[I

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_e

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_3

    goto :goto_0

    .line 207
    :cond_3
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p3, :cond_6

    .line 208
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 209
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 200
    :cond_4
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p3, :cond_6

    .line 202
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    :cond_5
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 218
    :cond_6
    :goto_0
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p2, p3, :cond_8

    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p2, p3, :cond_8

    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p2, p3, :cond_8

    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 225
    sget-object p3, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 226
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 230
    :cond_9
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    if-ne p4, p3, :cond_d

    if-nez v0, :cond_c

    .line 233
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 235
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 240
    :cond_a
    sget-object p1, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p1, :cond_b

    .line 241
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 244
    :cond_b
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 236
    :cond_c
    :goto_2
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 248
    :cond_d
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 197
    :cond_e
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    :cond_f
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 276
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v1

    .line 279
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 285
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result p2

    aget-object p2, v0, p2

    if-eqz p2, :cond_2

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    if-nez p3, :cond_2

    .line 291
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    :cond_2
    if-nez v1, :cond_3

    .line 298
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v1

    :cond_3
    if-nez p3, :cond_4

    .line 301
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 305
    :cond_4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    return-object p4

    :cond_5
    if-eqz p3, :cond_6

    return-object p3

    .line 314
    :cond_6
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    :cond_7
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1
.end method

.method public findOrCreateCoercion(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_0

    .line 121
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result p1

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    aput-object v1, v0, p1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public findOrCreateCoercion(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
