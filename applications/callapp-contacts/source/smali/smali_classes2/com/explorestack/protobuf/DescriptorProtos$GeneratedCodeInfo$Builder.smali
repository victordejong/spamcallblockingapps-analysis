.class public final Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private annotation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43084
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 43249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43085
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 43066
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 43090
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 43249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43091
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 43066
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAnnotationIsMutable()V
    .locals 2

    .line 43251
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 43252
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43253
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 43566
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 43567
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 43571
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 43572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 43573
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43575
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 43072
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$29000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 43094
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 43096
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllAnnotation(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;"
        }
    .end annotation

    .line 43437
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43438
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43439
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 43441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43443
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAnnotation(ILcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43418
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43419
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43420
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43423
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAnnotation(ILcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43377
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43381
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43382
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43385
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAnnotation(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43399
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43400
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43401
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43404
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAnnotation(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43355
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43357
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43359
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43360
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43363
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAnnotationBuilder()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    .line 43535
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 43536
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v1

    .line 43535
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object v0
.end method

.method public final addAnnotationBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    .line 43548
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 43549
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v1

    .line 43548
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43178
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    .locals 2

    .line 43124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    .line 43125
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 43126
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    .locals 2

    .line 43133
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 43135
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 43136
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 43137
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43138
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    .line 43140
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30602(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 43142
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30602(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;Ljava/util/List;)Ljava/util/List;

    .line 43144
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43101
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 43102
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43104
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    goto :goto_0

    .line 43106
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAnnotation()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43456
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43458
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    .line 43459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43461
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43161
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43166
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43150
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotation(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 43299
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43300
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p1

    .line 43302
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object p1
.end method

.method public final getAnnotationBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 1

    .line 43493
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    return-object p1
.end method

.method public final getAnnotationBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;",
            ">;"
        }
    .end annotation

    .line 43561
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationCount()I
    .locals 1

    .line 43284
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43285
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 43287
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getAnnotationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .line 43269
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43270
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 43272
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;
    .locals 1

    .line 43505
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43506
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;

    return-object p1

    .line 43507
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;

    return-object p1
.end method

.method public final getAnnotationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 43520
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 43521
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 43523
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    .locals 1

    .line 43119
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 43066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 43114
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$29000()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 43078
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$29100()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    .line 43079
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43235
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 43241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43237
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43238
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

    .line 43241
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    .line 43243
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 2

    .line 43191
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 43192
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 43193
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 43194
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43195
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43196
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    goto :goto_0

    .line 43198
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43199
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43201
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_1

    .line 43204
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 43205
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43206
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 43207
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 43208
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    .line 43209
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->bitField0_:I

    .line 43210
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 43212
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->getAnnotationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 43214
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->access$30600(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 43218
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    .line 43219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43182
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    if-eqz v0, :cond_0

    .line 43183
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1

    .line 43185
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

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

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

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43586
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeAnnotation(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43474
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43475
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43476
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43479
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAnnotation(ILcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43337
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43338
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43339
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43342
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAnnotation(ILcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 1

    .line 43315
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 43317
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43319
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->ensureAnnotationIsMutable()V

    .line 43320
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->annotation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 43323
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43156
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43172
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;
    .locals 0

    .line 43580
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 43066
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method
