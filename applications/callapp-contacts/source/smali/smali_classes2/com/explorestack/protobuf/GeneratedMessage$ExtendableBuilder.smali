.class public abstract Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/explorestack/protobuf/GeneratedMessage$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/explorestack/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;",
        "Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private extensions:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1192
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1190
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1196
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1190
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;)Lcom/explorestack/protobuf/FieldSet;
    .locals 0

    .line 1184
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->buildExtensions()Lcom/explorestack/protobuf/FieldSet;

    move-result-object p0

    return-object p0
.end method

.method private buildExtensions()Lcom/explorestack/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    .line 1449
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-object v0
.end method

.method private ensureExtensionsIsMutable()V
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    :cond_0
    return-void
.end method

.method private verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1596
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1597
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1226
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 1227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extension is for type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addExtension(Lcom/explorestack/protobuf/Extension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1420
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->addExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final addExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1326
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1328
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1329
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1330
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1331
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 1332
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/Extension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1331
    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0
.end method

.method public addExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1425
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->addExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1578
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1580
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1581
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0

    .line 1585
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1206
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 1207
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/Extension;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1430
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clearExtension(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1340
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1342
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1343
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1344
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 1345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0
.end method

.method public clearExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1435
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clearExtension(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1550
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1552
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1553
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 1554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0

    .line 1557
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1215
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

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

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1477
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->access$900(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1479
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/explorestack/protobuf/Extension;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1375
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/Extension;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1260
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1262
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1263
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1266
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1268
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 1270
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1

    .line 1273
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 1272
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Extension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1276
    :cond_2
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/Extension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 1284
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1286
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1287
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 1289
    invoke-virtual {v1, v0, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 1288
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/Extension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1381
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/explorestack/protobuf/Extension;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1364
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I

    move-result p1

    return p1
.end method

.method public final getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1250
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1252
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1253
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    .line 1254
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final getExtensionCount(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I

    move-result p1

    return p1
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1484
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1485
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1486
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1488
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 1491
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    .line 1493
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 1499
    :cond_2
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1516
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1518
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1520
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1505
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1507
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1

    .line 1509
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/explorestack/protobuf/Extension;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1240
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1242
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1243
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1358
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1526
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1528
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1

    .line 1530
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result p1

    return p1
.end method

.method internalSetExtensionSet(Lcom/explorestack/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1201
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1454
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final mergeExtensionFields(Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage;)V
    .locals 1

    .line 1590
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1591
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage;->access$600(Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    .line 1592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-void
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v3

    new-instance v4, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {v4, p0}, Lcom/explorestack/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/explorestack/protobuf/Message$Builder;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    .line 1467
    invoke-static/range {v0 .. v5}, Lcom/explorestack/protobuf/MessageReflection;->mergeFieldFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MessageReflection$MergeTarget;I)Z

    move-result p1

    return p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/Extension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1409
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/Extension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1398
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setExtension(Lcom/explorestack/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1310
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1312
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1313
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1314
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 1317
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/Extension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1315
    invoke-virtual {v1, v0, p2, p1}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 1318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0
.end method

.method public final setExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1296
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p1

    .line 1298
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/Extension;)V

    .line 1299
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1300
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Extension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1301
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/Extension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0
.end method

.method public setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1415
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExtension(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1403
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1537
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1539
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1540
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1541
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0

    .line 1544
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1564
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1566
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->ensureExtensionsIsMutable()V

    .line 1567
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 1568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->onChanged()V

    return-object p0

    .line 1571
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1183
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object p1

    return-object p1
.end method
