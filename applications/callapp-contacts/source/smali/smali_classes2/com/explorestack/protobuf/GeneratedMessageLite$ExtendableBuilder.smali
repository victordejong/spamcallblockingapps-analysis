.class public abstract Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 912
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    .line 933
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object v0, v1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    :cond_0
    return-object v0
.end method

.method private verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 951
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 953
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;
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

    .line 1015
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1017
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1019
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1020
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 942
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    .line 947
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/explorestack/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;
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

    .line 1026
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1028
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1029
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1030
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method protected copyOnWrite()V
    .locals 2

    .line 923
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 1
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

    .line 984
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 969
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I

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

    .line 962
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z

    move-result p1

    return p1
.end method

.method internalSetExtensionSet(Lcom/explorestack/protobuf/FieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/explorestack/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method public final setExtension(Lcom/explorestack/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;
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

    .line 1002
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1004
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1006
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1008
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1007
    invoke-virtual {v0, v1, p2, p1}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final setExtension(Lcom/explorestack/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;
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

    .line 990
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->access$000(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 992
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 994
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/explorestack/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 995
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;->toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method
