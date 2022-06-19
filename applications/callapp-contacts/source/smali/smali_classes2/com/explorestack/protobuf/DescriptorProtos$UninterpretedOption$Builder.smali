.class public final Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private aggregateValue_:Ljava/lang/Object;

.field private bitField0_:I

.field private doubleValue_:D

.field private identifierValue_:Ljava/lang/Object;

.field private nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private negativeIntValue_:J

.field private positiveIntValue_:J

.field private stringValue_:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36520
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 36750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    const-string v0, ""

    .line 36989
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37191
    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    .line 37226
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 36521
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 36502
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 36526
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 36750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    const-string p1, ""

    .line 36989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37191
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    .line 37226
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 36527
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 36502
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureNameIsMutable()V
    .locals 2

    .line 36752
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 36753
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36754
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36508
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$24800()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation

    .line 36977
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 36978
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 36982
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 36983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 36984
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36986
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 36530
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 36532
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllName(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    .line 36888
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36889
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36890
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 36892
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36894
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addName(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36874
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36875
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36876
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36877
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36879
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addName(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36843
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36845
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36847
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36848
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36851
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addName(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36860
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36861
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36862
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36865
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addName(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36826
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36828
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36830
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36831
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36832
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36834
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addNameBuilder()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .line 36956
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 36957
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    .line 36956
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object v0
.end method

.method public final addNameBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .line 36964
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 36965
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    .line 36964
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 36652
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 2

    .line 36572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 36573
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 36574
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 5

    .line 36581
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 36582
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36584
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 36586
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36587
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36589
    :cond_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26202(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 36591
    :cond_1
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26202(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 36596
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26302(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    .line 36598
    iget-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    invoke-static {v0, v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26402(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;J)J

    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    .line 36602
    iget-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    invoke-static {v0, v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26502(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;J)J

    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 36606
    iget-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    invoke-static {v0, v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26602(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;D)D

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x10

    .line 36612
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26702(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    or-int/lit8 v2, v2, 0x20

    .line 36616
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26802(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36617
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26902(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;I)I

    .line 36618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 4

    .line 36537
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 36538
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36540
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    goto :goto_0

    .line 36542
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-string v0, ""

    .line 36544
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 36545
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 36546
    iput-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    and-int/lit8 v1, v1, -0x5

    .line 36547
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36548
    iput-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    and-int/lit8 v1, v1, -0x9

    .line 36549
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 36550
    iput-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    and-int/lit8 v1, v1, -0x11

    .line 36551
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36552
    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    .line 36553
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36554
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x41

    .line 36555
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAggregateValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37283
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37284
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 37285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDoubleValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 37185
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 37186
    iput-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    .line 37187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 36635
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearIdentifierValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37071
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37072
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36902
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36903
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36904
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36907
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearNegativeIntValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 37153
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 37154
    iput-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    .line 37155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 36640
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearPositiveIntValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 37121
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 37122
    iput-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    .line 37123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStringValue()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37220
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37221
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    .line 37222
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36624
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAggregateValue()Ljava/lang/String;
    .locals 2

    .line 37237
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 37238
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 37239
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 37241
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37242
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37243
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 37247
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAggregateValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 37255
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 37256
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37257
    check-cast v0, Ljava/lang/String;

    .line 37258
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 37260
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    return-object v0

    .line 37263
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 36567
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 36502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36562
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$24800()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDoubleValue()D
    .locals 2

    .line 37170
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    return-wide v0
.end method

.method public final getIdentifierValue()Ljava/lang/String;
    .locals 2

    .line 37010
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37011
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 37012
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 37014
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37015
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37016
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 37020
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifierValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 37033
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37034
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37035
    check-cast v0, Ljava/lang/String;

    .line 37036
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 37038
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    return-object v0

    .line 37041
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .line 36785
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36786
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p1

    .line 36788
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p1
.end method

.method public final getNameBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    .line 36929
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    return-object p1
.end method

.method public final getNameBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            ">;"
        }
    .end annotation

    .line 36972
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNameCount()I
    .locals 1

    .line 36775
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36776
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 36778
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .line 36765
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36766
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36768
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNameOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;
    .locals 1

    .line 36936
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36937
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;

    return-object p1

    .line 36938
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;

    return-object p1
.end method

.method public final getNameOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation

    .line 36946
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 36947
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36949
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNegativeIntValue()J
    .locals 2

    .line 37138
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    return-wide v0
.end method

.method public final getPositiveIntValue()J
    .locals 2

    .line 37106
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    return-wide v0
.end method

.method public final getStringValue()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 37202
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasAggregateValue()Z
    .locals 1

    .line 37231
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDoubleValue()Z
    .locals 1

    .line 37164
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIdentifierValue()Z
    .locals 1

    .line 36999
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNegativeIntValue()Z
    .locals 1

    .line 37132
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPositiveIntValue()Z
    .locals 1

    .line 37100
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStringValue()Z
    .locals 1

    .line 37196
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 36514
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$24900()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36515
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36721
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 36722
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getName(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36736
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 36742
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36738
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36739
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 36742
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36744
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 36665
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 36666
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 36667
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 36668
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36669
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36670
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    goto :goto_0

    .line 36672
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36673
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36675
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_1

    .line 36678
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 36679
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36680
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 36681
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 36682
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    .line 36683
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36684
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 36686
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getNameFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 36688
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26200(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 36692
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36693
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36694
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26300(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 36695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    .line 36697
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36698
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36700
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36701
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36703
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36704
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36706
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36707
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36709
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36710
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 36711
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->access$26800(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 36712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    .line 36714
    :cond_b
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36656
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    .line 36657
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1

    .line 36659
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37310
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeName(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36915
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36916
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36917
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36920
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAggregateValue(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37272
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37274
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37275
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 37276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAggregateValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37296
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37297
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->aggregateValue_:Ljava/lang/Object;

    .line 37298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDoubleValue(D)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37176
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37177
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->doubleValue_:D

    .line 37178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 36630
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setIdentifierValue(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37055
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37057
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37058
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdentifierValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37087
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37089
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37090
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->identifierValue_:Ljava/lang/Object;

    .line 37091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36813
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36814
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36815
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36818
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setName(ILcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 36796
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->nameBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 36798
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36800
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->ensureNameIsMutable()V

    .line 36801
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->name_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_0

    .line 36804
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setNegativeIntValue(J)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37144
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37145
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->negativeIntValue_:J

    .line 37146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPositiveIntValue(J)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37112
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37113
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->positiveIntValue_:J

    .line 37114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 36646
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setStringValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37211
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->bitField0_:I

    .line 37212
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->stringValue_:Lcom/explorestack/protobuf/ByteString;

    .line 37213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37304
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 36502
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method
