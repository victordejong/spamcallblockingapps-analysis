.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

.field private reservedName_:Lcom/explorestack/protobuf/LazyStringList;

.field private reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private reservedRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15870
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 16134
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16916
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 15871
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 15852
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 15876
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 16134
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16916
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 15877
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 15852
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureReservedNameIsMutable()V
    .locals 2

    .line 16918
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 16919
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 16920
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureReservedRangeIsMutable()V
    .locals 2

    .line 16571
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 16572
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16573
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureValueIsMutable()V
    .locals 2

    .line 16213
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 16214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16215
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 15858
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$9500()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16557
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16558
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    .line 16561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 16562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 16563
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16565
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16904
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16905
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 16909
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 16910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 16911
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16913
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16438
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16439
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 16443
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 16444
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 16445
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16447
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 15880
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 15882
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 15883
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 15884
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllReservedName(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    .line 17015
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedNameIsMutable()V

    .line 17016
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 17018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllReservedRange(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    .line 16767
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16768
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16769
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16773
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    .line 16349
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16350
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16351
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16355
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 16010
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addReservedName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16998
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17000
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedNameIsMutable()V

    .line 17001
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 17002
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addReservedNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 17046
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17048
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedNameIsMutable()V

    .line 17049
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 17050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addReservedRange(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16747
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16748
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16749
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16752
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addReservedRange(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16704
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16706
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16708
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16709
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16712
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addReservedRange(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16727
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16728
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16729
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16732
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addReservedRange(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16681
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16685
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16686
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16689
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addReservedRangeBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 2

    .line 16871
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16872
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object v1

    .line 16871
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    return-object v0
.end method

.method public final addReservedRangeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 2

    .line 16885
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16886
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object v1

    .line 16885
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    return-object p1
.end method

.method public final addValue(ILcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16335
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16336
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16337
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16340
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValue(ILcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16304
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16306
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16308
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16309
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16312
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValue(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16321
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16322
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16323
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16326
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValue(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16287
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16289
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16291
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16292
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16293
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16295
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addValueBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 16417
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16418
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    .line 16417
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object v0
.end method

.method public final addValueBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 16425
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16426
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    .line 16425
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .line 15928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 15929
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 15930
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 4

    .line 15937
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 15938
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 15943
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10902(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15944
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_2

    .line 15945
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 15946
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 15947
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15949
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11002(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 15951
    :cond_2
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11002(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 15954
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 15955
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11102(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_2

    .line 15957
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11102(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 15961
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 15962
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 15963
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 15964
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15966
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11202(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 15968
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11202(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 15970
    :goto_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 15971
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 15972
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15974
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11302(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 15975
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11402(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    .line 15976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15889
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 15890
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15891
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15892
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 15894
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 15896
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 15898
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 15899
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_1

    .line 15901
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 15903
    :goto_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15904
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 15906
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_2

    .line 15908
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 15910
    :goto_2
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 15911
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 15993
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16191
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16192
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 15998
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16523
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 16524
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16527
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16529
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearReservedName()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 17030
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 17031
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 17032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearReservedRange()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16787
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16789
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16792
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearValue()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16363
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16365
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16368
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15982
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 15923
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 15918
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$9500()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 16145
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16146
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 16147
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16149
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16150
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16151
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 16155
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 16163
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16164
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16165
    check-cast v0, Ljava/lang/String;

    .line 16166
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 16168
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 16171
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 16463
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16464
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 16466
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 16536
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    .line 16538
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;
    .locals 1

    .line 16544
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16545
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptionsOrBuilder;

    return-object v0

    .line 16547
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_1

    .line 16548
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getReservedName(I)Ljava/lang/String;
    .locals 1

    .line 16955
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getReservedNameBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 16967
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getReservedNameCount()I
    .locals 1

    .line 16944
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 16933
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getReservedNameList()Ljava/util/List;
    .locals 1

    .line 15852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedRange(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    .locals 1

    .line 16622
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16623
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object p1

    .line 16625
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object p1
.end method

.method public final getReservedRangeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 1

    .line 16826
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    return-object p1
.end method

.method public final getReservedRangeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
            ">;"
        }
    .end annotation

    .line 16899
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedRangeCount()I
    .locals 1

    .line 16606
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16607
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16609
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getReservedRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation

    .line 16590
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16591
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16593
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedRangeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;
    .locals 1

    .line 16839
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16840
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;

    return-object p1

    .line 16841
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;

    return-object p1
.end method

.method public final getReservedRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16855
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16856
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16858
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 16246
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16247
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1

    .line 16249
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1
.end method

.method public final getValueBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 16390
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final getValueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 16433
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValueCount()I
    .locals 1

    .line 16236
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16237
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16239
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 16226
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16227
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16229
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValueOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
    .locals 1

    .line 16397
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16398
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1

    .line 16399
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16407
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16408
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16410
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 16139
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 16457
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 15864
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$9600()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 15865
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16101
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 16102
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16106
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
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

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16121
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16127
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16123
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16124
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

    .line 16127
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 16129
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    .line 16023
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 16024
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16025
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16026
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10900(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    .line 16029
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 16030
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16031
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16032
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16033
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 16035
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16036
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16038
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_2

    .line 16041
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16042
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16043
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 16044
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16045
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 16046
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16047
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 16049
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 16051
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11000(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16055
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16056
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 16058
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 16059
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 16060
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16061
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16062
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_3

    .line 16064
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16065
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16067
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_4

    .line 16070
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 16071
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16072
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 16073
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16074
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    .line 16075
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16076
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_a

    .line 16078
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getReservedRangeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 16080
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11200(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16084
    :cond_c
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11300(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 16085
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 16086
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11300(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 16087
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_5

    .line 16089
    :cond_d
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedNameIsMutable()V

    .line 16090
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->access$11300(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 16092
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    .line 16094
    :cond_e
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 16095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16014
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 16015
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 16017
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

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .line 16503
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16504
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 16506
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16507
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16508
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0

    .line 16510
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16512
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 16514
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16516
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 17062
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeReservedRange(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16806
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16807
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16808
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16809
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16811
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16376
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16377
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16378
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16381
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 15988
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16182
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16183
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16204
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 16205
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 16206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16490
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16491
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16494
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16496
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16473
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16475
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16477
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16480
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16482
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 16004
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setReservedName(ILjava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16980
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16982
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedNameIsMutable()V

    .line 16983
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16984
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setReservedRange(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16662
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16663
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16664
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16667
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setReservedRange(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16639
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRangeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16641
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16643
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureReservedRangeIsMutable()V

    .line 16644
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16647
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 17056
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 15852
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(ILcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16274
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16275
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16276
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16279
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setValue(ILcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 16257
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16259
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16261
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 16262
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 16265
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method
