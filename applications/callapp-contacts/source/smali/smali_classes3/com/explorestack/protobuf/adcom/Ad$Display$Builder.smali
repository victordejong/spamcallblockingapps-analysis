.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;"
    }
.end annotation


# instance fields
.field private adm_:Ljava/lang/Object;

.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

.field private bitField0_:I

.field private curl_:Ljava/lang/Object;

.field private eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

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

.field private h_:I

.field private hratio_:I

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w_:I

.field private wratio_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17991
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 18328
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    const-string v0, ""

    .line 18954
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19048
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 19909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 17992
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 17997
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 18328
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    const-string p1, ""

    .line 18954
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19048
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 19909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 17998
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 17973
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 17973
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>()V

    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 18461
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 18462
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18463
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .line 19446
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 19447
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 19448
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 19911
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 19912
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 19913
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMimeIsMutable()V
    .locals 2

    .line 18330
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 18331
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18332
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTypeIsMutable()V
    .locals 2

    .line 18627
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 18628
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18629
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19279
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19280
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    .line 19283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 19285
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19287
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17979
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19743
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19744
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 19748
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 19749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 19750
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 19752
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 19897
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19898
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19900
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 19901
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19902
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 19903
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19905
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 20208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20209
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 20213
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 20214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 20215
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 20217
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19432
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19433
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19435
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v1

    .line 19436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 19438
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19440
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 18002
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18003
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18004
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllApi(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 18539
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18540
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 18541
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18543
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllApiValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 18616
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18617
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18618
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18620
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllEvent(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19622
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19623
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19624
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 19626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19628
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 20087
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20088
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20089
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 20091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20093
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 18420
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18421
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllType(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 18705
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18706
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    .line 18707
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18709
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllTypeValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 18782
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18783
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18784
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18786
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18523
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18525
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18526
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApiValue(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18602
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18603
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19605
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19606
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19609
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19565
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19567
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19569
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19570
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19573
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19586
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19587
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19591
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19544
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19546
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19548
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19549
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19552
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 19714
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 19715
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 19714
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public final addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 19726
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 19727
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 19726
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20069
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20070
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20071
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20074
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20030
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20032
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20034
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20035
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20038
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20051
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20052
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20053
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20056
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20011
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20013
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20014
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20017
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20179
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20180
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20179
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20191
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20192
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20191
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final addMime(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18404
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18406
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18407
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 18408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addMimeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18449
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18451
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15600(Lcom/explorestack/protobuf/ByteString;)V

    .line 18452
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18453
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 18454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18173
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final addType(Lcom/explorestack/protobuf/adcom/DisplayCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18691
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final addTypeValue(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18768
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18769
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 2

    .line 18074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    .line 18075
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18076
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 2

    .line 18083
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 18085
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 18086
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18087
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18089
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 18090
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 18091
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18092
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18094
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18095
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 18096
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18097
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18099
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14002(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18100
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14102(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18101
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14202(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18102
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14302(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18103
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14402(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18104
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14502(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18105
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14602(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18106
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 18107
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14702(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 18109
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14702(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 18111
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 18112
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_1

    .line 18114
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 18116
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 18117
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 18118
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18119
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18121
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 18123
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18125
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 18126
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15002(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 18128
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15002(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 18130
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 18131
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 18132
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18133
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18135
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15102(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 18137
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15102(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18139
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 18009
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 18010
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18011
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18012
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18013
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18014
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18015
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 18016
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 18018
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 18020
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 18022
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    const-string v0, ""

    .line 18024
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18026
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 18028
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 18029
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 18031
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 18032
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18034
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18035
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_1

    .line 18037
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 18038
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18040
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 18041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18042
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_2

    .line 18044
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 18046
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 18047
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 18049
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 18050
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18052
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 18053
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18054
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_4

    .line 18056
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public final clearAdm()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19024
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearApi()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18555
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 19232
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19233
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19236
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19237
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearCurl()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19114
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEvent()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19640
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 19642
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 19643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19645
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 19850
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19851
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19854
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19855
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20105
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 20107
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 20108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20110
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18156
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final clearH()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18867
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 18868
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHratio()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18949
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    .line 18950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMime()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18434
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18435
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 19385
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19386
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19389
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19390
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18161
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final clearType()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18721
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearW()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18826
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 18827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWratio()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 18908
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 18909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18145
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 2

    .line 18964
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18965
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18966
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 18968
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18969
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 18972
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 18985
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18986
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18987
    check-cast v0, Ljava/lang/String;

    .line 18988
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 18990
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 18993
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 18495
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 18485
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 18474
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18475
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 18578
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 18568
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 19158
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19159
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    :cond_0
    return-object v0

    .line 19161
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object v0
.end method

.method public final getBannerBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 19251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 19252
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object v0
.end method

.method public final getBannerOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;
    .locals 1

    .line 19262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19263
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;

    return-object v0

    .line 19265
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v0, :cond_1

    .line 19266
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getCurl()Ljava/lang/String;
    .locals 2

    .line 19057
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19058
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19059
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19061
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19062
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 19065
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19077
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19078
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19079
    check-cast v0, Ljava/lang/String;

    .line 19080
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19082
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 19085
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 18069
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18064
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 19491
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19492
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 19494
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public final getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 19675
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final getEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 19738
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEventCount()I
    .locals 1

    .line 19477
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19478
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 19480
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 19463
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19466
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 19686
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19687
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 19688
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public final getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19700
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19701
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19703
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 19776
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19777
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 19779
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 19869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 19870
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 19880
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19881
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 19883
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 19884
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 19956
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19957
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 19959
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 20140
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 20203
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 19942
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19943
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 19945
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

    .line 19928
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19929
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 19931
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 20151
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20152
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 20153
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

    .line 20165
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20168
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 18841
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    return v0
.end method

.method public final getHratio()I
    .locals 1

    .line 18923
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    return v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 18364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 18375
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 18354
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 18344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 17973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1

    .line 19311
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19312
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    :cond_0
    return-object v0

    .line 19314
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object v0
.end method

.method public final getNativeBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 1

    .line 19404
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 19405
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    return-object v0
.end method

.method public final getNativeOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;
    .locals 1

    .line 19415
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19416
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;

    return-object v0

    .line 19418
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v0, :cond_1

    .line 19419
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getType(I)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;
    .locals 2

    .line 18661
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    return-object p1
.end method

.method public final getTypeCount()I
    .locals 1

    .line 18651
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;"
        }
    .end annotation

    .line 18640
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18641
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getTypeValue(I)I
    .locals 1

    .line 18744
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getTypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 18734
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 18800
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    return v0
.end method

.method public final getWratio()I
    .locals 1

    .line 18882
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    return v0
.end method

.method public final hasBanner()Z
    .locals 1

    .line 19148
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

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

.method public final hasExt()Z
    .locals 1

    .line 19766
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasNative()Z
    .locals 1

    .line 19301
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

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

    .line 17985
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 17986
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19210
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19211
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v0, :cond_0

    .line 19213
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 19215
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19217
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 19219
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19828
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19829
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 19831
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 19833
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19835
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 19837
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

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18315
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18321
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18317
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Display;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18318
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

    .line 18321
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18323
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18177
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v0, :cond_0

    .line 18178
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1

    .line 18180
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 3

    .line 18186
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18187
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18188
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18189
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18190
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_0

    .line 18192
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 18195
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18197
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18198
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18199
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18200
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_1

    .line 18202
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18205
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18207
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18209
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18210
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_2

    .line 18212
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18213
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18215
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18217
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v0

    if-eqz v0, :cond_7

    .line 18218
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18220
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v0

    if-eqz v0, :cond_8

    .line 18221
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18223
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v0

    if-eqz v0, :cond_9

    .line 18224
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setWratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18226
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v0

    if-eqz v0, :cond_a

    .line 18227
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setHratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18229
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18230
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14500(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18233
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 18234
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14600(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 18235
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18237
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18238
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18240
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18241
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18243
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 18244
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 18245
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18246
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18247
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_3

    .line 18249
    :cond_f
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 18250
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18252
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_5

    .line 18255
    :cond_10
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 18256
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 18257
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 18258
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18259
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18260
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18262
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15200()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18263
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_11
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 18265
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18269
    :cond_13
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18270
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18272
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    .line 18273
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 18274
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 18275
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18276
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_6

    .line 18278
    :cond_15
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 18279
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18281
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_7

    .line 18284
    :cond_16
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 18285
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18286
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 18287
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18288
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18289
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18291
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15300()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18292
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_17
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 18294
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18298
    :cond_19
    :goto_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15400(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19363
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v0, :cond_0

    .line 19366
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_0

    .line 19368
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19370
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 19372
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 20228
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final removeEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19658
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19659
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19662
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20122
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20123
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20124
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20127
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAdm(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19010
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAdmBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19039
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19041
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15900(Lcom/explorestack/protobuf/ByteString;)V

    .line 19043
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApi(ILcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18507
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18509
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18510
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApiValue(II)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18589
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18590
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18591
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19193
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19194
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19197
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19172
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19176
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19179
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19098
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19101
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19130
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$16000(Lcom/explorestack/protobuf/ByteString;)V

    .line 19132
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19527
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19528
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19529
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19532
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19508
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19510
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 19511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19512
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19514
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19811
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19812
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19815
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19790
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19792
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19794
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 19795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19797
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19992
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19993
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 19994
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19997
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19971
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19973
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19975
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 19976
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19979
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18151
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final setH(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18853
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 18854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18935
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    .line 18936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMime(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18387
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18389
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18390
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18391
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19346
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19347
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19348
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19350
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19325
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19327
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19329
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 19330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19332
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18167
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final setType(ILcom/explorestack/protobuf/adcom/DisplayCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18673
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18675
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18676
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeValue(II)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18755
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18756
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17973
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 20222
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public final setW(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18812
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 18813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public final setWratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18894
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 18895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method
