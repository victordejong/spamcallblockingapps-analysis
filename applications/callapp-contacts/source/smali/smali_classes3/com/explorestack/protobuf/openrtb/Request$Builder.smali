.class public final Lcom/explorestack/protobuf/openrtb/Request$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

.field private bitField0_:I

.field private cdata_:Ljava/lang/Object;

.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lcom/explorestack/protobuf/Any;

.field private cur_:Lcom/explorestack/protobuf/LazyStringList;

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

.field private itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private item_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end field

.field private package_:I

.field private seat_:Lcom/explorestack/protobuf/LazyStringList;

.field private sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

.field private test_:Z

.field private tmax_:I

.field private wseat_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 10711
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 11037
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11255
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11403
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11577
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10712
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 10717
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 11037
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11255
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11403
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11577
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10718
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 10693
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 10693
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>()V

    return-void
.end method

.method private ensureCurIsMutable()V
    .locals 2

    .line 11257
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 11258
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11259
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 12585
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 12586
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 12587
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureItemIsMutable()V
    .locals 2

    .line 11836
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 11837
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 11838
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSeatIsMutable()V
    .locals 2

    .line 11405
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 11406
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11407
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12418
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12419
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 12422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12424
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12426
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10699
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 12571
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12572
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 12575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 12576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 12577
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12579
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 12882
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12883
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12887
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 12888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 12889
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 12891
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12169
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12170
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12174
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 12175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 12176
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12178
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11822
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11823
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v1

    .line 11826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11828
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11830
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 10722
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$8500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10723
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 10724
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllCur(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 11361
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11362
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 12761
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12762
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12763
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 12765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12767
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllItem(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 12032
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12033
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12034
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 12036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12038
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllSeat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;"
        }
    .end annotation

    .line 11495
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11496
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11343
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11345
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11346
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11396
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10600(Lcom/explorestack/protobuf/ByteString;)V

    .line 11397
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11398
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 11399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12743
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12744
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12745
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12748
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12704
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12706
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12708
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12709
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12712
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12725
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12726
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12727
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12730
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12683
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12685
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12687
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12688
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12689
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12691
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 12853
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12854
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 12853
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 12865
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12866
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 12865
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addItem(ILcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12012
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12013
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12014
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12017
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addItem(ILcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11969
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11971
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11973
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11974
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11977
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addItem(Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11992
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11993
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11994
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11997
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11946
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11948
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11950
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11951
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11954
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addItemBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 12136
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12137
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 12136
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public final addItemBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 12150
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 12151
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 12150
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 10889
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final addSeat(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11481
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11482
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final addSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11524
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11526
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10700(Lcom/explorestack/protobuf/ByteString;)V

    .line 11527
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11528
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 11529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 2

    .line 10794
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    .line 10795
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10796
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 2

    .line 10803
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 10805
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8702(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10806
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8802(Lcom/explorestack/protobuf/openrtb/Request;Z)Z

    .line 10807
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8902(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 10808
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9002(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 10809
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10810
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10811
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10813
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9102(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 10814
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10815
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10816
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10818
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9202(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 10819
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9302(Lcom/explorestack/protobuf/openrtb/Request;Z)Z

    .line 10820
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9402(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10821
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 10822
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9502(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 10824
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9502(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 10826
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 10827
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 10828
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 10829
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10831
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9602(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10833
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9602(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    .line 10835
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9702(Lcom/explorestack/protobuf/openrtb/Request;I)I

    .line 10836
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 10837
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9802(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 10839
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9802(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;

    .line 10841
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 10842
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9902(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 10844
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9902(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 10846
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    .line 10847
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 10848
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10849
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10851
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10002(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 10853
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10002(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;

    .line 10855
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 3

    .line 10729
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 10730
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10732
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 10734
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 10736
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 10738
    sget-object v2, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10739
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10740
    sget-object v2, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10741
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10742
    iput-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 10744
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 10746
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 10747
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 10749
    :cond_0
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 10750
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10752
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 10753
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 10754
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_1

    .line 10756
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 10758
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 10760
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 10761
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    goto :goto_2

    .line 10763
    :cond_2
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 10764
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10766
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 10767
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 10769
    :cond_3
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 10770
    iput-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10772
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 10773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10774
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_4

    .line 10776
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public final clearAt()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11250
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 11251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCdata()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11647
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearContext()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 12353
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12354
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12357
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12358
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearCur()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11377
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11378
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 12524
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12525
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12528
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12529
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12779
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 12781
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 12782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12784
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 10872
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11103
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItem()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12052
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12053
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 12054
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 12055
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12057
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 10877
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final clearPackage()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 12217
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 12218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSeat()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11509
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11510
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSource()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 11772
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11773
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11774
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11776
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11777
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearTest()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11165
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 11166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTmax()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11206
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 11207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWseat()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 11572
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 11573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 10861
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAt()I
    .locals 1

    .line 11222
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    return v0
.end method

.method public final getCdata()Ljava/lang/String;
    .locals 2

    .line 11587
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11588
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11589
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11591
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11592
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 11595
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11608
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11609
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11610
    check-cast v0, Ljava/lang/String;

    .line 11611
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11613
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 11616
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContext()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 12255
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12256
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12258
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public final getContextBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 12378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 12379
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final getContextOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 12395
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12396
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object v0

    .line 12398
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_1

    .line 12399
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getCur(I)Ljava/lang/String;
    .locals 1

    .line 11297
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCurBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11310
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCurCount()I
    .locals 1

    .line 11285
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCurList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11273
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCurList()Ljava/util/List;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1

    .line 10789
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10784
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 12450
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12451
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 12453
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 12543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 12544
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 12554
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 12557
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 12558
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 12630
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12631
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 12633
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 12814
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 12877
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 12616
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12617
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 12619
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

    .line 12602
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12603
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12605
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 12825
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12826
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 12827
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

    .line 12839
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12840
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12842
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 11046
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11047
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11048
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11050
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11051
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 11054
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11066
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11068
    check-cast v0, Ljava/lang/String;

    .line 11069
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11071
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 11074
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getItem(I)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 11887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11888
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1

    .line 11890
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1
.end method

.method public final getItemBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 12091
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object p1
.end method

.method public final getItemBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            ">;"
        }
    .end annotation

    .line 12164
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 11871
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11872
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 11874
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 11855
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11856
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11858
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getItemOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .locals 1

    .line 12104
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12105
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object p1

    .line 12106
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object p1
.end method

.method public final getItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12120
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 12121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12123
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage()I
    .locals 1

    .line 12191
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    return v0
.end method

.method public final getSeat(I)Ljava/lang/String;
    .locals 1

    .line 11439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getSeatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 11450
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getSeatCount()I
    .locals 1

    .line 11429
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 11419
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getSeatList()Ljava/util/List;
    .locals 1

    .line 10693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 11694
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11695
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    :cond_0
    return-object v0

    .line 11697
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public final getSourceBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 11792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 11793
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getSourceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object v0
.end method

.method public final getSourceOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
    .locals 1

    .line 11804
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 11805
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;

    return-object v0

    .line 11807
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v0, :cond_1

    .line 11808
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getTest()Z
    .locals 1

    .line 11137
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    return v0
.end method

.method public final getTmax()I
    .locals 1

    .line 11180
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    return v0
.end method

.method public final getWseat()Z
    .locals 1

    .line 11544
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    return v0
.end method

.method public final hasContext()Z
    .locals 1

    .line 12239
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

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

    .line 12440
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasSource()Z
    .locals 1

    .line 11683
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

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

    .line 10705
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10706
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12325
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12326
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    .line 12328
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 12330
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12332
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 12334
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12502
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12503
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 12505
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 12507
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12509
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 12511
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

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

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

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11024
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11030
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11026
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11027
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

    .line 11030
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11032
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 10893
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request;

    if-eqz v0, :cond_0

    .line 10894
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1

    .line 10896
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 3

    .line 10902
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10903
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10904
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$8700(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 10905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 10907
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10908
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10910
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10911
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10913
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 10914
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10916
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10917
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10918
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10919
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_0

    .line 10921
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 10922
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 10924
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 10926
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10927
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10928
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 10929
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_1

    .line 10931
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 10932
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 10934
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 10936
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10937
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setWseat(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10939
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 10940
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9400(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 10941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    .line 10943
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10944
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10946
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 10947
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 10948
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10949
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 10950
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_2

    .line 10952
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 10953
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10955
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_4

    .line 10958
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 10959
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10960
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 10961
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 10962
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    .line 10963
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 10965
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10100()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10966
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_3

    :cond_e
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 10968
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 10972
    :cond_10
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v0

    if-eqz v0, :cond_11

    .line 10973
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setPackage(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10975
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10976
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10978
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10979
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 10981
    :cond_13
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_15

    .line 10982
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 10983
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10984
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10985
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    goto :goto_5

    .line 10987
    :cond_14
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 10988
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10990
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_6

    .line 10993
    :cond_15
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 10994
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 10995
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 10996
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 10997
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    .line 10998
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->bitField0_:I

    .line 11000
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->access$10200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 11001
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_16
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 11003
    :cond_17
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 11007
    :cond_18
    :goto_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10300(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 11008
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11749
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11750
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v0, :cond_0

    .line 11752
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto :goto_0

    .line 11754
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11756
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_1

    .line 11758
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12902
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12796
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12797
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12798
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12801
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeItem(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12071
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12072
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 12073
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12076
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11235
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->at_:I

    .line 11236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCdata(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11633
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCdataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11662
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11664
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10800(Lcom/explorestack/protobuf/ByteString;)V

    .line 11666
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cdata_:Ljava/lang/Object;

    .line 11667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setContext(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12302
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12303
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12306
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12275
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12279
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->context_:Lcom/explorestack/protobuf/Any;

    .line 12280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12282
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCur(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11324
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11326
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureCurIsMutable()V

    .line 11327
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11328
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12485
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12486
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12489
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12464
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12466
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12468
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 12469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12471
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12666
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12667
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12668
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12671
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 12645
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 12647
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12649
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureExtProtoIsMutable()V

    .line 12650
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 12653
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 10867
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11087
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11090
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11119
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request;->access$10500(Lcom/explorestack/protobuf/ByteString;)V

    .line 11121
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->id_:Ljava/lang/Object;

    .line 11122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItem(ILcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11927
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11928
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11929
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11932
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setItem(ILcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11904
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->itemBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11906
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11908
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureItemIsMutable()V

    .line 11909
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->item_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11912
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setPackage(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12203
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->package_:I

    .line 12204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 10883
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final setSeat(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11462
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11464
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->ensureSeatIsMutable()V

    .line 11465
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11466
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSource(Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11731
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11732
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11735
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSource(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 11709
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->sourceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11711
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11713
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 11714
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    goto :goto_0

    .line 11716
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11150
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->test_:Z

    .line 11151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->tmax_:I

    .line 11193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 10693
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 12896
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object p1
.end method

.method public final setWseat(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 0

    .line 11557
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Builder;->wseat_:Z

    .line 11558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->onChanged()V

    return-object p0
.end method
