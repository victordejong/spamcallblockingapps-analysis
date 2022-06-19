.class public final Lcom/explorestack/protobuf/Type$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Type$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/TypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Field;",
            "Lcom/explorestack/protobuf/Field$Builder;",
            "Lcom/explorestack/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private oneofs_:Lcom/explorestack/protobuf/LazyStringList;

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

    .line 657
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 907
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1308
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1903
    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    .line 658
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 907
    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1308
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    const/4 p1, 0x0

    .line 1903
    iput p1, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    .line 664
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Type$1;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Type$1;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;-><init>()V

    return-void
.end method

.method private ensureFieldsIsMutable()V
    .locals 2

    .line 999
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1001
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOneofsIsMutable()V
    .locals 2

    .line 1310
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1312
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1441
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1443
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 645
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Field;",
            "Lcom/explorestack/protobuf/Field$Builder;",
            "Lcom/explorestack/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1297
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1301
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1303
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1738
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1739
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1743
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1744
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1745
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1892
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1893
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 1896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1898
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 667
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 670
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllFields(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Field;",
            ">;)",
            "Lcom/explorestack/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1177
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllOneofs(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1400
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1401
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1618
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1619
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1621
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1623
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFields(ILcom/explorestack/protobuf/Field$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1159
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFields(ILcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1120
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1123
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFields(Lcom/explorestack/protobuf/Field$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1141
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFields(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1099
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1102
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addFieldsBuilder()Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1267
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1268
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v1

    .line 1267
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Field$Builder;

    return-object v0
.end method

.method public final addFieldsBuilder(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1279
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1280
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v1

    .line 1279
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final addOneofs(Ljava/lang/String;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1384
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1387
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final addOneofsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1432
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1433
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 1434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1600
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1601
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1604
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1562
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1565
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1582
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1583
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1541
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1544
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1547
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1709
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1710
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1709
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1721
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1722
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1721
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 791
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->build()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->build()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/Type;
    .locals 2

    .line 716
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->buildPartial()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Type;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 718
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Type$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->buildPartial()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->buildPartial()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Type;
    .locals 2

    .line 725
    new-instance v0, Lcom/explorestack/protobuf/Type;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Type;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Type$1;)V

    .line 727
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$302(Lcom/explorestack/protobuf/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 729
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 731
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$402(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$402(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 737
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 739
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$502(Lcom/explorestack/protobuf/Type;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 742
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 743
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 744
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 745
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$602(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 749
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$602(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 751
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 752
    iget-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$702(Lcom/explorestack/protobuf/Type;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 754
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$702(Lcom/explorestack/protobuf/Type;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;

    .line 756
    :goto_2
    iget v1, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Type;->access$802(Lcom/explorestack/protobuf/Type;I)I

    .line 757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clear()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clear()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clear()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clear()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Type$Builder;
    .locals 2

    .line 675
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 676
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 678
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 680
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 684
    :goto_0
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 685
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 686
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 688
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 692
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 693
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_2

    .line 695
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 696
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_2
    const/4 v0, 0x0

    .line 698
    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 774
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final clearFields()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 1195
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 1196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1198
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 973
    invoke-static {}, Lcom/explorestack/protobuf/Type;->getDefaultInstance()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 779
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final clearOneofs()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1414
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1415
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 1416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1636
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 1637
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 1638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1640
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearSourceContext()Lcom/explorestack/protobuf/Type$Builder;
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1846
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1849
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1850
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearSyntax()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1963
    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    .line 1964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 763
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Type$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->clone()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;
    .locals 1

    .line 711
    invoke-static {}, Lcom/explorestack/protobuf/Type;->getDefaultInstance()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 706
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getFields(I)Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field;

    return-object p1

    .line 1047
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field;

    return-object p1
.end method

.method public final getFieldsBuilder(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1228
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final getFieldsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Field$Builder;",
            ">;"
        }
    .end annotation

    .line 1291
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldsCount()I
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1033
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldsOrBuilder(I)Lcom/explorestack/protobuf/FieldOrBuilder;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldOrBuilder;

    return-object p1

    .line 1241
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldOrBuilder;

    return-object p1
.end method

.method public final getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 917
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 918
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 920
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 921
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 924
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 938
    check-cast v0, Ljava/lang/String;

    .line 939
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 941
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 944
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOneofs(I)Ljava/lang/String;
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getOneofsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getOneofsCount()I
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getOneofsList()Ljava/util/List;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 1489
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 1670
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1733
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1475
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

    .line 1458
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1461
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 1683
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

    .line 1695
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1774
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext;

    return-object v0
.end method

.method public final getSourceContextBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;
    .locals 1

    .line 1864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    .line 1865
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getSourceContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContext$Builder;

    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 1875
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1876
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_1

    .line 1879
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 1935
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1936
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 1912
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    return v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

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

    .line 651
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Type_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Type;

    const-class v2, Lcom/explorestack/protobuf/Type$Builder;

    .line 652
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

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Type$Builder;

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

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type$Builder;

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

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Type$Builder;

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

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 894
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Type;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 896
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
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

    .line 900
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;

    .line 902
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 795
    instance-of v0, p1, Lcom/explorestack/protobuf/Type;

    if-eqz v0, :cond_0

    .line 796
    check-cast p1, Lcom/explorestack/protobuf/Type;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1

    .line 798
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 3

    .line 804
    invoke-static {}, Lcom/explorestack/protobuf/Type;->getDefaultInstance()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 805
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$300(Lcom/explorestack/protobuf/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 810
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 811
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 813
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    goto :goto_0

    .line 815
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 816
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 818
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_2

    .line 821
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 822
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 823
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 824
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 825
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    .line 826
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 827
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 829
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getFieldsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 835
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$500(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 836
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 837
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$500(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 838
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    goto :goto_3

    .line 840
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 841
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$500(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 843
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    .line 845
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 846
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 847
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 848
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 849
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    goto :goto_4

    .line 851
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 852
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 854
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_5

    .line 857
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 858
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 859
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 860
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 861
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    .line 862
    iget v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/Type$Builder;->bitField0_:I

    .line 863
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    .line 865
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 867
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 871
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 872
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Type$Builder;->mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Type$Builder;

    .line 874
    :cond_e
    invoke-static {p1}, Lcom/explorestack/protobuf/Type;->access$800(Lcom/explorestack/protobuf/Type;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 875
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Type$Builder;->setSyntaxValue(I)Lcom/explorestack/protobuf/Type$Builder;

    .line 877
    :cond_f
    iget-object p1, p1, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    .line 878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 1826
    invoke-static {v0}, Lcom/explorestack/protobuf/SourceContext;->newBuilder(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    .line 1828
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1830
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_1

    .line 1832
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 1976
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final removeFields(I)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1212
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1215
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1654
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1657
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Type$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 769
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final setFields(ILcom/explorestack/protobuf/Field$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1081
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1082
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setFields(ILcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fieldsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1061
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureFieldsIsMutable()V

    .line 1064
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->fields_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 957
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 961
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 987
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 991
    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->name_:Ljava/lang/Object;

    .line 992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOneofs(ILjava/lang/String;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1367
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOneofsIsMutable()V

    .line 1370
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1523
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1524
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1527
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1503
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type$Builder;->ensureOptionsIsMutable()V

    .line 1506
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1509
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Type$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Type$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext$Builder;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1807
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1810
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SourceContext$Builder;->build()Lcom/explorestack/protobuf/SourceContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSourceContext(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1787
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    iput-object p1, p0, Lcom/explorestack/protobuf/Type$Builder;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    .line 1790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    goto :goto_0

    .line 1792
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSyntax(Lcom/explorestack/protobuf/Syntax;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 1947
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    .line 1951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntaxValue(I)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 1922
    iput p1, p0, Lcom/explorestack/protobuf/Type$Builder;->syntax_:I

    .line 1923
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 0

    .line 1970
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Type$Builder;

    return-object p1
.end method
