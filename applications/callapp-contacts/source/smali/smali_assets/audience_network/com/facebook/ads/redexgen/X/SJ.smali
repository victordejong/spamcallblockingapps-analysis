.class public abstract Lcom/facebook/ads/redexgen/X/SJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KD;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardcodedIPAddressUse"
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Landroid/os/Handler;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/0s;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/KE;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final A0J:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/0n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/0n;

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/8w;

.field public A06:Lcom/facebook/ads/redexgen/X/KB;

.field public A07:Lcom/facebook/ads/redexgen/X/0o;

.field public final A08:Lcom/facebook/ads/redexgen/X/1m;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/0s;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KE;

.field public final A0C:Lcom/facebook/ads/redexgen/X/XJ;

.field public volatile A0D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 52134
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SJ;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SJ;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A02()V

    .line 52135
    const-class v0, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0J:Ljava/lang/String;

    .line 52136
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0G:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 5

    .line 52137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A04:J

    .line 52139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A03:Ljava/lang/String;

    .line 52140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52141
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    .line 52142
    sget-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0I:Lcom/facebook/ads/redexgen/X/KE;

    if-eqz v0, :cond_1

    .line 52143
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    .line 52144
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KE;->A0R(Lcom/facebook/ads/redexgen/X/KD;)V

    .line 52145
    sget-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0H:Lcom/facebook/ads/redexgen/X/0s;

    if-eqz v0, :cond_0

    .line 52146
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0A:Lcom/facebook/ads/redexgen/X/0s;

    .line 52147
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 52148
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0A:Lcom/facebook/ads/redexgen/X/0s;

    goto :goto_1

    .line 52149
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    goto :goto_0

    .line 52150
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 52151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_2

    .line 52152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto :goto_3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52153
    :catch_0
    move-exception v4

    .line 52154
    .local p0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/SJ;->A0J:Ljava/lang/String;

    const/16 v2, 0x30

    const/16 v1, 0x23

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52155
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 52156
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 52157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X()V

    .line 52158
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SJ;Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/8w;
    .locals 0

    .line 52159
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A05:Lcom/facebook/ads/redexgen/X/8w;

    return-object p1
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SJ;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 13

    .line 52160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 52161
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SJ;->A05:Lcom/facebook/ads/redexgen/X/8w;

    .line 52162
    .local p0, "currentPlacement":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8w;->A04()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v3

    .line 52163
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/8u;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_0

    .line 52164
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v5

    .line 52165
    .local v4, "error":Lcom/facebook/ads/redexgen/X/Jl;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 52167
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x53

    const/16 v1, 0x16

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52169
    return-void

    .line 52170
    .end local v4    # "error":Lcom/facebook/ads/redexgen/X/Jl;
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8u;->A03()Ljava/lang/String;

    move-result-object v6

    .line 52171
    .local v3, "adapterName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0A:Lcom/facebook/ads/redexgen/X/0s;

    .line 52172
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v2

    .line 52173
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-nez v2, :cond_1

    .line 52174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52175
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0P:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52176
    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52177
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0O()V

    .line 52178
    return-void

    .line 52179
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1m;->A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    .line 52180
    .local v1, "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0n;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 52181
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v5

    .line 52182
    .restart local v4    # "error":Lcom/facebook/ads/redexgen/X/Jl;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52183
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 52184
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x69

    const/16 v1, 0x13

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52186
    return-void

    .line 52187
    .end local v4    # "error":Lcom/facebook/ads/redexgen/X/Jl;
    :cond_2
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 52188
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v9

    .line 52189
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8u;->A05()Lorg/json/JSONObject;

    move-result-object v8

    .line 52190
    .local v0, "dataObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_6

    .line 52191
    const/16 v7, 0xe2

    const/16 v6, 0xa

    sget-object v5, Lcom/facebook/ads/redexgen/X/SJ;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v5, v0

    const/4 v0, 0x5

    aget-object v5, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v5, Lcom/facebook/ads/redexgen/X/SJ;->A0F:[Ljava/lang/String;

    const-string v1, "xCRhnlDAhS4MFpckcT"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, "gHgyVSON2W8zeI"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/16 v0, 0x4b

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52192
    .local v5, "requestId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->ADs(Ljava/lang/String;)V

    .line 52193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8D;->A08(Ljava/lang/String;)V

    .line 52194
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 52195
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/XK;
    if-eqz v0, :cond_3

    .line 52196
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8D;->A08(Ljava/lang/String;)V

    .line 52197
    :cond_3
    const/16 v5, 0xc5

    const/16 v1, 0x11

    const/16 v0, 0x27

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0E(Lorg/json/JSONObject;)V

    .line 52198
    .end local v5    # "requestId":Ljava/lang/String;
    .end local v0    # "sdkContext":Lcom/facebook/ads/redexgen/X/XK;
    new-instance v7, Lcom/facebook/ads/redexgen/X/1n;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 52199
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v11

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/1n;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;J)V

    .line 52200
    .local v5, "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A06:Lcom/facebook/ads/redexgen/X/KB;

    if-nez v0, :cond_4

    .line 52201
    const/16 v2, 0xb1

    const/16 v1, 0x14

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v3

    .line 52202
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v2

    .line 52203
    .local v5, "error":Lcom/facebook/ads/redexgen/X/Jl;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52205
    return-void

    .line 52206
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v5    # "error":Lcom/facebook/ads/redexgen/X/Jl;
    :cond_4
    invoke-virtual {p0, v2, v4, v3, v7}, Lcom/facebook/ads/redexgen/X/SJ;->A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 52207
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52208
    .end local v5
    :cond_6
    const/16 v2, 0x93

    const/16 v1, 0x12

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v3

    .line 52209
    .local v5, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v2

    .line 52210
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Jl;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52212
    return-void
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xec

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x6et
        0x6bt
        0x7at
        0x7et
        0x6ft
        0x78t
        0x2at
        0x6et
        0x65t
        0x6ft
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6ft
        0x72t
        0x63t
        0x79t
        0x7et
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x60t
        0x61t
        0x2ft
        0x7ct
        0x7bt
        0x6et
        0x7dt
        0x7bt
        0x4et
        0x6bt
        0x3et
        0x19t
        0x11t
        0x14t
        0x1dt
        0x1ct
        0x58t
        0xct
        0x17t
        0x58t
        0x11t
        0x16t
        0x11t
        0xct
        0x11t
        0x19t
        0x14t
        0x11t
        0x2t
        0x1dt
        0x58t
        0x3bt
        0x17t
        0x17t
        0x13t
        0x11t
        0x1dt
        0x35t
        0x19t
        0x16t
        0x19t
        0x1ft
        0x1dt
        0xat
        0x56t
        0x22t
        0x3t
        0x4ct
        0x1t
        0x3t
        0x1et
        0x9t
        0x4ct
        0xdt
        0x8t
        0x4ct
        0xft
        0xdt
        0x2t
        0x8t
        0x5t
        0x8t
        0xdt
        0x18t
        0x9t
        0x1ft
        0x42t
        0x58t
        0x7dt
        0x60t
        0x61t
        0x68t
        0x2ft
        0x6et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x7bt
        0x76t
        0x7ft
        0x6at
        0x21t
        0x2at
        0x2ft
        0x6bt
        0x2at
        0x27t
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x38t
        0x3ft
        0x2at
        0x39t
        0x3ft
        0x2et
        0x2ft
        0x4ct
        0x5dt
        0x44t
        0x2ct
        0x3bt
        0x5bt
        0x5et
        0x4bt
        0x5et
        0x70t
        0x5dt
        0x55t
        0x5at
        0x5ct
        0x4bt
        0x1ft
        0x56t
        0x4ct
        0x1ft
        0x51t
        0x4at
        0x53t
        0x53t
        0x30t
        0x3bt
        0x36t
        0x27t
        0x2ct
        0x25t
        0x21t
        0x30t
        0x31t
        0xat
        0x3ct
        0x31t
        0x1ct
        0x17t
        0xft
        0x10t
        0xbt
        0x16t
        0x17t
        0x14t
        0x1ct
        0x17t
        0xdt
        0x59t
        0x10t
        0xat
        0x59t
        0x1ct
        0x14t
        0x9t
        0xdt
        0x0t
        0x49t
        0x5dt
        0x4at
        0x5et
        0x5at
        0x4at
        0x41t
        0x4ct
        0x56t
        0x70t
        0x4ct
        0x4et
        0x5ft
        0x5ft
        0x46t
        0x41t
        0x48t
        0x42t
        0x41t
        0x4ft
        0x4at
        0x71t
        0x5at
        0x47t
        0x43t
        0x4bt
        0x71t
        0x43t
        0x5dt
        0x31t
        0x26t
        0x32t
        0x36t
        0x26t
        0x30t
        0x37t
        0x1ct
        0x2at
        0x27t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bLneqHgNlbzxjE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YyJRdl3XxpBTstTmsw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SJ;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/SJ;)V
    .locals 0

    .line 52213
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A09()V

    return-void
