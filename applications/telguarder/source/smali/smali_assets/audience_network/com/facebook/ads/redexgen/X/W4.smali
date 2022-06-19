.class public final Lcom/facebook/ads/redexgen/X/W4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AO;
.implements Lcom/facebook/ads/redexgen/X/Dx;
.implements Lcom/facebook/ads/redexgen/X/B7;
.implements Lcom/facebook/ads/redexgen/X/J0;
.implements Lcom/facebook/ads/redexgen/X/FS;
.implements Lcom/facebook/ads/redexgen/X/HC;
.implements Lcom/facebook/ads/redexgen/X/Bo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ai;,
        Lcom/facebook/ads/redexgen/X/Ah;,
        Lcom/facebook/ads/redexgen/X/Ag;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AT;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/Ae;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ah;

.field public final A03:Lcom/facebook/ads/redexgen/X/I0;

.field public final A04:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W4;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/AT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63150
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 63151
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:Lcom/facebook/ads/redexgen/X/I0;

    .line 63152
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 63153
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ah;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ah;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    .line 63154
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    .line 63155
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 63156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A04()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W4;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 63157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A05()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W4;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 63158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A06()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W4;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/Aj;
    .locals 1

    .line 63159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A07()Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W4;->A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;
    .locals 15
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63160
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63161
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A03:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->A54()J

    move-result-wide v4

    .line 63162
    .local v0, "realtimeMs":J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A69()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v6

    .line 63163
    .local v6, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6A()I

    move-result v0

    move-object/from16 v8, p2

    move/from16 v7, p1

    if-ne v7, v0, :cond_2

    .line 63164
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63165
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 63166
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A64()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 63167
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A65()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    if-ne v2, v0, :cond_0

    .line 63168
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A67()J

    move-result-wide v9

    .line 63169
    .local v0, "eventPositionMs":J
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A5l()J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A62()J

    move-result-wide v2

    sub-long/2addr v13, v2

    .line 63170
    .local v2, "bufferedDurationMs":J
    new-instance v3, Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    .line 63171
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A67()J

    move-result-wide v11

    .end local v6    # "timeline":Lcom/facebook/ads/redexgen/X/Af;
    .local v9, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(JLcom/facebook/ads/redexgen/X/Af;ILcom/facebook/ads/redexgen/X/FC;JJJ)V

    .line 63172
    return-object v3

    .line 63173
    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 63174
    .end local v7
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A62()J

    move-result-wide v9

    .restart local v7
    goto :goto_0

    .line 63175
    .end local v7
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v0

    if-ge v7, v0, :cond_3

    if-eqz v8, :cond_4

    .line 63176
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63177
    .end local v7
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 63178
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A00()J

    move-result-wide v9

    .restart local v7
    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Ai;)Lcom/facebook/ads/redexgen/X/Aj;
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Ai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63179
    if-nez p1, :cond_0

    .line 63180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AT;->A6A()I

    move-result v1

    .line 63181
    .local p0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ah;->A08(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v0

    .line 63182
    .local p1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0

    .line 63183
    .end local p0    # "windowIndex":I
    .end local p1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ai;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JdUvEXdJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4s67WYqva0NUN5aBmKXsVFjqIuEaNjlM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aBB6tVc2XWuo7p00Yf6W9hKf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eTljv2UD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iU4afbAhfrsSSSHl9aSdcqb3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8JBZWrh9X8CXvA5YqezPqvI1LAqUu4hw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FINeirAFQxhv9qtHYSnMhlemx2jjnujo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 63184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63186
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0A()V

    .line 63187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63188
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onSeekStarted(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63189
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63190
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 3

    .line 63191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    .line 63192
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A01(Lcom/facebook/ads/redexgen/X/Ah;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63193
    .local p0, "activeMediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    .line 63194
    .local v1, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ai;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/W4;->AAo(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 63195
    .end local v1    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    goto :goto_0

    .line 63196
    :cond_0
    return-void
.end method

.method public final A9S(Ljava/lang/String;JJ)V
    .locals 8

    .line 63197
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63198
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63199
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v4, 0x1

    move-wide v6, p4

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/Aj;ILjava/lang/String;J)V

    .line 63200
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63201
    :cond_0
    return-void
.end method

.method public final A9T(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 6

    .line 63202
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 63203
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "G"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63204
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v5, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 63205
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63206
    :cond_1
    return-void
.end method

.method public final A9U(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 63207
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63208
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63209
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 63210
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63211
    :cond_0
    return-void
.end method

.method public final A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 6

    .line 63212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 63213
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "GLOrvmxqQBlWMDAfutpWjYY7Q2r6cPlF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63214
    .local v4, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x1

    invoke-interface {v1, v4, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 63215
    .end local v4    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63216
    :cond_1
    return-void
.end method

.method public final A9W(I)V
    .locals 6

    .line 63217
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 63218
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "tOXhUb2LFoGTCPQ1VNpHSp13w2EPvTrE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63219
    .local v4, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v4, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onAudioSessionId(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 63220
    .end local v4    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63221
    :cond_1
    return-void
.end method

.method public final A9X(IJJ)V
    .locals 9

    .line 63222
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63223
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63224
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move-wide v7, p4

    move-wide v5, p2

    move v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ak;->onAudioUnderrun(Lcom/facebook/ads/redexgen/X/Aj;IJJ)V

    .line 63225
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63226
    :cond_0
    return-void
.end method

.method public final A9Z(IJJ)V
    .locals 2

    .line 63227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A01()Lcom/facebook/ads/redexgen/X/Aj;

    .line 63228
    .local v1, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63229
    .local p7, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p7
    goto :goto_0

    .line 63230
    :cond_0
    return-void
.end method

.method public final A9x(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63231
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63232
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63233
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onDownstreamFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 63234
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63235
    :cond_0
    return-void
.end method

.method public final A9y()V
    .locals 6

    .line 63236
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v5

    .line 63237
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "GhcPxfhvkF5rVjlt0D91u7XaS27Vsfli"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63238
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v5}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysLoaded(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63239
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63240
    :cond_1
    return-void
.end method

.method public final A9z()V
    .locals 3

    .line 63241
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63242
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63243
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysRemoved(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63244
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63245
    :cond_0
    return-void
.end method

.method public final AA0()V
    .locals 3

    .line 63246
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63247
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63248
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmKeysRestored(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63249
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63250
    :cond_0
    return-void
.end method

.method public final AA1(Ljava/lang/Exception;)V
    .locals 3

    .line 63251
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63252
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63253
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDrmSessionManagerError(Lcom/facebook/ads/redexgen/X/Aj;Ljava/lang/Exception;)V

    .line 63254
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63255
    :cond_0
    return-void
.end method

.method public final AA2(IJ)V
    .locals 3

    .line 63256
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63257
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63258
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onDroppedVideoFrames(Lcom/facebook/ads/redexgen/X/Aj;IJ)V

    .line 63259
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63260
    :cond_0
    return-void
.end method

.method public final AAZ(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63261
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 63262
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63263
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63264
    :cond_0
    return-void
.end method

.method public final AAb(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63265
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 63266
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63267
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63268
    :cond_0
    return-void
.end method

.method public final AAe(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63269
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63270
    .local v7, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63271
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move v7, p6

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onLoadError(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V

    .line 63272
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63273
    :cond_0
    return-void
.end method

.method public final AAg(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63274
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    .line 63275
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63276
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63277
    :cond_0
    return-void
.end method

.method public final AAi(Z)V
    .locals 3

    .line 63278
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63279
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63280
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onLoadingChanged(Lcom/facebook/ads/redexgen/X/Aj;Z)V

    .line 63281
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63282
    :cond_0
    return-void
.end method

.method public final AAn(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 3

    .line 63283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0C(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 63284
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63285
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63286
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onMediaPeriodCreated(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63287
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63288
    :cond_0
    return-void
.end method

.method public final AAo(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 3

    .line 63289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0D(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 63290
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63291
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63292
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onMediaPeriodReleased(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63293
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63294
    :cond_0
    return-void
.end method

.method public final AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 63295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63296
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63297
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onMetadata(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 63298
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63299
    :cond_0
    return-void
.end method

.method public final AB7(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 3

    .line 63300
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63301
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63302
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPlaybackParametersChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/AL;)V

    .line 63303
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63304
    :cond_0
    return-void
.end method

.method public final AB9(Lcom/facebook/ads/redexgen/X/A0;)V
    .locals 3

    .line 63305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63306
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63307
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPlayerError(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/redexgen/X/A0;)V

    .line 63308
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63309
    :cond_0
    return-void
.end method

.method public final ABB(ZI)V
    .locals 6

    .line 63310
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 63311
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "qcZCXdho"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ABTCD8Pt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63312
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/Ak;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/Aj;ZI)V

    .line 63313
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63314
    :cond_1
    return-void
.end method

.method public final ABD(I)V
    .locals 3

    .line 63315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A0B(I)V

    .line 63316
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63317
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63318
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onPositionDiscontinuity(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 63319
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63320
    :cond_0
    return-void
.end method

.method public final ABM(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 6

    .line 63321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ah;->A0E(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 63322
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;->A04(ILcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 63323
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63324
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "Cc115v3idOh6y6ZXtoiAWPaC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "7mFmYmps2ATHO7N1g0LfymWT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/Ak;->onReadingStarted(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63325
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63326
    :cond_1
    return-void
.end method

.method public final ABQ(Landroid/view/Surface;)V
    .locals 3

    .line 63327
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63328
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63329
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onRenderedFirstFrame(Lcom/facebook/ads/redexgen/X/Aj;Landroid/view/Surface;)V

    .line 63330
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63331
    :cond_0
    return-void
.end method

.method public final ABa()V
    .locals 3

    .line 63332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A09()V

    .line 63334
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63335
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63336
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ak;->onSeekProcessed(Lcom/facebook/ads/redexgen/X/Aj;)V

    .line 63337
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63338
    .end local p0    # "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    :cond_0
    return-void
.end method

.method public final ABo(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;I)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:Lcom/facebook/ads/redexgen/X/Ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A0F(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 63340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v2

    .line 63341
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63342
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/Ak;->onTimelineChanged(Lcom/facebook/ads/redexgen/X/Aj;I)V

    .line 63343
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63344
    :cond_0
    return-void
.end method

.method public final ABp(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V
    .locals 6

    .line 63345
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v4

    .line 63346
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ak;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63347
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A05:[Ljava/lang/String;

    const-string v1, "3D88EXlj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YKqjednk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/Ak;->onTracksChanged(Lcom/facebook/ads/redexgen/X/Aj;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 63348
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63349
    :cond_1
    return-void
.end method

.method public final ABx(Ljava/lang/String;JJ)V
    .locals 8

    .line 63350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63351
    .local v3, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63352
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v4, 0x2

    move-wide v6, p4

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/Aj;ILjava/lang/String;J)V

    .line 63353
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63354
    :cond_0
    return-void
.end method

.method public final ABy(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 63355
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A00()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63356
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63357
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 63358
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63359
    :cond_0
    return-void
.end method

.method public final ABz(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 4

    .line 63360
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A02()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63361
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63362
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/redexgen/X/Ba;)V

    .line 63363
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63364
    :cond_0
    return-void
.end method

.method public final AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 4

    .line 63365
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63366
    .local p0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63367
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Ak;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/Aj;ILcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 63368
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63369
    :cond_0
    return-void
.end method

.method public final AC7(IIIF)V
    .locals 8

    .line 63370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A03()Lcom/facebook/ads/redexgen/X/Aj;

    move-result-object v3

    .line 63371
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Aj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ak;

    .line 63372
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Ak;
    move v7, p4

    move v6, p3

    move v5, p2

    move v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ak;->onVideoSizeChanged(Lcom/facebook/ads/redexgen/X/Aj;IIIF)V

    .line 63373
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Ak;
    goto :goto_0

    .line 63374
    :cond_0
    return-void
.end method
