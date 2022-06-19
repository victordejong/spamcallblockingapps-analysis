.class public Lcom/explorestack/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/explorestack/protobuf/ByteString;

.field private extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/explorestack/protobuf/ByteString;

.field protected volatile value:Lcom/explorestack/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/LazyFieldLite;->checkArguments(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V

    .line 120
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 121
    iput-object p2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method private static checkArguments(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V
    .locals 1

    const-string v0, "found null ExtensionRegistry"

    .line 435
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "found null ByteString"

    .line 438
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static fromValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/LazyFieldLite;
    .locals 1

    .line 132
    new-instance v0, Lcom/explorestack/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/explorestack/protobuf/LazyFieldLite;-><init>()V

    .line 133
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/LazyFieldLite;->setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 333
    :try_start_0
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 193
    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 194
    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected ensureInitialized(Lcom/explorestack/protobuf/MessageLite;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 414
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 417
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iget-object v2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    .line 418
    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 419
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    goto :goto_0

    .line 421
    :cond_2
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 422
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;
    :try_end_1
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 428
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 430
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_0
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/LazyFieldLite;

    .line 153
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 154
    iget-object v1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/LazyFieldLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyFieldLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 160
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/LazyFieldLite;->getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 162
    :cond_4
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->ensureInitialized(Lcom/explorestack/protobuf/MessageLite;)V

    .line 224
    iget-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/explorestack/protobuf/LazyFieldLite;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->set(Lcom/explorestack/protobuf/LazyFieldLite;)V

    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ByteString;->concat(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 279
    iget-object p1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iget-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    return-void

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    iget-object v1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iget-object p1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/LazyFieldLite;->setByteString(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 306
    iput-object p2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->concat(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    iget-object p2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/LazyFieldLite;->setByteString(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 323
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public set(Lcom/explorestack/protobuf/LazyFieldLite;)V
    .locals 1

    .line 204
    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 205
    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 206
    iget-object v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 211
    iget-object p1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    :cond_0
    return-void
.end method

.method public setByteString(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 343
    invoke-static {p2, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->checkArguments(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V

    .line 344
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 345
    iput-object p2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 347
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method public setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    const/4 v1, 0x0

    .line 235
    iput-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 236
    iput-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 237
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    .line 378
    :cond_1
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 383
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 388
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Lcom/explorestack/protobuf/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 396
    invoke-interface {p1, p2, v0}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    return-void

    .line 400
    :cond_2
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method
