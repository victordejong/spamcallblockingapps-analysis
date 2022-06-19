.class public final Lcom/facebook/ads/redexgen/X/BF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BD;,
        Lcom/facebook/ads/internal/exoplayer2/audio/AudioTimestampPoller$State;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/BD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BF;->A00()V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 22151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22152
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 22153
    new-instance v0, Lcom/facebook/ads/redexgen/X/BD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/BD;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    .line 22154
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22155
    :goto_0
    return-void

    .line 22156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    .line 22157
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W1h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J3B5KCEbjjwmRuC3OBjGZe6Vqq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "m9qFzMc74R8svEUC9gqMjQn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jgNIoR8qAkaEc7us150M5yTFbz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3ys"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "w1u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bbeJnzocKvEAyVfPIveapdYFC3HTaXea"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5a1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 6

    .line 22158
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    .line 22159
    const-wide/16 v4, 0x1388

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 22160
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22161
    :goto_0
    return-void

    .line 22162
    :cond_0
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22163
    goto :goto_0

    .line 22164
    :cond_1
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22165
    goto :goto_0

    .line 22166
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    .line 22167
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    .line 22168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    .line 22169
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    .line 22170
    goto :goto_0

    .line 22171
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()J
    .locals 2

    .line 22172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final A03()J
    .locals 2

    .line 22173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A02()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A04()V
    .locals 2

    .line 22174
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 22175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22176
    :cond_0
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 22177
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    .line 22178
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 22179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v0, :cond_0

    .line 22180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    .line 22181
    :cond_0
    return-void
.end method

.method public final A07()Z
    .locals 3

    .line 22182
    iget v2, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A08()Z
    .locals 2

    .line 22183
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09(J)Z
    .locals 8

    .line 22184
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    if-eqz v5, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    sub-long v3, p1, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 22185
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/BF;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 22186
    :cond_1
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BF;->A03:J

    .line 22187
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/BD;->A03()Z

    move-result v7

    .line 22188
    .local p0, "updatedTimestamp":Z
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:I

    const/4 v6, 0x3

    const/4 v3, 0x1

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    if-eq v4, v3, :cond_5

    if-eq v4, v5, :cond_4

    if-eq v4, v6, :cond_b

    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const-string v1, "KBr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FWj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    goto :goto_0

    .line 22189
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 22190
    :cond_4
    if-nez v7, :cond_c

    .line 22191
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    goto :goto_0

    .line 22192
    :cond_5
    if-eqz v7, :cond_6

    .line 22193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v3

    .line 22194
    .local p1, "timestampPositionFrames":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_c

    .line 22195
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22196
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22197
    goto :goto_0

    .line 22198
    :cond_7
    if-eqz v7, :cond_a

    .line 22199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A02()J

    move-result-wide v4

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    cmp-long v0, v4, v1

    if-ltz v0, :cond_9

    .line 22200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A05:Lcom/facebook/ads/redexgen/X/BD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BD;->A01()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 22201
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/BF;->A06:[Ljava/lang/String;

    const-string v1, "X7O"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "dhv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22202
    :cond_9
    const/4 v7, 0x0

    goto :goto_0

    .line 22203
    :cond_a
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A02:J

    sub-long/2addr p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, p1, v1

    if-lez v0, :cond_c

    .line 22204
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/BF;->A01(I)V

    goto :goto_0

    .line 22205
    :cond_b
    if-eqz v7, :cond_c

    .line 22206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BF;->A06()V

    .line 22207
    :cond_c
    :goto_0
    return v7
.end method
