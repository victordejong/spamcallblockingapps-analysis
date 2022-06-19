.class public final Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;"
    }
.end annotation


# instance fields
.field private adm_:Ljava/lang/Object;

.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private curl_:Ljava/lang/Object;

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

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21314
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 21557
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    const-string v0, ""

    .line 22019
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22108
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21315
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 21320
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 21557
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    const-string p1, ""

    .line 22019
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22108
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21321
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 21296
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 21296
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>()V

    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 21690
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 21691
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21692
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 22353
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 22354
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 22355
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMimeIsMutable()V
    .locals 2

    .line 21559
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 21560
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21561
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTypeIsMutable()V
    .locals 2

    .line 21856
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 21857
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21858
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 21302
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 22339
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22340
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 22342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 22343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 22344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 22345
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22347
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 22650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22651
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 22655
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 22656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 22657
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 22659
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 21325
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21326
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllApi(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 21768
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21769
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 21770
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21772
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllApiValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 21845
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21846
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 21847
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21849
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 22529
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22530
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22531
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 22533
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22535
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 21649
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureMimeIsMutable()V

    .line 21650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllType(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 21934
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21935
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 21936
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21938
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllTypeValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;"
        }
    .end annotation

    .line 22011
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 22012
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22013
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22015
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21752
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21754
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21755
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApiValue(I)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21831
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21832
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22512
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22513
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22516
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22472
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22474
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22476
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22477
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22480
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22493
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22494
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22495
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22498
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22451
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22453
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22455
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22456
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22457
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22459
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 22621
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 22622
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 22621
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 22633
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 22634
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 22633
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addMime(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21633
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21635
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureMimeIsMutable()V

    .line 21636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 21637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addMimeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21678
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21680
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17600(Lcom/explorestack/protobuf/ByteString;)V

    .line 21681
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureMimeIsMutable()V

    .line 21682
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 21683
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 21446
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final addType(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21918
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21920
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21921
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21922
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final addTypeValue(I)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21997
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21998
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21999
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 2

    .line 21370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    .line 21371
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 21372
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 2

    .line 21379
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 21381
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 21382
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21383
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21385
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16602(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 21386
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 21387
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21388
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21390
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16702(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;

    .line 21391
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 21392
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21393
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21395
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16802(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;

    .line 21396
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16902(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21397
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17002(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21398
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 21399
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17102(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 21401
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17102(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 21403
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    .line 21404
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 21405
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21406
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21408
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17202(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 21410
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17202(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;

    .line 21412
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 21331
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 21332
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21333
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21335
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21337
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    const-string v0, ""

    .line 21338
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 21340
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 21342
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 21343
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 21345
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 21346
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 21348
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 21349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21350
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    goto :goto_1

    .line 21352
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearAdm()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22085
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22086
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearApi()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21784
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCurl()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22174
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 22292
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22293
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22296
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22297
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22547
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 22549
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 22550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22552
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 21429
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final clearMime()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21663
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21664
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 21434
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final clearType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21949
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21950
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21418
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 2

    .line 22028
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22029
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22030
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22032
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22033
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 22036
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22048
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22049
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22050
    check-cast v0, Ljava/lang/String;

    .line 22051
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22053
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 22056
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 21724
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 21714
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 21703
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21704
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 21807
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21797
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCurl()Ljava/lang/String;
    .locals 2

    .line 22117
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22118
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22119
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22122
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 22125
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22137
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22138
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22139
    check-cast v0, Ljava/lang/String;

    .line 22140
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22142
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 22145
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 21365
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 21360
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 22218
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22219
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 22221
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 22311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 22312
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 22322
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22323
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 22325
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 22326
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 22398
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22399
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 22401
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 22582
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 22645
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 22384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22385
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 22387
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

    .line 22370
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22371
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 22373
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 22593
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22594
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 22595
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

    .line 22607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22608
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 22610
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 21593
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 21604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 21583
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 21573
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 21296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getType(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 21890
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p1
.end method

.method public final getTypeCount()I
    .locals 1

    .line 21880
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 21869
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21870
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getTypeValue(I)I
    .locals 1

    .line 21973
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getTypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21963
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 22208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 21308
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Video_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 21309
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22270
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22271
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 22273
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 22275
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22277
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_1

    .line 22279
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

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21544
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21550
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21546
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Video;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21547
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

    .line 21550
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 21552
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21450
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v0, :cond_0

    .line 21451
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1

    .line 21453
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 21459
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 21460
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16600(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21461
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21462
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16600(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 21463
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    goto :goto_0

    .line 21465
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureMimeIsMutable()V

    .line 21466
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16600(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 21468
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 21470
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16700(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 21471
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21472
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16700(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    .line 21473
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    goto :goto_1

    .line 21475
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21476
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16700(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21478
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 21480
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16800(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 21481
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21482
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16800(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    .line 21483
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    goto :goto_2

    .line 21485
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21486
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16800(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21488
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 21490
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21491
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$16900(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 21492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 21494
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21495
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17000(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 21496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    .line 21498
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21499
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 21501
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 21502
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 21503
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21504
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21505
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    goto :goto_3

    .line 21507
    :cond_a
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 21508
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21510
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_4

    .line 21513
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 21514
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21515
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 21516
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 21517
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    .line 21518
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->bitField0_:I

    .line 21520
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17300()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 21521
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 21523
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 21527
    :cond_e
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17400(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 21528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22670
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22564
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22565
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22566
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22569
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAdm(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22069
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22072
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAdmBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22099
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22101
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$17900(Lcom/explorestack/protobuf/ByteString;)V

    .line 22103
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->adm_:Ljava/lang/Object;

    .line 22104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApi(ILcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21736
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21738
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21739
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApiValue(II)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21818
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureApiIsMutable()V

    .line 21819
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22161
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22188
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22190
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->access$18000(Lcom/explorestack/protobuf/ByteString;)V

    .line 22192
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->curl_:Ljava/lang/Object;

    .line 22193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22253
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22254
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22257
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22232
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22236
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22239
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22434
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22435
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22436
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22439
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 22413
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22415
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22417
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureExtProtoIsMutable()V

    .line 22418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    goto :goto_0

    .line 22421
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 21424
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final setMime(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21616
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21618
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureMimeIsMutable()V

    .line 21619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 21440
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method

.method public final setType(ILcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21902
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21904
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21905
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeValue(II)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21984
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->ensureTypeIsMutable()V

    .line 21985
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21296
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 0

    .line 22664
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object p1
.end method
