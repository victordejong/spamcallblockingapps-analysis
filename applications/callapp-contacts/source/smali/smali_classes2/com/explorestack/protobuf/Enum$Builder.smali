.class public final Lcom/explorestack/protobuf/Enum$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Enum$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/EnumOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/EnumValue;",
            "Lcom/explorestack/protobuf/EnumValue$Builder;",
            "Lcom/explorestack/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private enumvalue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/EnumValue;",
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 815
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 1217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1681
    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    .line 583
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Enum$1;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 815
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 1217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    const/4 p1, 0x0

    .line 1681
    iput p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    .line 589
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Enum$1;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureEnumvalueIsMutable()V
    .locals 2

    .line 907
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 909
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1219
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 1221
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 570
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Enum_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/EnumValue;",
            "Lcom/explorestack/protobuf/EnumValue$Builder;",
            "Lcom/explorestack/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1205
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1209
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1211
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1516
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1517
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1521
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1523
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1670
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1671
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 1674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1676
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 592
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 595
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllEnumvalue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;)",
            "Lcom/explorestack/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1085
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1089
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1396
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1397
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1401
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumvalue(ILcom/explorestack/protobuf/EnumValue$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1066
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1067
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumvalue(ILcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1028
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1031
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumvalue(Lcom/explorestack/protobuf/EnumValue$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1049
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1052
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumvalue(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1010
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEnumvalueBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2

    .line 1175
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1176
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v1

    .line 1175
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object v0
.end method

.method public final addEnumvalueBuilder(I)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2

    .line 1187
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1188
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v1

    .line 1187
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1379
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1340
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1343
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1346
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1360
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1361
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1364
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1322
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1325
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1487
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1488
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1487
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1499
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1500
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1499
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 709
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Enum;
    .locals 2

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->buildPartial()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Enum;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 641
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Enum$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->build()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->build()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Enum;
    .locals 2

    .line 648
    new-instance v0, Lcom/explorestack/protobuf/Enum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Enum;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Enum$1;)V

    .line 650
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$302(Lcom/explorestack/protobuf/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 652
    iget v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 654
    iget v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$402(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$402(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    .line 660
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 661
    iget v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 662
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 663
    iget v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 665
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$502(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 667
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$502(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;

    .line 669
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 670
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$602(Lcom/explorestack/protobuf/Enum;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 672
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$602(Lcom/explorestack/protobuf/Enum;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    .line 674
    :goto_2
    iget v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Enum;->access$702(Lcom/explorestack/protobuf/Enum;I)I

    .line 675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->buildPartial()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->buildPartial()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clear()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 2

    .line 600
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 601
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 605
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 611
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    goto :goto_1

    .line 613
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 615
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 616
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 618
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 619
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_2
    const/4 v0, 0x0

    .line 621
    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clear()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clear()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clear()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearEnumvalue()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 1103
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 1104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 692
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 881
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->getDefaultInstance()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 697
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 1415
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 1416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1418
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearSourceContext()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1624
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1627
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1628
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearSyntax()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1741
    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    .line 1742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 681
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Enum$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

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

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->clone()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;
    .locals 1

    .line 634
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->getDefaultInstance()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 629
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Enum_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getEnumvalue(I)Lcom/explorestack/protobuf/EnumValue;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue;

    return-object p1

    .line 955
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue;

    return-object p1
.end method

.method public final getEnumvalueBuilder(I)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 1136
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue$Builder;

    return-object p1
.end method

.method public final getEnumvalueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/EnumValue$Builder;",
            ">;"
        }
    .end annotation

    .line 1199
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumvalueCount()I
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 941
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumvalueOrBuilder(I)Lcom/explorestack/protobuf/EnumValueOrBuilder;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValueOrBuilder;

    return-object p1

    .line 1149
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValueOrBuilder;

    return-object p1
.end method

.method public final getEnumvalueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 825
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 826
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 828
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 829
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 832
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 845
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 846
    check-cast v0, Ljava/lang/String;

    .line 847
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 849
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 852
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 1267
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 1448
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1511
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1253
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

    .line 1236
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 1461
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

    .line 1473
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1552
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext;

    return-object v0
.end method

.method public final getSourceContextBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 1642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    .line 1643
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getSourceContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1654
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_1

    .line 1657
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 1713
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1714
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 1690
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    return v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

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

    .line 576
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Enum_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Enum;

    const-class v2, Lcom/explorestack/protobuf/Enum$Builder;

    .line 577
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

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Enum$Builder;

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

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 802
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 804
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Enum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
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

    .line 808
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;

    .line 810
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 3

    .line 722
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->getDefaultInstance()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 723
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$300(Lcom/explorestack/protobuf/Enum;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 728
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 729
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 731
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 734
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 736
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_2

    .line 739
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 740
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 741
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 742
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 743
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    .line 744
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 745
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 747
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getEnumvalueFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 749
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 753
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 754
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 755
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 756
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 757
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    goto :goto_3

    .line 759
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 760
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_4

    .line 765
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 766
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 767
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 768
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 769
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    .line 770
    iget v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->bitField0_:I

    .line 771
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_9

    .line 773
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_9
    iput-object v1, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 775
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 779
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 780
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Enum$Builder;->mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Enum$Builder;

    .line 782
    :cond_c
    invoke-static {p1}, Lcom/explorestack/protobuf/Enum;->access$700(Lcom/explorestack/protobuf/Enum;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 783
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Enum$Builder;->setSyntaxValue(I)Lcom/explorestack/protobuf/Enum$Builder;

    .line 785
    :cond_d
    iget-object p1, p1, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    .line 786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 713
    instance-of v0, p1, Lcom/explorestack/protobuf/Enum;

    if-eqz v0, :cond_0

    .line 714
    check-cast p1, Lcom/explorestack/protobuf/Enum;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1

    .line 716
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

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Enum$Builder;

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

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 1604
    invoke-static {v0}, Lcom/explorestack/protobuf/SourceContext;->newBuilder(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    .line 1606
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1608
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_1

    .line 1610
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 1754
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeEnumvalue(I)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 1120
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1123
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1431
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1432
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1435
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setEnumvalue(ILcom/explorestack/protobuf/EnumValue$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 990
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/EnumValue$Builder;->build()Lcom/explorestack/protobuf/EnumValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setEnumvalue(ILcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalueBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 969
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureEnumvalueIsMutable()V

    .line 972
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 687
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Enum$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 865
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 895
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 899
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->name_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1302
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1281
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum$Builder;->ensureOptionsIsMutable()V

    .line 1284
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1287
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 703
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Enum$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Enum$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext$Builder;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1585
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1588
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1565
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    goto :goto_0

    .line 1570
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSyntax(Lcom/explorestack/protobuf/Syntax;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 1725
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    .line 1729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntaxValue(I)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 1700
    iput p1, p0, Lcom/explorestack/protobuf/Enum$Builder;->syntax_:I

    .line 1701
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 0

    .line 1748
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Enum$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method
