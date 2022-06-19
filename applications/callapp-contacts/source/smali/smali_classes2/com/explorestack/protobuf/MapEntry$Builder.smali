.class public Lcom/explorestack/protobuf/MapEntry$Builder;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/MapEntry$Builder<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private hasKey:Z

.field private hasValue:Z

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 251
    iget-object v2, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/MapEntry$1;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    .line 256
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    .line 257
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    .line 258
    iput-boolean p4, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    .line 259
    iput-boolean p5, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/MapEntry$1;)V
    .locals 0

    .line 243
    invoke-direct/range {p0 .. p5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 314
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 319
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/explorestack/protobuf/MapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapEntry;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 298
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/MapEntry$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 362
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearKey()Lcom/explorestack/protobuf/MapEntry$Builder;

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearValue()Lcom/explorestack/protobuf/MapEntry$Builder;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearKey()Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return-object p0
.end method

.method public clearValue()Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 442
    new-instance v6, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    iget-boolean v5, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->clone()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 400
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 415
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 416
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry$Builder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 418
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 0

    .line 431
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 426
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 436
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 409
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 410
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/MapEntry;->access$600(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 3

    .line 325
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 329
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 339
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    .line 343
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 345
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 351
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->toBuilder()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p2

    .line 354
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasKey:Z

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 372
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapEntry$Builder;->hasValue:Z

    return-object p0
.end method
