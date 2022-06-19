.class public final Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Audit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private corr_:Lcom/explorestack/protobuf/adcom/Ad;

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private feedback_:Lcom/explorestack/protobuf/LazyStringList;

.field private init_:Ljava/lang/Object;

.field private lastmod_:Ljava/lang/Object;

.field private status_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23597
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 23826
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23891
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    const-string v0, ""

    .line 24030
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24119
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23598
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 23603
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 23826
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23891
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    const-string p1, ""

    .line 24030
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24119
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23604
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 23579
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 23579
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 24526
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 24527
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24528
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureFeedbackIsMutable()V
    .locals 2

    .line 23893
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 23894
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23895
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getCorrFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24359
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24360
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 24363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 24365
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24367
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23585
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24512
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24513
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 24516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 24518
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24520
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24823
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24824
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 24828
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 24829
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 24830
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24832
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 23608
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23609
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;"
        }
    .end annotation

    .line 24702
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24703
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24704
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 24706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24708
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllFeedback(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;"
        }
    .end annotation

    .line 23990
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 23991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 23993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24684
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24685
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24686
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24689
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24645
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24647
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24649
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24653
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24666
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24667
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24668
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24671
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24626
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24628
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24629
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24632
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 24794
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24795
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 24794
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 24806
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24807
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 24806
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addFeedback(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 23973
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23975
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 23976
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final addFeedbackBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24021
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24023
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19600(Lcom/explorestack/protobuf/ByteString;)V

    .line 24024
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 24025
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 24026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23729
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 2

    .line 23657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    .line 23658
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 23659
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 2

    .line 23666
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 23668
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18602(Lcom/explorestack/protobuf/adcom/Ad$Audit;I)I

    .line 23669
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 23670
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23671
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 23673
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18702(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 23674
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18802(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23675
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18902(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23676
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 23677
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19002(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 23679
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19002(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    .line 23681
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 23682
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19102(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 23684
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19102(Lcom/explorestack/protobuf/adcom/Ad$Audit;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 23686
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 23687
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 23688
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23689
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 23691
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19202(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 23693
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19202(Lcom/explorestack/protobuf/adcom/Ad$Audit;Ljava/util/List;)Ljava/util/List;

    .line 23695
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 23614
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 23615
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23617
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23618
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    const-string v0, ""

    .line 23619
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 23621
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 23623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23624
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 23626
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 23627
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 23629
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 23630
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 23632
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 23633
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 23635
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 23636
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23637
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_2

    .line 23639
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearCorr()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24309
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24310
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24313
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24314
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 24465
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24466
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24467
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24469
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24470
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24720
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 24722
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24725
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearFeedback()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24005
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 24006
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 24007
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23712
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final clearInit()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24096
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLastmod()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24185
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23717
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final clearStatus()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23886
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23887
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 23701
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCorr()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 24231
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24232
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_0
    return-object v0

    .line 24234
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public final getCorrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 24329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 24330
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getCorrFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public final getCorrOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .locals 1

    .line 24341
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24342
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/AdOrBuilder;

    return-object v0

    .line 24344
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_1

    .line 24345
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 23652
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23647
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 24391
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24392
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 24394
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 24484
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 24485
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 24495
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24496
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 24498
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 24499
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 24571
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24572
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 24574
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 24755
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final getExtProtoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any$Builder;",
            ">;"
        }
    .end annotation

    .line 24818
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 24557
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24558
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 24560
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 24543
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24544
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24546
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 24766
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24767
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 24768
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24780
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24781
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24783
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFeedback(I)Ljava/lang/String;
    .locals 1

    .line 23930
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getFeedbackBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 23942
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getFeedbackCount()I
    .locals 1

    .line 23919
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 23908
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getFeedbackList()Ljava/util/List;
    .locals 1

    .line 23579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getFeedbackList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getInit()Ljava/lang/String;
    .locals 2

    .line 24039
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24040
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 24041
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24043
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 24044
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 24047
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24059
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24060
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24061
    check-cast v0, Ljava/lang/String;

    .line 24062
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24064
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 24067
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLastmod()Ljava/lang/String;
    .locals 2

    .line 24128
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24129
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 24130
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 24132
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 24133
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 24136
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24148
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24149
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24150
    check-cast v0, Ljava/lang/String;

    .line 24151
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24153
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 24156
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getStatus()Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    .line 23858
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->valueOf(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23859
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    :cond_0
    return-object v0
.end method

.method public final getStatusValue()I
    .locals 1

    .line 23835
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    return v0
.end method

.method public final hasCorr()Z
    .locals 1

    .line 24220
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 24381
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 23591
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Audit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23592
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24286
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24287
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    .line 24289
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 24291
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24293
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_1

    .line 24295
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24443
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24444
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 24446
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 24448
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24450
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_1

    .line 24452
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

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

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23813
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 23819
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23815
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Audit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23816
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

    .line 23819
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23821
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 23733
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v0, :cond_0

    .line 23734
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1

    .line 23736
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 2

    .line 23742
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 23743
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18600(Lcom/explorestack/protobuf/adcom/Ad$Audit;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 23744
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setStatusValue(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23746
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23747
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23748
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23749
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_0

    .line 23751
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 23752
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18700(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 23754
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 23756
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 23757
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18800(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 23758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 23760
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23761
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$18900(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 23762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    .line 23764
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasCorr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23765
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getCorr()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23767
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23768
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23770
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 23771
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 23772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23773
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23774
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    goto :goto_1

    .line 23776
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 23777
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23779
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_2

    .line 23782
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 23783
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23784
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 23785
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 23786
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    .line 23787
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->bitField0_:I

    .line 23789
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19300()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23790
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 23792
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19200(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 23796
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19400(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    .line 23797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24843
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24737
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24738
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24739
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24742
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCorr(Lcom/explorestack/protobuf/adcom/Ad$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24268
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24269
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24272
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCorr(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corrBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24248
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24250
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->corr_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 24251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24253
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24427
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24430
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24405
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24409
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24410
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24412
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24608
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24609
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24612
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 24586
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24588
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24590
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureExtProtoIsMutable()V

    .line 24591
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    goto :goto_0

    .line 24594
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setFeedback(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 23955
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23957
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->ensureFeedbackIsMutable()V

    .line 23958
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->feedback_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23707
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final setInit(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24080
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24083
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setInitBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24112
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19700(Lcom/explorestack/protobuf/ByteString;)V

    .line 24114
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->init_:Ljava/lang/Object;

    .line 24115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLastmod(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24172
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLastmodBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24199
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24201
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->access$19800(Lcom/explorestack/protobuf/ByteString;)V

    .line 24203
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->lastmod_:Ljava/lang/Object;

    .line 24204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23723
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method

.method public final setStatus(Lcom/explorestack/protobuf/adcom/AuditStatusCode;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23870
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23873
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23874
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStatusValue(I)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 23845
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->status_:I

    .line 23846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 23579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 0

    .line 24837
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object p1
.end method
