.class public final Lcom/explorestack/protobuf/Method$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Method$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/MethodOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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

.field private requestStreaming_:Z

.field private requestTypeUrl_:Ljava/lang/Object;

.field private responseStreaming_:Z

.field private responseTypeUrl_:Ljava/lang/Object;

.field private syntax_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 617
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 820
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 909
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 1036
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 1475
    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    .line 618
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 623
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 820
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 909
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 1036
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    const/4 p1, 0x0

    .line 1475
    iput p1, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    .line 624
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Method$1;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Method$1;)V
    .locals 0

    .line 599
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;-><init>()V

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 1166
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 1168
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 605
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 1463
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1464
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1468
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1469
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1470
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 627
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllOptions(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Option;",
            ">;)",
            "Lcom/explorestack/protobuf/Method$Builder;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1343
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1344
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1325
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1326
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1329
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1287
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1290
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1291
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1293
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1307
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1308
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptions(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1269
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addOptionsBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1434
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1435
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1434
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Option$Builder;

    return-object v0
.end method

.method public final addOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 1446
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1447
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDefaultInstance()Lcom/explorestack/protobuf/Option;

    move-result-object v1

    .line 1446
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 729
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->build()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/Method;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->buildPartial()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 671
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Method$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->buildPartial()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->buildPartial()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Method;
    .locals 2

    .line 678
    new-instance v0, Lcom/explorestack/protobuf/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Method;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Method$1;)V

    .line 680
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$302(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$402(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestStreaming_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$502(Lcom/explorestack/protobuf/Method;Z)Z

    .line 683
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$602(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseStreaming_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$702(Lcom/explorestack/protobuf/Method;Z)Z

    .line 685
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 686
    iget v1, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 688
    iget v1, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$802(Lcom/explorestack/protobuf/Method;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$802(Lcom/explorestack/protobuf/Method;Ljava/util/List;)Ljava/util/List;

    .line 694
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Method;->access$902(Lcom/explorestack/protobuf/Method;I)I

    .line 695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clear()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clear()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clear()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clear()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 634
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 635
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 637
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 639
    iput-boolean v1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestStreaming_:Z

    .line 641
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 643
    iput-boolean v1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseStreaming_:Z

    .line 645
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 647
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 651
    :goto_0
    iput v1, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 712
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 886
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 887
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 717
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 1362
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    .line 1363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1365
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearRequestStreaming()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1031
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestStreaming_:Z

    .line 1032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRequestTypeUrl()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 975
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearResponseStreaming()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseStreaming_:Z

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearResponseTypeUrl()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1102
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSyntax()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1535
    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    .line 1536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 701
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Method$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->clone()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;
    .locals 1

    .line 664
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 659
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 830
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 831
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 833
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 834
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 837
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 850
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 851
    check-cast v0, Ljava/lang/String;

    .line 852
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 854
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 857
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1

    .line 1214
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsBuilder(I)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 1395
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 1458
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1200
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

    .line 1183
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1

    .line 1408
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

    .line 1420
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestStreaming()Z
    .locals 1

    .line 1007
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestStreaming_:Z

    return v0
.end method

.method public final getRequestTypeUrl()Ljava/lang/String;
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 919
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 920
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 922
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 923
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 926
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 939
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 940
    check-cast v0, Ljava/lang/String;

    .line 941
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 943
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 946
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getResponseStreaming()Z
    .locals 1

    .line 1134
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseStreaming_:Z

    return v0
.end method

.method public final getResponseTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1046
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1047
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1049
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1050
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 1053
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1066
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1067
    check-cast v0, Ljava/lang/String;

    .line 1068
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1070
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 1073
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 1507
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1508
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 1484
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 611
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Method;

    const-class v2, Lcom/explorestack/protobuf/Method$Builder;

    .line 612
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

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Method$Builder;

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

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method$Builder;

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

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Method$Builder;

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

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 807
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Method;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 809
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
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

    .line 813
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;

    .line 815
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 733
    instance-of v0, p1, Lcom/explorestack/protobuf/Method;

    if-eqz v0, :cond_0

    .line 734
    check-cast p1, Lcom/explorestack/protobuf/Method;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1

    .line 736
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 742
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDefaultInstance()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 743
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$300(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    .line 747
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$400(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    .line 751
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Method$Builder;->setRequestStreaming(Z)Lcom/explorestack/protobuf/Method$Builder;

    .line 754
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 755
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$600(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    .line 758
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Method$Builder;->setResponseStreaming(Z)Lcom/explorestack/protobuf/Method$Builder;

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7

    .line 762
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 763
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 765
    iget v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    goto :goto_0

    .line 767
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 768
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 770
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_1

    .line 773
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 774
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 775
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 777
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    .line 778
    iget v1, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Method$Builder;->bitField0_:I

    .line 779
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_8

    .line 781
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 783
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 787
    :cond_a
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/Method;->access$900(Lcom/explorestack/protobuf/Method;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 788
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Method$Builder;->setSyntaxValue(I)Lcom/explorestack/protobuf/Method$Builder;

    .line 790
    :cond_b
    iget-object p1, p1, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    .line 791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1548
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final removeOptions(I)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1379
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Method$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 707
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 870
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 874
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 900
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 904
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->name_:Ljava/lang/Object;

    .line 905
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option$Builder;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1249
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1252
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Option$Builder;->build()Lcom/explorestack/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setOptions(ILcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1228
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method$Builder;->ensureOptionsIsMutable()V

    .line 1231
    iget-object v0, p0, Lcom/explorestack/protobuf/Method$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    goto :goto_0

    .line 1234
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Method$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Method$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 723
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method

.method public final setRequestStreaming(Z)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1018
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestStreaming_:Z

    .line 1019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRequestTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 959
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 963
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRequestTypeUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 993
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->requestTypeUrl_:Ljava/lang/Object;

    .line 994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setResponseStreaming(Z)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1145
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseStreaming_:Z

    .line 1146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setResponseTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1086
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setResponseTypeUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 1120
    iput-object p1, p0, Lcom/explorestack/protobuf/Method$Builder;->responseTypeUrl_:Ljava/lang/Object;

    .line 1121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntax(Lcom/explorestack/protobuf/Syntax;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1519
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    .line 1523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSyntaxValue(I)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1494
    iput p1, p0, Lcom/explorestack/protobuf/Method$Builder;->syntax_:I

    .line 1495
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 0

    .line 1542
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method$Builder;

    return-object p1
.end method
