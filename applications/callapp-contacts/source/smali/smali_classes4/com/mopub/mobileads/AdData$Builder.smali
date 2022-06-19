.class public final Lcom/mopub/mobileads/AdData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010>J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010>J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010?\u001a\u00020@J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010\tJ\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\tJ\u001a\u0010%\u001a\u00020\u00002\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020@J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010\tJ\u0010\u0010*\u001a\u00020\u00002\u0008\u0010*\u001a\u0004\u0018\u00010\tJ\u0010\u0010,\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\tJ\u000e\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013J\u0010\u00100\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010/J\u000e\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0004J\u0010\u0010C\u001a\u00020\u00002\u0008\u00107\u001a\u0004\u0018\u00010\tJ\u0018\u0010;\u001a\u00020\u00002\u0010\u0010D\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010:\u0018\u000109R$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\"\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR$\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0007R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u000cR\"\u0010 \u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u000cR\"\u0010\"\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000cR6\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\"\u0010(\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u000cR\"\u0010*\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u000cR\"\u0010,\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u000cR\u001e\u0010.\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0016R\"\u00100\u001a\u0004\u0018\u00010/2\u0008\u0010\u0003\u001a\u0004\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u001e\u00103\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001dR\u001e\u00105\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u001dR\"\u00107\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u000cR.\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u0001092\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020:\u0018\u000109@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010=\u00a8\u0006E"
    }
    d2 = {
        "Lcom/mopub/mobileads/AdData$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "adHeight",
        "getAdHeight",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "",
        "adPayload",
        "getAdPayload",
        "()Ljava/lang/String;",
        "adType",
        "getAdType",
        "adUnit",
        "getAdUnit",
        "adWidth",
        "getAdWidth",
        "",
        "allowCustomClose",
        "getAllowCustomClose",
        "()Z",
        "",
        "broadcastIdentifier",
        "getBroadcastIdentifier",
        "()J",
        "currencyAmount",
        "getCurrencyAmount",
        "()I",
        "currencyName",
        "getCurrencyName",
        "customerId",
        "getCustomerId",
        "dspCreativeId",
        "getDspCreativeId",
        "",
        "extras",
        "getExtras",
        "()Ljava/util/Map;",
        "fullAdType",
        "getFullAdType",
        "impressionMinVisibleDips",
        "getImpressionMinVisibleDips",
        "impressionMinVisibleMs",
        "getImpressionMinVisibleMs",
        "isRewarded",
        "Lcom/mopub/common/CreativeOrientation;",
        "orientation",
        "getOrientation",
        "()Lcom/mopub/common/CreativeOrientation;",
        "rewardedDurationSeconds",
        "getRewardedDurationSeconds",
        "timeoutDelayMillis",
        "getTimeoutDelayMillis",
        "vastVideoConfigString",
        "getVastVideoConfigString",
        "",
        "Lcom/mopub/common/ViewabilityVendor;",
        "viewabilityVendors",
        "getViewabilityVendors",
        "()Ljava/util/Set;",
        "(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;",
        "build",
        "Lcom/mopub/mobileads/AdData;",
        "fromAdData",
        "adData",
        "vastVideoConfig",
        "vendors",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mopub/common/CreativeOrientation;

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 88
    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    const/16 v0, 0x1e

    .line 102
    iput v0, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return-void
.end method


# virtual methods
.method public final adHeight(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 163
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    const-string v0, "adPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 167
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final adUnit(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 165
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final adWidth(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 161
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 174
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    return-object v0
.end method

.method public final broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 132
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-wide p1, v0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    return-object v0
.end method

.method public final build()Lcom/mopub/mobileads/AdData;
    .locals 2

    .line 183
    new-instance v0, Lcom/mopub/mobileads/AdData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdData;-><init>(Lcom/mopub/mobileads/AdData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final currencyAmount(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput p1, v0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    return-object v0
.end method

.method public final currencyName(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 157
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final customerId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/mobileads/AdData$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final fromAdData(Lcom/mopub/mobileads/AdData;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 3

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    .line 186
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    .line 188
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    .line 189
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getTimeoutDelayMillis()I

    move-result v1

    iput v1, v0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    .line 190
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    .line 195
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    .line 196
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    iput v1, v0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    .line 197
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCurrencyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCurrencyAmount()I

    move-result v1

    iput v1, v0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    .line 199
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdWidth()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    .line 200
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    .line 201
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    .line 206
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object v0
.end method

.method public final fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 169
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdHeight()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAdPayload()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdUnit()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdWidth()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAllowCustomClose()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->t:Z

    return v0
.end method

.method public final getBroadcastIdentifier()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/mopub/mobileads/AdData$Builder;->c:J

    return-wide v0
.end method

.method public final getCurrencyAmount()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->m:I

    return v0
.end method

.method public final getCurrencyName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final getFullAdType()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleDips()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleMs()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()Lcom/mopub/common/CreativeOrientation;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method

.method public final getRewardedDurationSeconds()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return v0
.end method

.method public final getTimeoutDelayMillis()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    return v0
.end method

.method public final getVastVideoConfigString()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewabilityVendors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object v0
.end method

.method public final impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    .line 138
    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    .line 142
    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final isRewarded(Z)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 152
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    return-object v0
.end method

.method public final isRewarded()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData$Builder;->j:Z

    return v0
.end method

.method public final orientation(Lcom/mopub/common/CreativeOrientation;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->b:Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method

.method public final rewardedDurationSeconds(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput p1, v0, Lcom/mopub/mobileads/AdData$Builder;->k:I

    return-object v0
.end method

.method public final timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput p1, v0, Lcom/mopub/mobileads/AdData$Builder;->d:I

    return-object v0
.end method

.method public final vastVideoConfig(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 1

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/AdData$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/mobileads/AdData$Builder;"
        }
    .end annotation

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/AdData$Builder;

    if-eqz p1, :cond_0

    .line 179
    new-instance v1, Ljava/util/HashSet;

    check-cast p1, Ljava/lang/Iterable;

    const-string v2, "$this$filterNotNull"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-static {p1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 179
    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 178
    :goto_0
    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lcom/mopub/mobileads/AdData$Builder;->u:Ljava/util/Set;

    return-object v0
.end method
