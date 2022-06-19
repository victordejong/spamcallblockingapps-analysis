.class public final Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;"
    }
.end annotation


# instance fields
.field private domainspec_:Ljava/lang/Object;

.field private domainver_:Ljava/lang/Object;

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 800
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const-string v0, ""

    .line 816
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 905
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 999
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 631
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 800
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const-string p1, ""

    .line 816
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 905
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 999
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0

    .line 612
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0

    .line 612
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 618
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Request$Builder;",
            "Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1259
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_0

    .line 1260
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1262
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Request;

    .line 1265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1267
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1269
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 1271
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
            "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1440
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-eq v0, v1, :cond_0

    .line 1441
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1443
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Response;

    .line 1446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1448
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1450
    :cond_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1451
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 1452
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 641
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 733
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 2

    .line 671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 673
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 3

    .line 680
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    .line 681
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$402(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$502(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$602(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 685
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_1
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 692
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 693
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 695
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_3
    :goto_1
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$802(Lcom/explorestack/protobuf/openrtb/Openrtb;I)I

    .line 699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 646
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 647
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 649
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 651
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 653
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 654
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    return-object p0
.end method

.method public final clearDomainspec()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 975
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDomainver()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1069
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1070
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 716
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 721
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final clearPayload()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 809
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 811
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRequest()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 5

    .line 1203
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 1204
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_2

    .line 1205
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1206
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1207
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1210
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1

    .line 1211
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1212
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1214
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final clearResponse()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 5

    .line 1384
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 1385
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v3, :cond_2

    .line 1386
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1387
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1391
    :cond_0
    iget v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v4, v3, :cond_1

    .line 1392
    iput v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    .line 1393
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1395
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final clearVer()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 882
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 705
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1

    .line 666
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 661
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDomainspec()Ljava/lang/String;
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 916
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 917
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 919
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 920
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 923
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 938
    check-cast v0, Ljava/lang/String;

    .line 939
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 941
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 944
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDomainver()Ljava/lang/String;
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1010
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1011
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1013
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1014
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1017
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDomainverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1031
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1032
    check-cast v0, Ljava/lang/String;

    .line 1033
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1035
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 1038
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 804
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1116
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1119
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0

    .line 1121
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1124
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 1227
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getRequestFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    return-object v0
.end method

.method public final getRequestOrBuilder()Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
    .locals 3

    .line 1238
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1239
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 1244
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getResponse()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1297
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1300
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0

    .line 1302
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1303
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1305
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 1408
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->getResponseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object v0
.end method

.method public final getResponseOrBuilder()Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
    .locals 3

    .line 1419
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1420
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 1425
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getVer()Ljava/lang/String;
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 826
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 827
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 829
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 830
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 833
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 846
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 847
    check-cast v0, Ljava/lang/String;

    .line 848
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 850
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 853
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasRequest()Z
    .locals 2

    .line 1104
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasResponse()Z
    .locals 2

    .line 1285
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 624
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 625
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

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 795
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 791
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Openrtb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
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

    .line 795
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 797
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 737
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    if-eqz v0, :cond_0

    .line 738
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1

    .line 740
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2

    .line 746
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 747
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$400(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 752
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$500(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 755
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 756
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$600(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    .line 759
    :cond_3
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 765
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    goto :goto_0

    .line 761
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 772
    :goto_0
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$900(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 3

    .line 1176
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1177
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1178
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    .line 1180
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1182
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1184
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_1

    .line 1186
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1187
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1189
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1191
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final mergeResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 1358
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1359
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    .line 1361
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 1363
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1365
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_1

    .line 1367
    :cond_1
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    if-ne v2, v1, :cond_2

    .line 1368
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1370
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1372
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1463
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final setDomainspec(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 958
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 962
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomainspecBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 990
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 994
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainspec_:Ljava/lang/Object;

    .line 995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomainver(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1052
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1056
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDomainverBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1084
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1088
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->domainver_:Ljava/lang/Object;

    .line 1089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 711
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 727
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final setRequest(Lcom/explorestack/protobuf/openrtb/Request$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x4

    .line 1164
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final setRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->requestBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x4

    .line 1145
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final setResponse(Lcom/explorestack/protobuf/openrtb/Response$Builder;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1340
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1345
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final setResponse(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->responseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payload_:Ljava/lang/Object;

    .line 1322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x5

    .line 1326
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->payloadCase_:I

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 1457
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object p1
.end method

.method public final setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 866
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 0

    .line 896
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 900
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->ver_:Ljava/lang/Object;

    .line 901
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->onChanged()V

    return-object p0
.end method
