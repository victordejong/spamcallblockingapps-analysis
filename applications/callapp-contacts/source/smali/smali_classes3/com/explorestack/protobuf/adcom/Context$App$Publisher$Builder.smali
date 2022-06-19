.class public final Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;"
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

    .line 1667
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1889
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1978
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2067
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2156
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 2295
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 2514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1668
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1673
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1889
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1978
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2067
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2156
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 2295
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 2514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1674
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 1649
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 1649
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;-><init>()V

    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 2158
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2159
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2160
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 2516
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2517
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 2518
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1655
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Publisher_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 2502
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2503
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 2506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2508
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2510
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 2813
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2814
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2818
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2820
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 2822
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1678
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;"
        }
    .end annotation

    .line 2255
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureCatIsMutable()V

    .line 2256
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2258
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;"
        }
    .end annotation

    .line 2692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2693
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2694
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2698
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureCatIsMutable()V

    .line 2241
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2286
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2289
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureCatIsMutable()V

    .line 2290
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 2291
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2674
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2675
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2676
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2679
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2637
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2640
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2643
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2657
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2658
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2661
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2614
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2616
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2622
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2784
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2785
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2784
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2796
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2797
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2796
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1791
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 2

    .line 1723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    .line 1724
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1725
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 2

    .line 1732
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 1734
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$402(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$502(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$602(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1739
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    .line 1741
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$702(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 1742
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$802(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;I)I

    .line 1743
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1744
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$902(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1746
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$902(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1748
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 1749
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1750
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1751
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    .line 1753
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1002(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1755
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1002(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/util/List;)Ljava/util/List;

    .line 1757
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2

    .line 1684
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1685
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1687
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 1689
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 1691
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1692
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1693
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 1695
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1696
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1698
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1699
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1701
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1703
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    goto :goto_1

    .line 1705
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearCat()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2270
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2271
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    .line 2272
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCattax()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2355
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 2356
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDomain()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2133
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2

    .line 2455
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2456
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2457
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2459
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2460
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 2712
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    .line 2713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2715
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1774
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1955
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2044
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1779
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1763
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCat(I)Ljava/lang/String;
    .locals 1

    .line 2195
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCatCount()I
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 2327
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2328
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 2304
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1

    .line 1718
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1713
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Publisher_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 2

    .line 2076
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2077
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2078
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2080
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2081
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 2084
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2096
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2097
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2098
    check-cast v0, Ljava/lang/String;

    .line 2099
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2101
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    return-object v0

    .line 2104
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2384
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 2474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    .line 2475
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 2485
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2486
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 2489
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 2564
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 2745
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 2808
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 2547
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2550
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

    .line 2533
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2536
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 2756
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 2758
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

    .line 2770
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2773
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1899
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1900
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1902
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1903
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1906
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1918
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1919
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1920
    check-cast v0, Ljava/lang/String;

    .line 1921
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1923
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 1926
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1987
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 1988
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1989
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1991
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1992
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1995
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2007
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2008
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2009
    check-cast v0, Ljava/lang/String;

    .line 2010
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2012
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 2015
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 2371
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 1661
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Publisher_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1662
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2436
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 2438
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2440
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_1

    .line 2442
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

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

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

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

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

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

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

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1876
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1882
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1878
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1879
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

    .line 1882
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1884
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1795
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-eqz v0, :cond_0

    .line 1796
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1

    .line 1798
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2

    .line 1804
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1805
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1806
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$400(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    .line 1809
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1810
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$500(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 1811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    .line 1813
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1814
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$600(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 1815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    .line 1817
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$700(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1818
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1819
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$700(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1820
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    goto :goto_0

    .line 1822
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureCatIsMutable()V

    .line 1823
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$700(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 1825
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    .line 1827
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$800(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1828
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1830
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1831
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1833
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 1834
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1835
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1836
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1837
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    goto :goto_1

    .line 1839
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 1840
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1842
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_2

    .line 1845
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1846
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1847
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1848
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1849
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    .line 1850
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->bitField0_:I

    .line 1852
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1853
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 1855
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1859
    :cond_c
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1200(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2833
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2728
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2729
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2732
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureCatIsMutable()V

    .line 2223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2339
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 2343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2314
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->cattax_:I

    .line 2315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2151
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->domain_:Ljava/lang/Object;

    .line 2152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2416
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2417
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2420
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2395
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2402
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2598
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2599
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2602
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 2576
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2578
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->ensureExtProtoIsMutable()V

    .line 2581
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    goto :goto_0

    .line 2584
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1769
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1943
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1969
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1973
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->id_:Ljava/lang/Object;

    .line 1974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2028
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2058
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2062
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->name_:Ljava/lang/Object;

    .line 2063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 1785
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 0

    .line 2827
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    return-object p1
.end method
