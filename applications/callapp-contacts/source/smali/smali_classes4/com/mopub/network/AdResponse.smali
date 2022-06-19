.class public Lcom/mopub/network/AdResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdResponse$Builder;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Lorg/json/JSONObject;

.field private final C:Ljava/lang/String;

.field private final D:Lcom/mopub/common/MoPub$BrowserAgent;

.field private final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final F:J

.field private final G:Z

.field private final H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/Integer;

.field private final k:Lcom/mopub/network/ImpressionData;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/Integer;

.field private final u:Ljava/lang/Integer;

.field private final v:Ljava/lang/Integer;

.field private final w:Ljava/lang/Integer;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mopub/network/AdResponse$Builder;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->a(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->a:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->b(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->b:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->c(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->c:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->d(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->d:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->e(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->e:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->f(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->f:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->g(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->g:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->h(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->h:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->i(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->i:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->j(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->j:Ljava/lang/Integer;

    .line 119
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->k(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/network/ImpressionData;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->k:Lcom/mopub/network/ImpressionData;

    .line 120
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->l(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->l:Ljava/util/List;

    .line 121
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->m(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->m:Ljava/util/List;

    .line 122
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->n(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->n:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->o(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->o:Ljava/util/List;

    .line 124
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->p(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->p:Ljava/util/List;

    .line 125
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->q(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->q:Ljava/util/List;

    .line 126
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->r(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->r:Ljava/util/List;

    .line 127
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->s(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->s:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->t(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->t:Ljava/lang/Integer;

    .line 129
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->u(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->u:Ljava/lang/Integer;

    .line 130
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->v(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->v:Ljava/lang/Integer;

    .line 131
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->w(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->w:Ljava/lang/Integer;

    .line 132
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->x(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->x:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->y(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->y:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->z(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->z:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->A(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->A:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->B(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->B:Lorg/json/JSONObject;

    .line 137
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->C(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->C:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->D(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->D:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 139
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->E(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->E:Ljava/util/Map;

    .line 140
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/network/AdResponse;->F:J

    .line 141
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->F(Lcom/mopub/network/AdResponse$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse;->G:Z

    .line 142
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->G(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/AdResponse;->H:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public allowCustomClose()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse;->G:Z

    return v0
.end method

.method public getAdGroupId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTimeoutMillis(I)Ljava/lang/Integer;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/mopub/network/AdResponse;->v:Ljava/lang/Integer;

    return-object p1

    .line 268
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAfterLoadFailUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->r:Ljava/util/List;

    return-object v0
.end method

.method public getAfterLoadSuccessUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->q:Ljava/util/List;

    return-object v0
.end method

.method public getAfterLoadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->p:Ljava/util/List;

    return-object v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getBeforeLoadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->o:Ljava/util/List;

    return-object v0
.end method

.method public getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->D:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method

.method public getClickTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->l:Ljava/util/List;

    return-object v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getFailoverUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionData()Lcom/mopub/network/ImpressionData;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->k:Lcom/mopub/network/ImpressionData;

    return-object v0
.end method

.method public getImpressionMinVisibleDips()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionMinVisibleMs()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->m:Ljava/util/List;

    return-object v0
.end method

.method public getJsonBody()Lorg/json/JSONObject;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->B:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTimeMillis()Ljava/lang/Integer;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->w:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedAdCompletionUrl()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedAdCurrencyAmount()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedAdCurrencyName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedCurrencies()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedDuration()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->E:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStringBody()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/mopub/network/AdResponse;->F:J

    return-wide v0
.end method

.method public getViewabilityVendors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->H:Ljava/util/Set;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasJson()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->B:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toBuilder()Lcom/mopub/network/AdResponse$Builder;
    .locals 3

    .line 327
    new-instance v0, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v0}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->a:Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->b:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdGroupId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->e:Ljava/lang/String;

    .line 330
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->f:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedAdCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->g:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedAdCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->h:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->i:Ljava/lang/String;

    .line 334
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedAdCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->j:Ljava/lang/Integer;

    .line 335
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/network/AdResponse;->G:Z

    .line 336
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->k:Lcom/mopub/network/ImpressionData;

    .line 337
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setImpressionData(Lcom/mopub/network/ImpressionData;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->l:Ljava/util/List;

    .line 338
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->m:Ljava/util/List;

    .line 339
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->n:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->o:Ljava/util/List;

    .line 341
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBeforeLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->p:Ljava/util/List;

    .line 342
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->q:Ljava/util/List;

    .line 343
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadSuccessUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->r:Ljava/util/List;

    .line 344
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadFailUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->t:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mopub/network/AdResponse;->u:Ljava/lang/Integer;

    .line 345
    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->v:Ljava/lang/Integer;

    .line 346
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->w:Ljava/lang/Integer;

    .line 347
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->x:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBannerImpressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->y:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBannerImpressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->z:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->A:Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->B:Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->C:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBaseAdClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->D:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 354
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/network/AdResponse;->G:Z

    .line 355
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->E:Ljava/util/Map;

    .line 356
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->H:Ljava/util/Set;

    .line 357
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setViewabilityVendors(Ljava/util/Set;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    return-object v0
.end method
