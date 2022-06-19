.class public final Lcom/explorestack/protobuf/Field$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Field$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/FieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private defaultValue_:Ljava/lang/Object;

.field private jsonName_:Ljava/lang/Object;

.field private kind_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

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

.field private packed_:Z

.field private typeUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1308
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 1530
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1595
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    const-string v0, ""

    .line 1698
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1787
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2272
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2361
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1309
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Field$1;)V
    .locals 0

    .line 1290
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 1314
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 1530
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1595
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    const-string p1, ""

    .line 1698
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1787
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2272
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2361
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1315
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Field$1;)V
    .locals 0

    .line 1290
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1963
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1964
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1965
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1296
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 2260
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2261
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2265
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2267
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2269
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1318
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 1320
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/Field$Builder;"
        }
    .end annotation

    .line 2139
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2141
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2145
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2122
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2123
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2126
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2084
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2087
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2090
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2103
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2104
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2105
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2108
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2063
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2066
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2069
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 2231
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2232
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 2231
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 2243
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2244
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 2243
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1429
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/Field;
    .locals 2

    .line 1366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1368
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Field$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Field;
    .locals 2

    .line 1375
    new-instance v0, Lcom/explorestack/protobuf/Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Field$1;)V

    .line 1377
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$302(Lcom/explorestack/protobuf/Field;I)I

    .line 1378
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$402(Lcom/explorestack/protobuf/Field;I)I

    .line 1379
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$502(Lcom/explorestack/protobuf/Field;I)I

    .line 1380
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$602(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$702(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$802(Lcom/explorestack/protobuf/Field;I)I

    .line 1383
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$902(Lcom/explorestack/protobuf/Field;Z)Z

    .line 1384
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1385
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1387
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1391
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    .line 1393
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1102(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1202(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1325
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1326
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1328
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1330
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    const-string v1, ""

    .line 1332
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1334
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1336
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    .line 1338
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    .line 1340
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1342
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    goto :goto_0

    .line 1344
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1346
    :goto_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 1348
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearCardinality()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1655
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDefaultValue()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2427
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 2428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1412
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearJsonName()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2338
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearKind()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1590
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1764
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNumber()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1693
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    .line 1694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1417
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneofIndex()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1917
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    .line 1918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2157
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2159
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    .line 2160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2162
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearPacked()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1955
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    .line 1956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTypeUrl()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1857
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1401
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Field$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCardinality()Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 1

    .line 1627
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Field$Cardinality;->valueOf(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1628
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    :cond_0
    return-object v0
.end method

.method public final getCardinalityValue()I
    .locals 1

    .line 1604
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 1361
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 2370
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 2371
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2372
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2374
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2375
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 2378
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2390
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 2391
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2392
    check-cast v0, Ljava/lang/String;

    .line 2393
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2395
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 2398
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1356
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getJsonName()Ljava/lang/String;
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2282
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2283
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2285
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2286
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 2289
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2301
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2302
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2303
    check-cast v0, Ljava/lang/String;

    .line 2304
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2306
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 2309
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getKind()Lcom/explorestack/protobuf/Field$Kind;
    .locals 1

    .line 1562
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Field$Kind;->valueOf(I)Lcom/explorestack/protobuf/Field$Kind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1563
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    :cond_0
    return-object v0
.end method

.method public final getKindValue()I
    .locals 1

    .line 1539
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1707
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1708
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1709
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1711
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1712
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1715
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1728
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1729
    check-cast v0, Ljava/lang/String;

    .line 1730
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1732
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1735
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1669
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    return v0
.end method

.method public final getOneofIndex()I
    .locals 1

    .line 1891
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    return v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 2011
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 2192
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 2255
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1997
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

    .line 1980
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1983
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 2203
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 2205
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

    .line 2217
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPacked()Z
    .locals 1

    .line 1931
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    return v0
.end method

.method public final getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1798
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1799
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1801
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1802
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 1805
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1820
    check-cast v0, Ljava/lang/String;

    .line 1821
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1823
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 1826
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1302
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Field;

    const-class v2, Lcom/explorestack/protobuf/Field$Builder;

    .line 1303
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

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1517
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Field;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1523
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1519
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1520
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

    .line 1523
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    .line 1525
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1442
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1443
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$300(Lcom/explorestack/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setKindValue(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1446
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$400(Lcom/explorestack/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getCardinalityValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setCardinalityValue(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1449
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1450
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setNumber(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1452
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1453
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$600(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    .line 1456
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1457
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$700(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1458
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    .line 1460
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1461
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setOneofIndex(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1463
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1464
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setPacked(Z)Lcom/explorestack/protobuf/Field$Builder;

    .line 1466
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 1467
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1468
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1469
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1470
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    goto :goto_0

    .line 1472
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 1473
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1475
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_1

    .line 1478
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1479
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1480
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1481
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1482
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1483
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    .line 1484
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_a

    .line 1486
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1488
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1492
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1493
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1100(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 1494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    .line 1496
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1497
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1200(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    .line 1500
    :cond_e
    iget-object p1, p1, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    .line 1501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1433
    instance-of v0, p1, Lcom/explorestack/protobuf/Field;

    if-eqz v0, :cond_0

    .line 1434
    check-cast p1, Lcom/explorestack/protobuf/Field;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1

    .line 1436
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

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2458
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2175
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2176
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2179
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCardinality(Lcom/explorestack/protobuf/Field$Cardinality;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1639
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCardinalityValue(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1614
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2411
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 2415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2441
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2445
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 2446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1407
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setJsonName(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJsonNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2356
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setKind(Lcom/explorestack/protobuf/Field$Kind;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1574
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setKindValue(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1549
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1778
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1782
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNumber(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1680
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    .line 1681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOneofIndex(I)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1903
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    .line 1904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2045
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2046
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2049
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2025
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 2028
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2029
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    .line 2031
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setPacked(Z)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1942
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    .line 1943
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1423
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 1872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1876
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1877
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 0

    .line 2452
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method
