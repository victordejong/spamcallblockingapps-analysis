.class public final Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;"
    }
.end annotation


# instance fields
.field private accur_:I

.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

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

.field private ipserv_:I

.field private lastfix_:J

.field private lat_:F

.field private lon_:F

.field private metro_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private type_:I

.field private utcoffset_:I

.field private zip_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18499
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 18754
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 18971
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    const-string v0, ""

    .line 19036
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19125
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19214
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19303
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19392
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18500
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 18505
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 18754
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 18971
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    const-string p1, ""

    .line 19036
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19125
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19214
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19303
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19392
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18506
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 18481
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 18481
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 19675
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 19676
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19677
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18487
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 19661
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19662
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 19665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 19667
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19669
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 19972
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19973
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 19977
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 19979
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19981
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 18510
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$15900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18511
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;"
        }
    .end annotation

    .line 19851
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19852
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19853
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 19855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19857
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19833
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19834
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19835
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19838
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19794
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19796
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19798
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19799
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19802
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19815
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19816
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19820
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19773
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19775
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19777
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19778
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19779
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19781
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 19943
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 19944
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 19943
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 19955
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 19956
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 19955
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18640
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 2

    .line 18569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    .line 18570
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18571
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 3

    .line 18578
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 18580
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16102(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 18581
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16202(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F

    .line 18582
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16302(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F

    .line 18583
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16402(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 18584
    iget-wide v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16502(Lcom/explorestack/protobuf/adcom/Context$Geo;J)J

    .line 18585
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16602(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 18586
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16702(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18587
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16802(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18588
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16902(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18589
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17002(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18590
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17102(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18591
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17202(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I

    .line 18592
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 18593
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17302(Lcom/explorestack/protobuf/adcom/Context$Geo;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 18595
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17302(Lcom/explorestack/protobuf/adcom/Context$Geo;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 18597
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 18598
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 18599
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18600
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 18602
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17402(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 18604
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17402(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/util/List;)Ljava/util/List;

    .line 18606
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 3

    .line 18516
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 18517
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    const/4 v1, 0x0

    .line 18519
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 18521
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 18523
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    const-wide/16 v1, 0x0

    .line 18525
    iput-wide v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 18527
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    const-string v1, ""

    .line 18529
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 18531
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 18533
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 18535
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 18537
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 18539
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 18541
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 18542
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 18544
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 18545
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18547
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18549
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    goto :goto_1

    .line 18551
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearAccur()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18928
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    .line 18929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCity()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19369
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCountry()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19102
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    .line 19614
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19615
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19618
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19619
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19869
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 19871
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 19872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19874
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18623
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final clearIpserv()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19031
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLastfix()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 18966
    iput-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 18967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLat()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18852
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 18853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLon()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18890
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 18891
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMetro()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19280
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18628
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final clearRegion()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19191
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18814
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 18815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUtcoffset()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19514
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 19515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearZip()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19458
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 18612
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAccur()I
    .locals 1

    .line 18904
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 2

    .line 19312
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19313
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19314
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19316
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19317
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    return-object v0

    .line 19320
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCityBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19332
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19333
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19334
    check-cast v0, Ljava/lang/String;

    .line 19335
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19337
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    return-object v0

    .line 19340
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 2

    .line 19045
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19046
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19047
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19049
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19050
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    return-object v0

    .line 19053
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19065
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19066
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19067
    check-cast v0, Ljava/lang/String;

    .line 19068
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19070
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    return-object v0

    .line 19073
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 18564
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18559
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 19540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19541
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 19543
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 19633
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 19634
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 19644
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19645
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 19647
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 19648
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 19720
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19721
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 19723
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 19904
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 19967
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 19706
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19707
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 19709
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

    .line 19692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19693
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19695
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 19915
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19916
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 19917
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

    .line 19929
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19930
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19932
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getIpserv()Lcom/explorestack/protobuf/adcom/IpLocationService;
    .locals 1

    .line 19003
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/IpLocationService;->valueOf(I)Lcom/explorestack/protobuf/adcom/IpLocationService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19004
    sget-object v0, Lcom/explorestack/protobuf/adcom/IpLocationService;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/IpLocationService;

    :cond_0
    return-object v0
.end method

.method public final getIpservValue()I
    .locals 1

    .line 18980
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    return v0
.end method

.method public final getLastfix()J
    .locals 2

    .line 18942
    iget-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    return-wide v0
.end method

.method public final getLat()F
    .locals 1

    .line 18828
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    return v0
.end method

.method public final getLon()F
    .locals 1

    .line 18866
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    return v0
.end method

.method public final getMetro()Ljava/lang/String;
    .locals 2

    .line 19223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19224
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19225
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19227
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19228
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    return-object v0

    .line 19231
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMetroBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19243
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19244
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19245
    check-cast v0, Ljava/lang/String;

    .line 19246
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19248
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    return-object v0

    .line 19251
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 2

    .line 19134
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19135
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19136
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19138
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19139
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    return-object v0

    .line 19142
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19154
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19155
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19156
    check-cast v0, Ljava/lang/String;

    .line 19157
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19159
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    return-object v0

    .line 19162
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/LocationType;
    .locals 1

    .line 18786
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LocationType;->valueOf(I)Lcom/explorestack/protobuf/adcom/LocationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18787
    sget-object v0, Lcom/explorestack/protobuf/adcom/LocationType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LocationType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 18763
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    return v0
.end method

.method public final getUtcoffset()I
    .locals 1

    .line 19490
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    return v0
.end method

.method public final getZip()Ljava/lang/String;
    .locals 2

    .line 19401
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19402
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19403
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19405
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19406
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    return-object v0

    .line 19409
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getZipBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19421
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19423
    check-cast v0, Ljava/lang/String;

    .line 19424
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19426
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    return-object v0

    .line 19429
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 19530
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 18493
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18494
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19592
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19593
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 19595
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 19597
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19599
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_1

    .line 19601
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

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

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

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18741
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18747
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18743
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Geo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18744
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

    .line 18747
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18749
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 18644
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    .line 18645
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1

    .line 18647
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 5

    .line 18653
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18654
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16100(Lcom/explorestack/protobuf/adcom/Context$Geo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 18655
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18657
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 18658
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18660
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 18661
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18663
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v0

    if-eqz v0, :cond_4

    .line 18664
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18666
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 18667
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18669
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16600(Lcom/explorestack/protobuf/adcom/Context$Geo;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 18670
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getIpservValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setIpservValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18672
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18673
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16700(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 18674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 18676
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 18677
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16800(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 18678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 18680
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18681
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$16900(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 18682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 18684
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 18685
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17000(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 18686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 18688
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18689
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17100(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 18690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    .line 18692
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v0

    if-eqz v0, :cond_c

    .line 18693
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18695
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18696
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18698
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 18699
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 18700
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18701
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18702
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    goto :goto_0

    .line 18704
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 18705
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18707
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_1

    .line 18710
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 18711
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18712
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 18713
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18714
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    .line 18715
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->bitField0_:I

    .line 18717
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17500()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 18718
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 18720
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18724
    :cond_12
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17600(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 18725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19992
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19886
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19887
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19888
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19889
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19891
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18915
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->accur_:I

    .line 18916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19356
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCityBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19385
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18100(Lcom/explorestack/protobuf/ByteString;)V

    .line 19387
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->city_:Ljava/lang/Object;

    .line 19388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19086
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19089
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCountryBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19118
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17800(Lcom/explorestack/protobuf/ByteString;)V

    .line 19120
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->country_:Ljava/lang/Object;

    .line 19121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19575
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19576
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19579
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19554
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19556
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19558
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19559
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19561
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19756
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19757
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19758
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19761
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 19735
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19737
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19739
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ensureExtProtoIsMutable()V

    .line 19740
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    goto :goto_0

    .line 19743
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18618
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final setIpserv(Lcom/explorestack/protobuf/adcom/IpLocationService;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19015
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19018
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/IpLocationService;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 19019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIpservValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18990
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->ipserv_:I

    .line 18991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18953
    iput-wide p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lastfix_:J

    .line 18954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18839
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lat_:F

    .line 18840
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18877
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->lon_:F

    .line 18878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMetro(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19264
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19267
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMetroBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19296
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18000(Lcom/explorestack/protobuf/ByteString;)V

    .line 19298
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->metro_:Ljava/lang/Object;

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRegion(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19175
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19178
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRegionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19205
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19207
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$17900(Lcom/explorestack/protobuf/ByteString;)V

    .line 19209
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->region_:Ljava/lang/Object;

    .line 19210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18634
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final setType(Lcom/explorestack/protobuf/adcom/LocationType;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18798
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18801
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/LocationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 18802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 18773
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->type_:I

    .line 18774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19986
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object p1
.end method

.method public final setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19501
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->utcoffset_:I

    .line 19502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19442
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19445
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setZipBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 0

    .line 19472
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19474
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->access$18200(Lcom/explorestack/protobuf/ByteString;)V

    .line 19476
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->zip_:Ljava/lang/Object;

    .line 19477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->onChanged()V

    return-object p0
.end method
