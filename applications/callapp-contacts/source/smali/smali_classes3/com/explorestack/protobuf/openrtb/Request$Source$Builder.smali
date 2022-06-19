.class public final Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cert_:Ljava/lang/Object;

.field private digest_:Ljava/lang/Object;

.field private ds_:Ljava/lang/Object;

.field private dsgver_:I

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

.field private pchain_:Ljava/lang/Object;

.field private tid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1177
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1396
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1505
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1660
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1754
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1853
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1178
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1183
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1396
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1505
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1660
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1754
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1853
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 2111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1184
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 1159
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 1159
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 2113
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2115
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1165
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 2099
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2100
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 2103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2105
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 2410
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2411
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2415
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2417
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1188
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;"
        }
    .end annotation

    .line 2289
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2290
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2291
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2293
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2295
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2272
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2273
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2276
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2234
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2237
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2238
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2240
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2254
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2255
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2258
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2216
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2217
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2219
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2381
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2382
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2381
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2393
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2394
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2393
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1300
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 2

    .line 1235
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1237
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 2

    .line 1244
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 1246
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$402(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$502(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$602(Lcom/explorestack/protobuf/openrtb/Request$Source;I)I

    .line 1249
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$702(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$802(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$902(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1255
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1257
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 1258
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1260
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1264
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;

    .line 1266
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1194
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1195
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1197
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1199
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1201
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1203
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1205
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1208
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1210
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1211
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1213
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1215
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    goto :goto_1

    .line 1217
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearCert()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1828
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1829
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDigest()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1730
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDs()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1591
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDsgver()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1655
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 2052
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2053
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2056
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2057
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2307
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 2309
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 2310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2312
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1283
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1288
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final clearPchain()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1931
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTid()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1478
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1272
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCert()Ljava/lang/String;
    .locals 2

    .line 1765
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1766
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1767
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1769
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1770
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    return-object v0

    .line 1773
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCertBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1787
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1788
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1789
    check-cast v0, Ljava/lang/String;

    .line 1790
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1792
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    return-object v0

    .line 1795
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 1230
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1225
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDigest()Ljava/lang/String;
    .locals 2

    .line 1670
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1671
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1672
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1674
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1675
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    return-object v0

    .line 1678
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1691
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1692
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1693
    check-cast v0, Ljava/lang/String;

    .line 1694
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1696
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    return-object v0

    .line 1699
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDs()Ljava/lang/String;
    .locals 2

    .line 1519
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1520
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1521
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1523
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1524
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    return-object v0

    .line 1527
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1544
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1545
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1546
    check-cast v0, Ljava/lang/String;

    .line 1547
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1549
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    return-object v0

    .line 1552
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDsgver()I
    .locals 1

    .line 1629
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1981
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 2071
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 2072
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 2086
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 2161
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 2342
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 2405
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2147
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

    .line 2130
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2133
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 2353
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2354
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 2355
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

    .line 2367
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2368
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2370
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPchain()Ljava/lang/String;
    .locals 2

    .line 1865
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1866
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1867
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1869
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1870
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 1873
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPchainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1888
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1890
    check-cast v0, Ljava/lang/String;

    .line 1891
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1893
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 1896
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getTid()Ljava/lang/String;
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1410
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1411
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1413
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1414
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    return-object v0

    .line 1417
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1433
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1435
    check-cast v0, Ljava/lang/String;

    .line 1436
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1438
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    return-object v0

    .line 1441
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 1171
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1172
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2030
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2031
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2033
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 2035
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2037
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_1

    .line 2039
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

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1383
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1389
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1385
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Source;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
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

    .line 1389
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1391
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1304
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v0, :cond_0

    .line 1305
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1

    .line 1307
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1313
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1314
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$400(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1318
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1319
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$500(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1322
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1323
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setDsgver(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1325
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1326
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$700(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1329
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1330
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$800(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1331
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1333
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1334
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$900(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    .line 1337
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1338
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1340
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    .line 1341
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1342
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1343
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1344
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    goto :goto_0

    .line 1346
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 1347
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1349
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_1

    .line 1352
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1353
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1354
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1355
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1356
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    .line 1357
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->bitField0_:I

    .line 1359
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1360
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1362
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1366
    :cond_c
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1300(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 1367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 2430
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2325
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2326
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2329
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCert(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1810
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1814
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCertBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1844
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1800(Lcom/explorestack/protobuf/ByteString;)V

    .line 1848
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->cert_:Ljava/lang/Object;

    .line 1849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDigest(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1713
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDigestBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1745
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1749
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->digest_:Ljava/lang/Object;

    .line 1750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDs(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1574
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1610
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1614
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ds_:Ljava/lang/Object;

    .line 1615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDsgver(I)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1641
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->dsgver_:I

    .line 1642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2014
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2017
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1994
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 1999
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2195
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2196
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2197
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2199
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2175
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->ensureExtProtoIsMutable()V

    .line 2178
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    goto :goto_0

    .line 2181
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1278
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final setPchain(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1912
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPchainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1948
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1952
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->pchain_:Ljava/lang/Object;

    .line 1953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1294
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method

.method public final setTid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTidBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 1496
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1500
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->tid_:Ljava/lang/Object;

    .line 1501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 0

    .line 2424
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    return-object p1
.end method
