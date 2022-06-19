.class public final Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Restrictions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;"
    }
.end annotation


# instance fields
.field private badv_:Lcom/explorestack/protobuf/LazyStringList;

.field private bapp_:Lcom/explorestack/protobuf/LazyStringList;

.field private battr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private bitField0_:I

.field private cattax_:I

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27189
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 27441
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 27571
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27636
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27766
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27190
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 27195
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 27441
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 27571
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27636
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27766
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27196
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 27171
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 27171
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;-><init>()V

    return-void
.end method

.method private ensureBadvIsMutable()V
    .locals 2

    .line 27638
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 27639
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27640
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBappIsMutable()V
    .locals 2

    .line 27768
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 27769
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27770
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 27917
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 27918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 27919
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBcatIsMutable()V
    .locals 2

    .line 27443
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 27444
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27445
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 28236
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 28237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28238
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27177
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 28222
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28223
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 28225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 28226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 28227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 28228
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28230
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 28533
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28534
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28538
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 28539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 28540
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28542
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 27200
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27201
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllBadv(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 27728
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 27729
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBapp(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 27872
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 27873
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBattr(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 27995
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 27996
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 27997
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27999
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBattrValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 28072
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 28073
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

    .line 28074
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28076
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBcat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 27533
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 27534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;"
        }
    .end annotation

    .line 28412
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28413
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28414
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 28416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28418
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBadv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27714
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 27715
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBadvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27757
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27759
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26000(Lcom/explorestack/protobuf/ByteString;)V

    .line 27760
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 27761
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBapp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27854
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27856
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 27857
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBappBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27905
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27907
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26100(Lcom/explorestack/protobuf/ByteString;)V

    .line 27908
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 27909
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBattr(Lcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27979
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27981
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 27982
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBattrValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28058
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 28059
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBcat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27517
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27519
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 27520
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27521
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBcatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27562
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27564
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25900(Lcom/explorestack/protobuf/ByteString;)V

    .line 27565
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 27566
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 27567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28394
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28395
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28396
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28399
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28355
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28357
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28359
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28360
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28363
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28376
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28377
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28378
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28381
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28334
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28336
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28338
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28339
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28342
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28504
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28505
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28504
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28516
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28517
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28516
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27325
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 2

    .line 27245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    .line 27246
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27247
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 2

    .line 27254
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 27256
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 27257
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27258
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27260
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24902(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27261
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25002(Lcom/explorestack/protobuf/adcom/Context$Restrictions;I)I

    .line 27262
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 27263
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27264
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27266
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25102(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27267
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 27268
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27269
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27271
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25202(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 27272
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 27273
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 27274
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27276
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25302(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    .line 27277
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 27278
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25402(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 27280
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25402(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 27282
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 27283
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 27284
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27285
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27287
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25502(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 27289
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25502(Lcom/explorestack/protobuf/adcom/Context$Restrictions;Ljava/util/List;)Ljava/util/List;

    .line 27291
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 27206
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 27207
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27208
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 27209
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27211
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27212
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27213
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27214
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 27216
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27217
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27218
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 27220
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27221
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27223
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27225
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_1

    .line 27227
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearBadv()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27742
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27743
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27744
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBapp()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27888
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27889
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBattr()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28010
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 28011
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBcat()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27547
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27548
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCattax()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27631
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 28175
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28176
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28179
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28180
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28430
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 28432
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 28433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28435
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27308
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27313
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27297
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBadv(I)Ljava/lang/String;
    .locals 1

    .line 27672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27683
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBadvCount()I
    .locals 1

    .line 27662
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27652
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBapp(I)Ljava/lang/String;
    .locals 1

    .line 27808
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27821
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBappCount()I
    .locals 1

    .line 27796
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBappList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27784
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 27951
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p1
.end method

.method public final getBattrCount()I
    .locals 1

    .line 27941
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 27930
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 27931
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$26200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getBattrValue(I)I
    .locals 1

    .line 28034
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getBattrValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28024
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBcat(I)Ljava/lang/String;
    .locals 1

    .line 27477
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 27488
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBcatCount()I
    .locals 1

    .line 27467
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 27457
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 27603
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27604
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 27580
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    .locals 1

    .line 27240
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27235
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 28101
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28102
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 28104
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 28194
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 28195
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 28205
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28206
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 28208
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 28209
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 28281
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28282
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 28284
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 28465
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 28528
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 28267
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28268
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 28270
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

    .line 28253
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28254
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28256
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 28476
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28477
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 28478
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

    .line 28490
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28491
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28493
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 28091
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 27183
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Restrictions_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 27184
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28153
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28154
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 28156
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 28158
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28160
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_1

    .line 28162
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

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

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

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27428
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27434
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27430
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Restrictions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27431
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

    .line 27434
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 27436
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27329
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    if-eqz v0, :cond_0

    .line 27330
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1

    .line 27332
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 2

    .line 27338
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Restrictions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27339
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27340
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27341
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27342
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_0

    .line 27344
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 27345
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$24900(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27347
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 27349
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25000(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 27350
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 27352
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27353
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27354
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27355
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_1

    .line 27357
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 27358
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25100(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27360
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 27362
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27363
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27364
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 27365
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_2

    .line 27367
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 27368
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25200(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 27370
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 27372
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 27373
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27374
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    .line 27375
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_3

    .line 27377
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 27378
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25300(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27380
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    .line 27382
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 27385
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    .line 27386
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 27387
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27388
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27389
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    goto :goto_4

    .line 27391
    :cond_b
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 27392
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27394
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_5

    .line 27397
    :cond_c
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 27398
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27399
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 27400
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27401
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    .line 27402
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bitField0_:I

    .line 27404
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25600()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27405
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_d
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 27407
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25500(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 27411
    :cond_f
    :goto_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->access$25700(Lcom/explorestack/protobuf/adcom/Context$Restrictions;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 27412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28553
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28447
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28448
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28452
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setBadv(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27695
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27697
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBadvIsMutable()V

    .line 27698
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBapp(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27835
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27837
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBappIsMutable()V

    .line 27838
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBattr(ILcom/explorestack/protobuf/adcom/CreativeAttribute;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27963
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27965
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 27966
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBattrValue(II)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28045
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBattrIsMutable()V

    .line 28046
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBcat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 27500
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27502
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureBcatIsMutable()V

    .line 27503
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27615
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27618
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27590
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->cattax_:I

    .line 27591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28136
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28137
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28140
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28119
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 28120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28122
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28317
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28318
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28319
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28322
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 1

    .line 28296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28298
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28300
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->ensureExtProtoIsMutable()V

    .line 28301
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->onChanged()V

    goto :goto_0

    .line 28304
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27303
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 27319
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27171
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;
    .locals 0

    .line 28547
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    return-object p1
.end method
