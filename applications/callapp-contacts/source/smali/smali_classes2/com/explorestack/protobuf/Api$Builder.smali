.class public final Lcom/explorestack/protobuf/Api$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Api$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/ApiOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Method;",
            "Lcom/explorestack/protobuf/Method$Builder;",
            "Lcom/explorestack/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private methods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Mixin;",
            "Lcom/explorestack/protobuf/Mixin$Builder;",
            "Lcom/explorestack/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/SourceContext;",
            "Lcom/explorestack/protobuf/SourceContext$Builder;",
            "Lcom/explorestack/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/explorestack/protobuf/SourceContext;

.field private syntax_:I

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 773
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1055
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 1462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 1773
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 2105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    const/4 v0, 0x0

    .line 2416
    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    .line 774
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Api$1;)V
    .locals 0

    .line 755
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 779
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1055
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 1462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 1773
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 2105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    const/4 p1, 0x0

    .line 2416
    iput p1, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    .line 780
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Api$1;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMethodsIsMutable()V
    .locals 2

    .line 1152
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 1154
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMixinsIsMutable()V
    .locals 2

    .line 2107
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 2109
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1464
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1465
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 1466
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 761
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Method;",
            "Lcom/explorestack/protobuf/Method$Builder;",
            "Lcom/explorestack/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1450
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1454
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1456
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Mixin;",
            "Lcom/explorestack/protobuf/Mixin$Builder;",
            "Lcom/explorestack/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2404
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2405
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2409
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2410
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2411
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 2413
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1762
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1766
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1768
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSourceContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/SourceContext;",
            "Lcom/explorestack/protobuf/SourceContext$Builder;",
            "Lcom/explorestack/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2093
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2094
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2096
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 2097
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2099
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 783
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 786
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 787
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllMethods(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Method;",
            ">;)",
            "Lcom/explorestack/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1328
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1330
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1334
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMixins(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;)",
            "Lcom/explorestack/protobuf/Api$Builder;"
        }
    .end annotation

    .line 2283
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2284
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2285
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2287
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2289
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1640
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1641
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1642
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1646
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMethods(ILcom/explorestack/protobuf/Method$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1312
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1313
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMethods(ILcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1273
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1276
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1279
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMethods(Lcom/explorestack/protobuf/Method$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1293
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1294
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMethods(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1255
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1258
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMethodsBuilder()Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 1420
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1421
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v1

    .line 1420
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Method$Builder;

    return-object v0
.end method

.method public final addMethodsBuilder(I)Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 1432
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1433
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v1

    .line 1432
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final addMixins(ILcom/explorestack/protobuf/Mixin$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2265
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2267
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2270
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMixins(ILcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2228
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2231
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2234
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMixins(Lcom/explorestack/protobuf/Mixin$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2247
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2248
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2249
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2252
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMixins(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2205
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2210
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2213
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addMixinsBuilder()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 2

    .line 2375
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2376
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v1

    .line 2375
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object v0
.end method

.method public final addMixinsBuilder(I)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 2

    .line 2387
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2388
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstance()Lcom/explorestack/protobuf/Mixin;

    move-result-object v1

    .line 2387
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1623
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1624
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1627
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1585
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1588
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1591
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1605
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1606
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1609
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1564
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1567
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1570
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1732
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1733
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1732
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1744
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1745
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1744
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 919
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Api;
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->buildPartial()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Api;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 841
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Api$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->build()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->build()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Api;
    .locals 2

    .line 848
    new-instance v0, Lcom/explorestack/protobuf/Api;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Api;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Api$1;)V

    .line 850
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$302(Lcom/explorestack/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 852
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 854
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$402(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$402(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    .line 860
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 861
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 863
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$502(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 867
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$502(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    .line 869
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$602(Lcom/explorestack/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 871
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$702(Lcom/explorestack/protobuf/Api;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 873
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$702(Lcom/explorestack/protobuf/Api;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    .line 875
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 876
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 877
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 878
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 880
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$802(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 882
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$802(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;

    .line 884
    :goto_3
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Api;->access$902(Lcom/explorestack/protobuf/Api;I)I

    .line 885
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->buildPartial()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->buildPartial()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clear()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Api$Builder;
    .locals 2

    .line 792
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 793
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_0

    .line 796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 797
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 801
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 802
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 803
    iget v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_1

    .line 805
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 807
    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 810
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 812
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 813
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 815
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 817
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_3

    .line 819
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    const/4 v0, 0x0

    .line 821
    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clear()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clear()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clear()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 902
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearMethods()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 1348
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 1349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1351
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearMixins()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2301
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 2303
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 2304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2306
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1125
    invoke-static {}, Lcom/explorestack/protobuf/Api;->getDefaultInstance()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 907
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 1660
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 1661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1663
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearSourceContext()Lcom/explorestack/protobuf/Api$Builder;
    .locals 2

    .line 2043
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2044
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 2045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2047
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 2048
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearSyntax()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2476
    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    .line 2477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVersion()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1903
    invoke-static {}, Lcom/explorestack/protobuf/Api;->getDefaultInstance()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 1904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 891
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Api$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

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

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->clone()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;
    .locals 1

    .line 834
    invoke-static {}, Lcom/explorestack/protobuf/Api;->getDefaultInstance()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 829
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getMethods(I)Lcom/explorestack/protobuf/Method;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method;

    return-object p1

    .line 1200
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method;

    return-object p1
.end method

.method public final getMethodsBuilder(I)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1381
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final getMethodsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Method$Builder;",
            ">;"
        }
    .end annotation

    .line 1444
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMethodsCount()I
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1186
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1172
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMethodsOrBuilder(I)Lcom/explorestack/protobuf/MethodOrBuilder;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MethodOrBuilder;

    return-object p1

    .line 1394
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MethodOrBuilder;

    return-object p1
.end method

.method public final getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMixins(I)Lcom/explorestack/protobuf/Mixin;
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin;

    return-object p1

    .line 2155
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin;

    return-object p1
.end method

.method public final getMixinsBuilder(I)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 2336
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin$Builder;

    return-object p1
.end method

.method public final getMixinsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Mixin$Builder;",
            ">;"
        }
    .end annotation

    .line 2399
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMixinsCount()I
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2141
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2127
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMixinsOrBuilder(I)Lcom/explorestack/protobuf/MixinOrBuilder;
    .locals 1

    .line 2347
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MixinOrBuilder;

    return-object p1

    .line 2349
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MixinOrBuilder;

    return-object p1
.end method

.method public final getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2361
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2362
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1066
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1067
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1069
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1070
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1073
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1087
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1088
    check-cast v0, Ljava/lang/String;

    .line 1089
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1091
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1094
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 1512
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 1693
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final getOptionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option$Builder;",
            ">;"
        }
    .end annotation

    .line 1756
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1498
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1484
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 1706
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public final getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1968
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext;

    return-object v0
.end method

.method public final getSourceContextBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 2063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    .line 2064
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getSourceContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_1

    .line 2079
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 2448
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2449
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 2425
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 1799
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1800
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1802
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1803
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 1806
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1834
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 1835
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1836
    check-cast v0, Ljava/lang/String;

    .line 1837
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1839
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 1842
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

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

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 767
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Api_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Api;

    const-class v2, Lcom/explorestack/protobuf/Api$Builder;

    .line 768
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Api$Builder;

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

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 3

    .line 932
    invoke-static {}, Lcom/explorestack/protobuf/Api;->getDefaultInstance()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 933
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$300(Lcom/explorestack/protobuf/Api;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 938
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 939
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 941
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_0

    .line 943
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 944
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 946
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_2

    .line 949
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 950
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 952
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 953
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    .line 954
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 955
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 957
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMethodsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 959
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 963
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 964
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 965
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 966
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 967
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_3

    .line 969
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 970
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 972
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_5

    .line 975
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 976
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 977
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 978
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 979
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    .line 980
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 981
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_9

    .line 983
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 985
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 989
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 990
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$600(Lcom/explorestack/protobuf/Api;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    .line 993
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 994
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Api$Builder;->mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Api$Builder;

    .line 996
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 997
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 998
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 999
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 1000
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    goto :goto_6

    .line 1002
    :cond_e
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 1003
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1005
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_7

    .line 1008
    :cond_f
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1009
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1010
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1011
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1012
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    .line 1013
    iget v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Api$Builder;->bitField0_:I

    .line 1014
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    .line 1016
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->getMixinsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 1018
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1022
    :cond_12
    :goto_7
    invoke-static {p1}, Lcom/explorestack/protobuf/Api;->access$900(Lcom/explorestack/protobuf/Api;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 1023
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Api$Builder;->setSyntaxValue(I)Lcom/explorestack/protobuf/Api$Builder;

    .line 1025
    :cond_13
    iget-object p1, p1, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    .line 1026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1042
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Api;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1044
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Api;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
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

    .line 1048
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;

    .line 1050
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 923
    instance-of v0, p1, Lcom/explorestack/protobuf/Api;

    if-eqz v0, :cond_0

    .line 924
    check-cast p1, Lcom/explorestack/protobuf/Api;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1

    .line 926
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

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Api$Builder;

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

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 2023
    invoke-static {v0}, Lcom/explorestack/protobuf/SourceContext;->newBuilder(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    .line 2025
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 2027
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_1

    .line 2029
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 2489
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeMethods(I)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1364
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1365
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1368
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeMixins(I)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2318
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2319
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2320
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1676
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1677
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1680
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 897
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Api$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setMethods(ILcom/explorestack/protobuf/Method$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1234
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1235
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1238
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMethods(ILcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methodsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1214
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMethodsIsMutable()V

    .line 1217
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->methods_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1220
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMixins(ILcom/explorestack/protobuf/Mixin$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2188
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2189
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2190
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2193
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Mixin$Builder;->build()Lcom/explorestack/protobuf/Mixin;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setMixins(ILcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixinsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureMixinsIsMutable()V

    .line 2172
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2175
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 1108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 1140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1144
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->name_:Ljava/lang/Object;

    .line 1145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1546
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1547
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1550
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1526
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api$Builder;->ensureOptionsIsMutable()V

    .line 1529
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1532
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 913
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Api$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Api$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext$Builder;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2003
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 2004
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 2006
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1982
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    goto :goto_0

    .line 1987
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSyntax(Lcom/explorestack/protobuf/Syntax;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 2460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    .line 2464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntaxValue(I)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 2435
    iput p1, p0, Lcom/explorestack/protobuf/Api$Builder;->syntax_:I

    .line 2436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 2483
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Api$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setVersion(Ljava/lang/String;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 1871
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 1875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 0

    .line 1933
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1937
    iput-object p1, p0, Lcom/explorestack/protobuf/Api$Builder;->version_:Ljava/lang/Object;

    .line 1938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api$Builder;->onChanged()V

    return-object p0
.end method
