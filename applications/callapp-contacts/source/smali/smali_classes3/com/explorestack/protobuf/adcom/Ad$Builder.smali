.class public final Lcom/explorestack/protobuf/adcom/Ad$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/AdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/AdOrBuilder;"
    }
.end annotation


# instance fields
.field private adomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

.field private bitField0_:I

.field private bundle_:Lcom/explorestack/protobuf/LazyStringList;

.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

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

.field private id_:Ljava/lang/Object;

.field private init_:Ljava/lang/Object;

.field private iurl_:Ljava/lang/Object;

.field private lang_:Ljava/lang/Object;

.field private lastmod_:Ljava/lang/Object;

.field private mrating_:I

.field private secure_:Z

.field private videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private video_:Lcom/explorestack/protobuf/adcom/Ad$Video;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25851
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 26175
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26264
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26394
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26533
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26627
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 26757
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26822
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26949
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 27014
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27103
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 25852
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 25857
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 26175
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26264
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26394
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26533
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26627
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 26757
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26822
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26949
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 27014
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27103
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 25858
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 25833
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 25833
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;-><init>()V

    return-void
.end method

.method private ensureAdomainIsMutable()V
    .locals 2

    .line 26266
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 26267
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26268
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBundleIsMutable()V
    .locals 2

    .line 26396
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 26397
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26398
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCatIsMutable()V
    .locals 2

    .line 26629
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 26630
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26631
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 27771
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 27772
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 27773
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAuditFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit;",
            "Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27604
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27605
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v1

    .line 27608
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 27609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 27610
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27612
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25839
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27334
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27335
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27337
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v1

    .line 27338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 27339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 27340
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27342
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 27757
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27758
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 27761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 27762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 27763
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27765
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 28068
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 28069
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28073
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 28074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 28075
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 28077
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            "Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27487
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27488
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 27490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v1

    .line 27491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 27492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 27493
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27495
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 25862
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$20200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25863
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAdomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26342
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 26343
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 26344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAdomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26387
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22400(Lcom/explorestack/protobuf/ByteString;)V

    .line 26388
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 26389
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 26390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllAdomain(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 26356
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 26357
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 26359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllBundle(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 26493
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 26494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 26496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 26719
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 26720
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 26722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;"
        }
    .end annotation

    .line 27947
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27948
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27949
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27951
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27953
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26476
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26478
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 26479
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 26480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26524
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26526
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22500(Lcom/explorestack/protobuf/ByteString;)V

    .line 26527
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 26528
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 26529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCat(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26703
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26705
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 26706
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 26707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addCatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26750
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22700(Lcom/explorestack/protobuf/ByteString;)V

    .line 26751
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 26752
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 26753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27929
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27930
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27931
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27934
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27890
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27892
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27894
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27895
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27898
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27912
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27913
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27914
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27916
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27869
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27871
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27873
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27874
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27877
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28039
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28040
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28039
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 28051
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 28052
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 28051
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26034
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 2

    .line 25937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    .line 25938
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25939
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 2

    .line 25946
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 25948
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25949
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 25950
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25951
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25953
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 25954
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 25955
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25956
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25958
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 25959
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20702(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25960
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 25961
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25962
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25964
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 25965
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20902(Lcom/explorestack/protobuf/adcom/Ad;I)I

    .line 25966
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21002(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25967
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21102(Lcom/explorestack/protobuf/adcom/Ad;Z)Z

    .line 25968
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21202(Lcom/explorestack/protobuf/adcom/Ad;I)I

    .line 25969
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21302(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25970
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21402(Lcom/explorestack/protobuf/adcom/Ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25971
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 25972
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 25974
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21502(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 25976
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 25977
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_1

    .line 25979
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21602(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 25981
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 25982
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21702(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_2

    .line 25984
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21702(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 25986
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 25987
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 25989
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21802(Lcom/explorestack/protobuf/adcom/Ad;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 25991
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    .line 25992
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 25993
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 25994
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25996
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21902(Lcom/explorestack/protobuf/adcom/Ad;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 25998
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21902(Lcom/explorestack/protobuf/adcom/Ad;Ljava/util/List;)Ljava/util/List;

    .line 26000
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 25868
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 25869
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 25871
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25872
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25873
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25874
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 25875
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 25877
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25878
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 25879
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 25881
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 25883
    iput-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 25885
    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 25887
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 25889
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 25891
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25892
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 25894
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 25895
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25897
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25898
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_1

    .line 25900
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 25901
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25903
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 25904
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_2

    .line 25906
    :cond_2
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 25907
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25909
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 25910
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 25912
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25913
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25915
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 25916
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 25917
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_4

    .line 25919
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public final clearAdomain()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26370
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26371
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAudit()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 27569
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27570
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27573
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27574
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearBundle()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26508
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26509
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCat()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26733
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26734
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCattax()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 26817
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDisplay()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 27287
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27288
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27291
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27292
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 27710
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27711
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27714
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27715
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27965
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27966
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 27967
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 27968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27970
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26017
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26241
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearInit()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27080
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIurl()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26603
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLang()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26888
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26889
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLastmod()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27169
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMrating()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 27009
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 27010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26022
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final clearSecure()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 26944
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 26945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVideo()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 27440
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27441
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27444
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27445
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26006
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAdomain(I)Ljava/lang/String;
    .locals 1

    .line 26300
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getAdomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 26311
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getAdomainCount()I
    .locals 1

    .line 26290
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 26280
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdomainList()Ljava/util/List;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;
    .locals 1

    .line 27511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27512
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    :cond_0
    return-object v0

    .line 27514
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit;

    return-object v0
.end method

.method public final getAuditBuilder()Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;
    .locals 1

    .line 27584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27585
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getAuditFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    return-object v0
.end method

.method public final getAuditOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;
    .locals 1

    .line 27591
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27592
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$AuditOrBuilder;

    return-object v0

    .line 27594
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-nez v0, :cond_1

    .line 27595
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getBundle(I)Ljava/lang/String;
    .locals 1

    .line 26433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBundleBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 26445
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBundleCount()I
    .locals 1

    .line 26422
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 26411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getBundleList()Ljava/util/List;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getBundleList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCat(I)Ljava/lang/String;
    .locals 1

    .line 26663
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 26674
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCatCount()I
    .locals 1

    .line 26653
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 26643
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 26789
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26790
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 26766
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 25932
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25927
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 27213
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27214
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    :cond_0
    return-object v0

    .line 27216
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object v0
.end method

.method public final getDisplayBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 27306
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27307
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getDisplayFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object v0
.end method

.method public final getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;
    .locals 1

    .line 27317
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27318
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;

    return-object v0

    .line 27320
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v0, :cond_1

    .line 27321
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 27636
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27637
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 27639
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 27729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27730
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 27740
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27741
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 27743
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 27744
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 27816
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 27819
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 28000
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 28063
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 27802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27803
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 27805
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

    .line 27788
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27789
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 27791
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 28011
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 28012
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 28013
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

    .line 28025
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 28026
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28028
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 26184
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26185
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26186
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26188
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26189
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 26192
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26204
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26206
    check-cast v0, Ljava/lang/String;

    .line 26207
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26209
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 26212
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getInit()Ljava/lang/String;
    .locals 2

    .line 27023
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27024
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27025
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27027
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27028
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 27031
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInitBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 27043
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27044
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27045
    check-cast v0, Ljava/lang/String;

    .line 27046
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 27048
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    return-object v0

    .line 27051
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIurl()Ljava/lang/String;
    .locals 2

    .line 26543
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26544
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26545
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26547
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26548
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    return-object v0

    .line 26551
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26564
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26565
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26566
    check-cast v0, Ljava/lang/String;

    .line 26567
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26569
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    return-object v0

    .line 26572
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 2

    .line 26831
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26832
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26833
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 26835
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 26836
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 26839
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLangBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 26851
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26852
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26853
    check-cast v0, Ljava/lang/String;

    .line 26854
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 26856
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 26859
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLastmod()Ljava/lang/String;
    .locals 2

    .line 27112
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27113
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27114
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 27116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 27117
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 27120
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastmodBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 27132
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27133
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27134
    check-cast v0, Ljava/lang/String;

    .line 27135
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 27137
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    return-object v0

    .line 27140
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMrating()Lcom/explorestack/protobuf/adcom/MediaRating;
    .locals 1

    .line 26981
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/MediaRating;->valueOf(I)Lcom/explorestack/protobuf/adcom/MediaRating;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26982
    sget-object v0, Lcom/explorestack/protobuf/adcom/MediaRating;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/MediaRating;

    :cond_0
    return-object v0
.end method

.method public final getMratingValue()I
    .locals 1

    .line 26958
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    return v0
.end method

.method public final getSecure()Z
    .locals 1

    .line 26920
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    return v0
.end method

.method public final getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 27366
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27367
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    :cond_0
    return-object v0

    .line 27369
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object v0
.end method

.method public final getVideoBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 27459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 27460
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getVideoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    return-object v0
.end method

.method public final getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;
    .locals 1

    .line 27470
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27471
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;

    return-object v0

    .line 27473
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v0, :cond_1

    .line 27474
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final hasAudit()Z
    .locals 1

    .line 27505
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

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

.method public final hasDisplay()Z
    .locals 1

    .line 27203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

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

    .line 27626
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasVideo()Z
    .locals 1

    .line 27356
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

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

    .line 25845
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 25846
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27551
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27552
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    if-eqz v0, :cond_0

    .line 27554
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Audit;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    goto :goto_0

    .line 27556
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27558
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 27560
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27265
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27266
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v0, :cond_0

    .line 27268
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    goto :goto_0

    .line 27270
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27272
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 27274
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27688
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 27691
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 27693
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27695
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 27697
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

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

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

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26162
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$22200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 26168
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26164
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26165
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

    .line 26168
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26170
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26038
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    .line 26039
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1

    .line 26041
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 2

    .line 26047
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 26048
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26049
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26052
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26053
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26054
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26055
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_0

    .line 26057
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 26058
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20500(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26060
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26062
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 26063
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26064
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26065
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_1

    .line 26067
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 26068
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20600(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26070
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26072
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getIurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 26073
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20700(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26076
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26077
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26078
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26079
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_2

    .line 26081
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 26082
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20800(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 26084
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26086
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$20900(Lcom/explorestack/protobuf/adcom/Ad;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 26087
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getCattaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26089
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26090
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21000(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26091
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26093
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26094
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26096
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21200(Lcom/explorestack/protobuf/adcom/Ad;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 26097
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getMratingValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setMratingValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26099
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getInit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 26100
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21300(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 26101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26103
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getLastmod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26104
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21400(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 26105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    .line 26107
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 26108
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26110
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 26111
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26113
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasAudit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26114
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getAudit()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26116
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 26117
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26119
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 26120
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 26121
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 26122
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 26123
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    goto :goto_3

    .line 26125
    :cond_13
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 26126
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26128
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_4

    .line 26131
    :cond_14
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 26132
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 26133
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 26134
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 26135
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    .line 26136
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bitField0_:I

    .line 26138
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->access$22000()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 26139
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 26141
    :cond_16
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$21900(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 26145
    :cond_17
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22100(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    .line 26146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28088
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final mergeVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27419
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-eqz v0, :cond_0

    .line 27421
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    goto :goto_0

    .line 27423
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27425
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_1

    .line 27427
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27982
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27983
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27984
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27987
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAdomain(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26323
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26325
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureAdomainIsMutable()V

    .line 26326
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->adomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27538
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27539
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27542
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Audit$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Audit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAudit(Lcom/explorestack/protobuf/adcom/Ad$Audit;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27521
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->auditBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27523
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27525
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->audit_:Lcom/explorestack/protobuf/adcom/Ad$Audit;

    .line 27526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27528
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setBundle(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26458
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26460
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureBundleIsMutable()V

    .line 26461
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->bundle_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCat(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 26686
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26688
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureCatIsMutable()V

    .line 26689
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattax(Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26801
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26804
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26805
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCattaxValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26776
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->cattax_:I

    .line 26777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27248
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27249
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27252
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setDisplay(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27227
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->displayBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27231
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->display_:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 27232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27234
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27671
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27672
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27675
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27652
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27654
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27657
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27852
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27853
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27854
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27857
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27831
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27833
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27835
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->ensureExtProtoIsMutable()V

    .line 27836
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27839
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26012
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26228
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26255
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26257
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22300(Lcom/explorestack/protobuf/ByteString;)V

    .line 26259
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->id_:Ljava/lang/Object;

    .line 26260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setInit(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27064
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27067
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setInitBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27094
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27096
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22900(Lcom/explorestack/protobuf/ByteString;)V

    .line 27098
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->init_:Ljava/lang/Object;

    .line 27099
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26586
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26589
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26618
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26620
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22600(Lcom/explorestack/protobuf/ByteString;)V

    .line 26622
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->iurl_:Ljava/lang/Object;

    .line 26623
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26875
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLangBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26902
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26904
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$22800(Lcom/explorestack/protobuf/ByteString;)V

    .line 26906
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lang_:Ljava/lang/Object;

    .line 26907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLastmod(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27156
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLastmodBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 27183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27185
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad;->access$23000(Lcom/explorestack/protobuf/ByteString;)V

    .line 27187
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->lastmod_:Ljava/lang/Object;

    .line 27188
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMrating(Lcom/explorestack/protobuf/adcom/MediaRating;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26993
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26996
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/MediaRating;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 26997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMratingValue(I)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26968
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mrating_:I

    .line 26969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26028
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final setSecure(Z)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 26931
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->secure_:Z

    .line 26932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25833
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 0

    .line 28082
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object p1
.end method

.method public final setVideo(Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27401
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27402
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27405
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setVideo(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 27380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->videoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27382
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27384
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Builder;->video_:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 27385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->onChanged()V

    goto :goto_0

    .line 27387
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
