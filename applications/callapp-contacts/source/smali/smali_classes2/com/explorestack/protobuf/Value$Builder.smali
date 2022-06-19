.class public final Lcom/explorestack/protobuf/Value$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Value$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 653
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 832
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 654
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 832
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 660
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Value$1;)V
    .locals 0

    .line 635
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Value$1;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 641
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/ListValue;",
            "Lcom/explorestack/protobuf/ListValue$Builder;",
            "Lcom/explorestack/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1435
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_0

    .line 1436
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1438
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/ListValue;

    .line 1441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1443
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1445
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    .line 1447
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
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

    .line 1262
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1263
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_0

    .line 1264
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1266
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    .line 1269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1271
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1273
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    .line 1275
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 663
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 759
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/Value;
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 690
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/Value$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->buildPartial()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/Value;
    .locals 3

    .line 697
    new-instance v0, Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Value$1;)V

    .line 698
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 699
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 702
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 705
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 708
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 711
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 712
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 714
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_5
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 718
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 719
    iget-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 721
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_7
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Value;->access$402(Lcom/explorestack/protobuf/Value;I)I

    .line 725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clear()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 669
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 670
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method public final clearBoolValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1098
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1099
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1100
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 742
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final clearKind()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 841
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 842
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 843
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearListValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 5

    .line 1382
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    .line 1383
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_2

    .line 1384
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1385
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1389
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1

    .line 1390
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1391
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1393
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final clearNullValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 914
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 915
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 916
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public final clearNumberValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 956
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 958
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 747
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final clearStringValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 1038
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1040
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public final clearStructValue()Lcom/explorestack/protobuf/Value$Builder;
    .locals 5

    .line 1210
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 1211
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_2

    .line 1212
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1213
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1217
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1

    .line 1218
    iput v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1219
    iput-object v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1221
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 731
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Value$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->clone()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBoolValue()Z
    .locals 2

    .line 1072
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;
    .locals 1

    .line 683
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 678
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getKindCase()Lcom/explorestack/protobuf/Value$KindCase;
    .locals 1

    .line 836
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public final getListValue()Lcom/explorestack/protobuf/ListValue;
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1299
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1302
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1305
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1307
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final getListValueBuilder()Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 1

    .line 1405
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getListValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValue$Builder;

    return-object v0
.end method

.method public final getListValueOrBuilder()Lcom/explorestack/protobuf/ListValueOrBuilder;
    .locals 3

    .line 1415
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1416
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ListValueOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 1421
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final getNullValue()Lcom/explorestack/protobuf/NullValue;
    .locals 2

    .line 882
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 885
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 884
    invoke-static {v0}, Lcom/explorestack/protobuf/NullValue;->valueOf(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->UNRECOGNIZED:Lcom/explorestack/protobuf/NullValue;

    :cond_0
    return-object v0

    .line 888
    :cond_1
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->NULL_VALUE:Lcom/explorestack/protobuf/NullValue;

    return-object v0
.end method

.method public final getNullValueValue()I
    .locals 2

    .line 856
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNumberValue()D
    .locals 2

    .line 930
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 3

    .line 973
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 976
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 977
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 979
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 980
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1

    .line 981
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 985
    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 998
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1001
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1002
    check-cast v0, Ljava/lang/String;

    .line 1003
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1005
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1

    .line 1006
    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1010
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getStructValue()Lcom/explorestack/protobuf/Struct;
    .locals 3

    .line 1126
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1127
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1130
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1133
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1135
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getStructValueBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 1233
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value$Builder;->getStructValueFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getStructValueOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 3

    .line 1243
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1244
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 1249
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final hasListValue()Z
    .locals 2

    .line 1288
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStructValue()Z
    .locals 2

    .line 1116
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 647
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Value;

    const-class v2, Lcom/explorestack/protobuf/Value$Builder;

    .line 648
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

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;

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

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 821
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Value;->access$500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 823
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
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

    .line 827
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    .line 829
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 763
    instance-of v0, p1, Lcom/explorestack/protobuf/Value;

    if-eqz v0, :cond_0

    .line 764
    check-cast p1, Lcom/explorestack/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1

    .line 766
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 772
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDefaultInstance()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 773
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$KindCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 797
    :pswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 793
    :pswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 789
    :pswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 783
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 784
    invoke-static {p1}, Lcom/explorestack/protobuf/Value;->access$300(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 779
    :pswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    goto :goto_0

    .line 775
    :pswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Value$Builder;->setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;

    .line 804
    :goto_0
    iget-object p1, p1, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    .line 805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 1357
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1358
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    invoke-static {v0}, Lcom/explorestack/protobuf/ListValue;->newBuilder(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    .line 1360
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1362
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1364
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_1

    .line 1366
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1367
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1371
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final mergeStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 3

    .line 1184
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1185
    iget v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1186
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 1188
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 1190
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1192
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_1

    .line 1194
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 1195
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1199
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 1458
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x4

    .line 1085
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1086
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Value$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 737
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1340
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x6

    .line 1345
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->listValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1325
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x6

    .line 1327
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final setNullValue(Lcom/explorestack/protobuf/NullValue;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 899
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 901
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 902
    invoke-virtual {p1}, Lcom/explorestack/protobuf/NullValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 903
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNullValueValue(I)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 869
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 943
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 944
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Value$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 753
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method

.method public final setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1023
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 1025
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1026
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStringValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1055
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-static {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    const/4 v0, 0x3

    .line 1058
    iput v0, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    .line 1059
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1168
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1173
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/explorestack/protobuf/Value$Builder;->structValueBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iput-object p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->onChanged()V

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1155
    iput p1, p0, Lcom/explorestack/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 635
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 0

    .line 1452
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value$Builder;

    return-object p1
.end method
