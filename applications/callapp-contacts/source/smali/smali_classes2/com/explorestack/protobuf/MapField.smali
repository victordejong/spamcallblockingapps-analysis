.class public Lcom/explorestack/protobuf/MapField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;,
        Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;,
        Lcom/explorestack/protobuf/MapField$Converter;,
        Lcom/explorestack/protobuf/MapField$StorageMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/MutabilityOracle;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/explorestack/protobuf/MapField$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$Converter<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile isMutable:Z

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile mode:Lcom/explorestack/protobuf/MapField$StorageMode;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;-><init>(Lcom/explorestack/protobuf/MapEntry;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$Converter<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    .line 131
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 132
    new-instance p1, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, p3}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    return-void
.end method

.method private convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$Converter;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;)",
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Message;

    .line 173
    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/MapField;->convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, v0}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    return-object p1
.end method

.method private convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/explorestack/protobuf/MapField;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$Converter;->convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    return-void
.end method

.method public static emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 208
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 209
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    return-void
.end method

.method public copy()Lcom/explorestack/protobuf/MapField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public ensureMutable()V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 215
    instance-of v0, p1, Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/MapField;

    .line 219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    .line 238
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 240
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 184
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 186
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getMapEntryMessageDefaultInstance()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MapField$Converter;->getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method getMutableList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 252
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    :cond_0
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    .line 198
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/MapField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
