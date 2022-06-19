.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dependency_:Lcom/explorestack/protobuf/LazyStringList;

.field private enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

.field private package_:Ljava/lang/Object;

.field private publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

.field private serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

.field private syntax_:Ljava/lang/Object;

.field private weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2292
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2729
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2829
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2929
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3058
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3153
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 3568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 3808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 4048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 4586
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 2293
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 2274
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 2298
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2729
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2829
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2929
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3058
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3153
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 3568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 3808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 4048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 4586
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 2299
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 2274
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureDependencyIsMutable()V
    .locals 2

    .line 2931
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2932
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2933
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureEnumTypeIsMutable()V
    .locals 2

    .line 3570
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 3571
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 3572
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtensionIsMutable()V
    .locals 2

    .line 4050
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 4051
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 4052
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMessageTypeIsMutable()V
    .locals 2

    .line 3258
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 3259
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 3260
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePublicDependencyIsMutable()V
    .locals 1

    .line 3060
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 3061
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3062
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureServiceIsMutable()V
    .locals 2

    .line 3810
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 3811
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 3812
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWeakDependencyIsMutable()V
    .locals 1

    .line 3155
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 3156
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3157
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2280
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$700()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3795
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3796
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3800
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3802
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 3804
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4275
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4276
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4280
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4282
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 4284
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3555
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3556
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3560
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3562
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 3564
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4394
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4395
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    .line 4398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4400
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4402
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4035
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4036
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4040
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 4042
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 4044
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourceCodeInfoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4575
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4576
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    .line 4579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4581
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 2302
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2304
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2305
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2306
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2307
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2308
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2309
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getSourceCodeInfoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllDependency(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3021
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureDependencyIsMutable()V

    .line 3022
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllEnumType(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3707
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3708
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3712
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllExtension(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 4186
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4187
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4188
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4192
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMessageType(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3434
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3435
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3436
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3438
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3440
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllPublicDependency(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3133
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensurePublicDependencyIsMutable()V

    .line 3134
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllService(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3946
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3947
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3948
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3952
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllWeakDependency(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .line 3234
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureWeakDependencyIsMutable()V

    .line 3235
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addDependency(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3005
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureDependencyIsMutable()V

    .line 3008
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3009
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addDependencyBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3050
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureDependencyIsMutable()V

    .line 3053
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 3054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addEnumType(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3692
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3693
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3694
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3697
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumType(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3661
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3663
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3666
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3669
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumType(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3678
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3679
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3680
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3683
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumType(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3644
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3649
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3652
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumTypeBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .line 3774
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3775
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    .line 3774
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final addEnumTypeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .line 3782
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3783
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    .line 3782
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final addExtension(ILcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4172
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4173
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4174
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4177
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(ILcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4141
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4143
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4146
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4149
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4158
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4159
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4160
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4161
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4163
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtension(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4124
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4129
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4132
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtensionBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 4254
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4255
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    .line 4254
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final addExtensionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 4262
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4263
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    .line 4262
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final addMessageType(ILcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3416
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3417
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3418
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3421
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMessageType(ILcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3377
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3382
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3385
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMessageType(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3398
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3399
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3400
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3403
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMessageType(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3358
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3361
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3364
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMessageTypeBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .line 3526
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3527
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    .line 3526
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    return-object v0
.end method

.method public final addMessageTypeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .line 3538
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3539
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    .line 3538
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    return-object p1
.end method

.method public final addPublicDependency(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3119
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensurePublicDependencyIsMutable()V

    .line 3120
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 3121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 2505
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addService(ILcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3932
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3933
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3934
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3937
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addService(ILcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3901
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3903
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3906
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3909
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addService(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3918
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3919
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3920
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3923
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addService(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3884
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3889
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3892
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addServiceBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .line 4014
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4015
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    .line 4014
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    return-object v0
.end method

.method public final addServiceBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 2

    .line 4022
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 4023
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    .line 4022
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    return-object p1
.end method

.method public final addWeakDependency(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3219
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureWeakDependencyIsMutable()V

    .line 3220
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 3221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 2

    .line 2379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    .line 2380
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2381
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 4

    .line 2388
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 2389
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2394
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 2398
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2400
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2401
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2403
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 2404
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2405
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 2406
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2408
    :cond_3
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 2409
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 2410
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 2411
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2413
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 2414
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_6

    .line 2415
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 2416
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 2417
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2419
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 2421
    :cond_6
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2423
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_8

    .line 2424
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    .line 2425
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 2426
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2428
    :cond_7
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 2430
    :cond_8
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2432
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_a

    .line 2433
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_9

    .line 2434
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 2435
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2437
    :cond_9
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 2439
    :cond_a
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2441
    :goto_3
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_c

    .line 2442
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_b

    .line 2443
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 2444
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2446
    :cond_b
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 2448
    :cond_c
    invoke-virtual {v3}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :goto_4
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_e

    .line 2451
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_d

    .line 2452
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    goto :goto_5

    .line 2454
    :cond_d
    invoke-virtual {v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    :goto_5
    or-int/lit8 v2, v2, 0x4

    :cond_e
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_10

    .line 2459
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_f

    .line 2460
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2202(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    goto :goto_6

    .line 2462
    :cond_f
    invoke-virtual {v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2202(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    :goto_6
    or-int/lit8 v2, v2, 0x8

    :cond_10
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_11

    or-int/lit8 v2, v2, 0x10

    .line 2469
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2302(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2402(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;I)I

    .line 2471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 3

    .line 2314
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 2315
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2316
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2317
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 2318
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2319
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2320
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2321
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2322
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2323
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2324
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2325
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_0

    .line 2326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 2327
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 2329
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 2331
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 2332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 2333
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_1

    .line 2335
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 2337
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 2338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 2339
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_2

    .line 2341
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 2343
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 2344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 2345
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_3

    .line 2347
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 2349
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 2350
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    goto :goto_4

    .line 2352
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2354
    :goto_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2355
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 2356
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    goto :goto_5

    .line 2358
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2360
    :goto_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2361
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    and-int/lit16 v0, v1, -0x801

    .line 2362
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearDependency()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3035
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3036
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3037
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEnumType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 3722
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3725
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearExtension()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4200
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 4202
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4203
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4205
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 2488
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearMessageType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3452
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 3454
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3457
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2806
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2807
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 2493
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4360
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4361
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4364
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4366
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearPackage()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2906
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2907
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2908
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPublicDependency()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3147
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3148
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearService()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3960
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 3962
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3963
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3965
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4520
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4521
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4524
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4526
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearSyntax()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4668
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4669
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 4670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWeakDependency()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3249
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3250
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 3251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2477
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 2374
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDependency(I)Ljava/lang/String;
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getDependencyBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 2976
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getDependencyCount()I
    .locals 1

    .line 2955
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 2945
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDependencyList()Ljava/util/List;
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2369
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$700()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 3603
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3604
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1

    .line 3606
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public final getEnumTypeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 3747
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final getEnumTypeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 3790
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumTypeCount()I
    .locals 1

    .line 3593
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3594
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3596
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 3583
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3584
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3586
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
    .locals 1

    .line 3754
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3755
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;

    return-object p1

    .line 3756
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getEnumTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3764
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 3765
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3767
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4084
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1

    .line 4086
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final getExtensionBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 4227
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final getExtensionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 4270
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount()I
    .locals 1

    .line 4073
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4074
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4076
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 4063
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4064
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4066
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1

    .line 4234
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4235
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object p1

    .line 4236
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4244
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 3303
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3304
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1

    .line 3306
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public final getMessageTypeBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .line 3487
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    return-object p1
.end method

.method public final getMessageTypeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 3550
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageTypeCount()I
    .locals 1

    .line 3289
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3290
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3292
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 3275
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3278
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;
    .locals 1

    .line 3498
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3499
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object p1

    .line 3500
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getMessageTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3512
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 3513
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3515
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 2748
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2749
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2750
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2752
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2753
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2758
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2770
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2771
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2772
    check-cast v0, Ljava/lang/String;

    .line 2773
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2775
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 2778
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 4300
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4301
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4303
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 4373
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 4375
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;
    .locals 1

    .line 4381
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4382
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;

    return-object v0

    .line 4384
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_1

    .line 4385
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 2

    .line 2848
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2849
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2850
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2852
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2853
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2858
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2870
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2871
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2872
    check-cast v0, Ljava/lang/String;

    .line 2873
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2875
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    return-object v0

    .line 2878
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPublicDependency(I)I
    .locals 1

    .line 3095
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getPublicDependencyCount()I
    .locals 1

    .line 3085
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getPublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3074
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3075
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 3843
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p1

    .line 3846
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p1
.end method

.method public final getServiceBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .line 3987
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    return-object p1
.end method

.method public final getServiceBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 4030
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceCount()I
    .locals 1

    .line 3833
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3834
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3836
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 3823
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3824
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3826
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
    .locals 1

    .line 3994
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3995
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;

    return-object p1

    .line 3996
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getServiceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4004
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4005
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4007
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 4432
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4433
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4435
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public final getSourceCodeInfoBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 4540
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4541
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 4542
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getSourceCodeInfoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object v0
.end method

.method public final getSourceCodeInfoOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;
    .locals 1

    .line 4555
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4556
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;

    return-object v0

    .line 4558
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_1

    .line 4559
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSyntax()Ljava/lang/String;
    .locals 2

    .line 4607
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 4608
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4609
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4611
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4612
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4613
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4617
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSyntaxBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4630
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 4631
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4632
    check-cast v0, Ljava/lang/String;

    .line 4633
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4635
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    return-object v0

    .line 4638
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getWeakDependency(I)I
    .locals 1

    .line 3193
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getWeakDependencyCount()I
    .locals 1

    .line 3182
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3170
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3171
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 2738
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

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

    .line 4294
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPackage()Z
    .locals 1

    .line 2838
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSourceCodeInfo()Z
    .locals 1

    .line 4419
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSyntax()Z
    .locals 1

    .line 4596
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2286
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$800()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 2287
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2681
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2682
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2686
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2687
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 2691
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2692
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2696
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 2697
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2701
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
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

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2716
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2722
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2718
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2719
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

    .line 2722
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 2724
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 3

    .line 2518
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2519
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2520
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2521
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2524
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2525
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2526
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2529
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2530
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2531
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2532
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 2534
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureDependencyIsMutable()V

    .line 2535
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 2537
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2539
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2540
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2541
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2542
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_1

    .line 2544
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensurePublicDependencyIsMutable()V

    .line 2545
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 2547
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2549
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2550
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2551
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2552
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_2

    .line 2554
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureWeakDependencyIsMutable()V

    .line 2555
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 2557
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2559
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2560
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2561
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2562
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 2563
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_3

    .line 2565
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 2566
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2568
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_5

    .line 2571
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2572
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2573
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2574
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2575
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    .line 2576
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2577
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    .line 2579
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getMessageTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 2581
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2585
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 2586
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2587
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2588
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 2589
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_6

    .line 2591
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 2592
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2594
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_8

    .line 2597
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2598
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2599
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2600
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2601
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    .line 2602
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2603
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    .line 2605
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getEnumTypeFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_8

    .line 2607
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2611
    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2612
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2613
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2614
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 2615
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_9

    .line 2617
    :cond_13
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 2618
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2620
    :goto_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_b

    .line 2623
    :cond_14
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2624
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2625
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2626
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2627
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    .line 2628
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2629
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_15

    .line 2631
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getServiceFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_a

    :cond_15
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_b

    .line 2633
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2637
    :cond_17
    :goto_b
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_19

    .line 2638
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2639
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2640
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 2641
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    goto :goto_c

    .line 2643
    :cond_18
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 2644
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2646
    :goto_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_d

    .line 2649
    :cond_19
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2650
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2651
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 2652
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2653
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    .line 2654
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2655
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_1a

    .line 2657
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getExtensionFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_1a
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_d

    .line 2659
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 2663
    :cond_1c
    :goto_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2664
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 2666
    :cond_1d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2667
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeSourceCodeInfo(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 2669
    :cond_1e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2670
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2671
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->access$2300(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 2672
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    .line 2674
    :cond_1f
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 2675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2509
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    .line 2510
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 2512
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

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 4340
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4341
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 4343
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4344
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4345
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    goto :goto_0

    .line 4347
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4349
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 4351
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4353
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeSourceCodeInfo(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 4493
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4494
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v0, :cond_0

    .line 4496
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4497
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4498
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    goto :goto_0

    .line 4500
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4502
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 4504
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4506
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 4700
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3733
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3734
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3735
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3738
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4213
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4214
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4215
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4216
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4218
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3469
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3470
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3471
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3474
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeService(I)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3973
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3974
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3975
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3978
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setDependency(ILjava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2988
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureDependencyIsMutable()V

    .line 2991
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEnumType(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3631
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3632
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3633
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3636
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setEnumType(ILcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3614
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3616
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3618
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureEnumTypeIsMutable()V

    .line 3619
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3622
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtension(ILcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4111
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4112
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4113
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4116
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtension(ILcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4094
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extensionBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4096
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4098
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureExtensionIsMutable()V

    .line 4099
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4102
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 2483
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setMessageType(ILcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3339
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3340
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3341
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3344
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMessageType(ILcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3318
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageTypeBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3320
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3322
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureMessageTypeIsMutable()V

    .line 3323
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3326
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2791
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2794
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2821
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2823
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2824
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 2825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4328
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4331
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4333
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4310
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4312
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4314
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 4315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4317
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4319
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setPackage(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2891
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2894
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPackageBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2921
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 2924
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->package_:Ljava/lang/Object;

    .line 2925
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPublicDependency(II)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3106
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensurePublicDependencyIsMutable()V

    .line 3107
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 3108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 2499
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setService(ILcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3871
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3872
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3873
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3874
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3876
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setService(ILcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3854
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->serviceBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3856
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3858
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureServiceIsMutable()V

    .line 3859
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->service_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 3862
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSourceCodeInfo(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4473
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4474
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4477
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4479
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setSourceCodeInfo(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4449
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4451
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4453
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 4454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 4456
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4458
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setSyntax(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4652
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4655
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 4656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntaxBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 4684
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4686
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->bitField0_:I

    .line 4687
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->syntax_:Ljava/lang/Object;

    .line 4688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 0

    .line 4694
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setWeakDependency(II)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 3205
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->ensureWeakDependencyIsMutable()V

    .line 3206
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 3207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method
