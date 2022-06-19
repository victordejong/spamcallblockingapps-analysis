.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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

.field private img_:Ljava/lang/Object;

.field private link_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3786
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 3978
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4067
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3787
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3792
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 3978
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4067
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3793
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 3768
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 3768
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 4312
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 4313
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 4314
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3774
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 4298
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4299
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 4302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4304
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4306
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 4609
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4610
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4614
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4616
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 4618
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3797
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3798
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;"
        }
    .end annotation

    .line 4488
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4489
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4490
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4494
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4470
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4471
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4472
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4473
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4475
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4431
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4433
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4435
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4436
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4439
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4452
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4453
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4454
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4457
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4410
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4412
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4414
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4415
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4418
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 4580
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4581
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 4580
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 4592
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4593
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 4592
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 3897
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 2

    .line 3836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    .line 3837
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3838
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 2

    .line 3845
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 3847
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2202(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3848
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2302(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3849
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 3850
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2402(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 3852
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2402(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 3854
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3855
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3856
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3857
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    .line 3859
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2502(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 3861
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2502(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/util/List;)Ljava/util/List;

    .line 3863
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2

    .line 3803
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 3804
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 3806
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 3808
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3809
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 3811
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3812
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3814
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3815
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3816
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    goto :goto_1

    .line 3818
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2

    .line 4251
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4252
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4255
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4256
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 4508
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    .line 4509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4511
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 3880
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final clearImg()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4044
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4133
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 3885
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 3869
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 3831
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3826
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 4177
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4178
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4180
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 4270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    .line 4271
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 4281
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4282
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 4284
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 4285
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 4357
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4358
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 4360
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 4541
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 4604
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 4343
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4346
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

    .line 4329
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4332
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 4552
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4553
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 4554
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

    .line 4566
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4567
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4569
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getImg()Ljava/lang/String;
    .locals 2

    .line 3987
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 3988
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3989
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3991
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3992
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    return-object v0

    .line 3995
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getImgBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4007
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4008
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4009
    check-cast v0, Ljava/lang/String;

    .line 4010
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4012
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    return-object v0

    .line 4015
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 2

    .line 4076
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4077
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4078
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4080
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4081
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    return-object v0

    .line 4084
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4096
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4097
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4098
    check-cast v0, Ljava/lang/String;

    .line 4099
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4101
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    return-object v0

    .line 4104
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 4167
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 3780
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3781
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4229
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4230
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 4232
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 4234
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4236
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_1

    .line 4238
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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3965
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3971
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3967
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3968
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

    .line 3971
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3973
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 3901
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v0, :cond_0

    .line 3902
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1

    .line 3904
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2

    .line 3910
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3911
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3912
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2200(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 3913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    .line 3915
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3916
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2300(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 3917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    .line 3919
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3920
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3922
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 3923
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3924
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3925
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3926
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    goto :goto_0

    .line 3928
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 3929
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3931
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_1

    .line 3934
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3935
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3936
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 3937
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3938
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    .line 3939
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->bitField0_:I

    .line 3941
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2600()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3942
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 3944
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 3948
    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2700(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4629
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4523
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4524
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4525
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4212
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4213
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4216
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4191
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4198
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4393
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4394
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4395
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4398
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4374
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4376
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->ensureExtProtoIsMutable()V

    .line 4377
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    goto :goto_0

    .line 4380
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 3875
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final setImg(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4028
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4031
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImgBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4058
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4060
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 4062
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->img_:Ljava/lang/Object;

    .line 4063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLink(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLinkBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 4151
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->link_:Ljava/lang/Object;

    .line 4152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 3891
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 0

    .line 4623
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object p1
.end method
