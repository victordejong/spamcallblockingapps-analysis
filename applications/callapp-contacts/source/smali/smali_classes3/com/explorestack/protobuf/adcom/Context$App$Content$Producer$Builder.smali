.class public final Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private domain_:Ljava/lang/Object;

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

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4561
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4783
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4872
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4961
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5050
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 5189
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4562
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4567
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4783
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4872
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4961
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5050
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 5189
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4568
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 4543
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 4543
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>()V

    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 5052
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5053
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5054
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 5410
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5412
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4549
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 5396
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5397
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 5400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5402
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5404
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 5707
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5708
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5712
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 5713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 5714
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5716
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 4572
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4573
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;"
        }
    .end annotation

    .line 5149
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5150
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;"
        }
    .end annotation

    .line 5586
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5587
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5592
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5134
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5135
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 5136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5182
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5183
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5184
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 5185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5568
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5569
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5570
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5573
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5529
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5531
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5533
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5537
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5550
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5551
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5552
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5555
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5508
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5512
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5513
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5516
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5678
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5679
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5678
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 5690
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5691
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 5690
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4685
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 2

    .line 4617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    .line 4618
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4619
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 2

    .line 4626
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 4628
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2302(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4629
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2402(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4630
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2502(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4631
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4632
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4633
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4635
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2602(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 4636
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2702(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;I)I

    .line 4637
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 4638
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4640
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 4642
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 4643
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 4644
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4645
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4647
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 4649
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;

    .line 4651
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4578
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 4579
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4581
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4583
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4585
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4586
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4587
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 4589
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4590
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4592
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4593
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4595
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4597
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_1

    .line 4599
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearCat()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5164
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5165
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 5166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCattax()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5249
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDomain()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5027
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5028
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 5349
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5350
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5353
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5354
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5605
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 5606
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 5607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5609
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4668
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4849
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4938
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4673
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4657
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCat(I)Ljava/lang/String;
    .locals 1

    .line 5089
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 5101
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCatCount()I
    .locals 1

    .line 5078
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 5067
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 5221
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5222
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 5198
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 4612
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4607
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 2

    .line 4970
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4971
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4972
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4974
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4975
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 4978
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4990
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4991
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4992
    check-cast v0, Ljava/lang/String;

    .line 4993
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4995
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 4998
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 5275
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5276
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 5278
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 5368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 5369
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 5379
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5380
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 5382
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 5383
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5455
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5456
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 5458
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 5639
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 5702
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 5441
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5442
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 5444
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

    .line 5427
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5430
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5651
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 5652
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

    .line 5664
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 5665
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5667
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 4792
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4793
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4794
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4796
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4797
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 4800
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4812
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4814
    check-cast v0, Ljava/lang/String;

    .line 4815
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4817
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 4820
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 4881
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4882
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4883
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4885
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4886
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 4889
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4901
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4902
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4903
    check-cast v0, Ljava/lang/String;

    .line 4904
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4906
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 4909
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 5265
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 4555
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4556
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5327
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5328
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 5330
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5332
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5334
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_1

    .line 5336
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

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4770
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4776
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4772
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4773
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

    .line 4776
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4778
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4689
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    if-eqz v0, :cond_0

    .line 4690
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1

    .line 4692
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4698
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4699
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4700
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2300(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4701
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4703
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4704
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2400(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4707
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4708
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2500(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 4709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4711
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4712
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4713
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4714
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_0

    .line 4716
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 4717
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 4719
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    .line 4721
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2700(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 4722
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4724
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4725
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4727
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 4728
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4729
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4730
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4731
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    goto :goto_1

    .line 4733
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 4734
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4736
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_2

    .line 4739
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4740
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4741
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 4742
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4743
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    .line 4744
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->bitField0_:I

    .line 4746
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3000()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4747
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 4749
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 4753
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3100(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5727
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5621
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5622
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5626
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5116
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureCatIsMutable()V

    .line 5117
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5233
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5236
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5208
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->cattax_:I

    .line 5209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5011
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5014
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5041
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5043
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5045
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->domain_:Ljava/lang/Object;

    .line 5046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5310
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5311
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5314
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5289
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5291
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5293
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5296
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5491
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5492
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5493
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5496
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 5470
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 5472
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5474
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->ensureExtProtoIsMutable()V

    .line 5475
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    goto :goto_0

    .line 5478
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4663
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4833
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4836
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4863
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4865
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 4867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->id_:Ljava/lang/Object;

    .line 4868
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4922
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4925
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4952
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4954
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4956
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->name_:Ljava/lang/Object;

    .line 4957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 4679
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4543
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 0

    .line 5721
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    return-object p1
.end method