.end method

.method private final A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4a(Z)V

    .line 52215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A04:J

    .line 52216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_1

    .line 52217
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52218
    return-void

    .line 52219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52220
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jr;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jw;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Jm; {:try_start_0 .. :try_end_0} :catch_0

    .line 52221
    .local p0, "bidPayload":Lcom/facebook/ads/redexgen/X/Jw;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52222
    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/1m;->A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Jw;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KB;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A06:Lcom/facebook/ads/redexgen/X/KB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SJ;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_2

    .line 52223
    sget-object v2, Lcom/facebook/ads/redexgen/X/SJ;->A0F:[Ljava/lang/String;

    const-string v1, "3q2wB1pMY3UXfOrLgu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CsXqAZILgfX2KA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A06:Lcom/facebook/ads/redexgen/X/KB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0Q(Lcom/facebook/ads/redexgen/X/KB;)V

    .line 52224
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52225
    .end local p0    # "bidPayload":Lcom/facebook/ads/redexgen/X/Jw;
    :catch_0
    move-exception v0

    .line 52226
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Jm;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A03(Lcom/facebook/ads/redexgen/X/Jm;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52227
    return-void
.end method

.method private A0E(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52228
    if-eqz p1, :cond_0

    .line 52229
    const/16 v2, 0xa5

    const/16 v1, 0xc

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A03:Ljava/lang/String;

    .line 52230
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0u;->A0H(Lorg/json/JSONObject;)V

    .line 52231
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0F()J
    .locals 2

    .line 52232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A05:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    .line 52233
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A03()J

    move-result-wide v0

    return-wide v0

    .line 52234
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0G()Landroid/os/Handler;
    .locals 1

    .line 52235
    sget-object v0, Lcom/facebook/ads/redexgen/X/SJ;->A0G:Landroid/os/Handler;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/8x;
    .locals 1

    .line 52236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A05:Lcom/facebook/ads/redexgen/X/8w;

    if-nez v0, :cond_0

    .line 52237
    const/4 v0, 0x0

    return-object v0

    .line 52238
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 52240
    const/4 v0, 0x0

    return-object v0

    .line 52241
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()V
    .locals 5

    .line 52242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A04:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2h(J)V

    .line 52243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 52244
    return-void

    .line 52245
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52246
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A04:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd6

    const/16 v1, 0xc

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    .line 52248
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A09:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 52249
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A08:Lcom/facebook/ads/redexgen/X/JI;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 52250
    return-void
.end method

.method public final A0K()V
    .locals 5

    .line 52251
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    const/16 v2, 0x8e

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    .line 52252
    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v3

    .line 52253
    .local p0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0F:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 52255
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52256
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52257
    .local v3, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52258
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c()V

    .line 52260
    return-void

    .line 52261
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0D:Z

    if-eqz v0, :cond_1

    .line 52262
    const/16 v2, 0x7c

    const/16 v1, 0x12

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v3

    .line 52263
    .restart local p0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52264
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0C:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 52265
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52266
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52267
    .restart local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4b()V

    .line 52270
    return-void

    .line 52271
    .end local p0    # "errorMessage":Ljava/lang/String;
    .end local v3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A09:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A5x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8m(Ljava/lang/String;)V

    .line 52273
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4d()V

    .line 52274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0D:Z

    .line 52275
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0N()V

    .line 52276
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 52277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0W(Z)V

    .line 52278
    return-void
.end method

.method public final A0M()V
    .locals 1

    .line 52279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A03:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52280
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0E(Ljava/lang/String;)V

    .line 52281
    :cond_0
    return-void
.end method

.method public abstract A0N()V
.end method

.method public final declared-synchronized A0O()V
    .locals 2

    monitor-enter p0

    .line 52282
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/SJ;->A0G:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SH;-><init>(Lcom/facebook/ads/redexgen/X/SJ;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52283
    monitor-exit p0

    return-void

    .line 52284
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 0

    .line 52285
    if-eqz p1, :cond_0

    .line 52286
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0n;->onDestroy()V

    .line 52287
    :cond_0
    return-void
.end method

.method public abstract A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/0o;)V
    .locals 0

    .line 52288
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    .line 52289
    return-void
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 4

    .line 52290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W()V

    .line 52291
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 52292
    .local p0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x91

    const/4 v1, 0x2

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52293
    .local p1, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A09:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 52295
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A04:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 52296
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    :cond_0
    return-void
.end method

.method public A0T(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 52298
    return-void
.end method

.method public final A0U(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52299
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0T(Ljava/lang/String;)V

    .line 52300
    return-void
.end method

.method public final A0V(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52301
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 52302
    return-void
.end method

.method public final A0W(Z)V
    .locals 1

    .line 52303
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0D:Z

    if-nez v0, :cond_0

    .line 52304
    return-void

    .line 52305
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4e()V

    .line 52306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/view/View;

    .line 52308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0D:Z

    .line 52309
    return-void
.end method

.method public final A0X()Z
    .locals 1

    .line 52310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A05:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized AA7(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 2

    monitor-enter p0

    .line 52311
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SI;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/SJ;Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52312
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52313
    monitor-exit p0

    return-void

    .line 52314
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ABk(Lcom/facebook/ads/redexgen/X/cP;)V
    .locals 2

    monitor-enter p0

    .line 52315
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SG;-><init>(Lcom/facebook/ads/redexgen/X/SJ;Lcom/facebook/ads/redexgen/X/cP;)V

    .line 52316
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52317
    monitor-exit p0

    return-void

    .line 52318
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
