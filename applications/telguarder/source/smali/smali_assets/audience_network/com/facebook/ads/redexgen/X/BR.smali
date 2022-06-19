.class public abstract Lcom/facebook/ads/redexgen/X/BR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2w;,
        Lcom/facebook/ads/redexgen/X/37;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/37;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/37;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/BS;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/37;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BR;->A0L()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23133
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:Ljava/util/ArrayDeque;

    .line 23134
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0xa

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 23135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/GL;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23137
    .end local p0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    .line 23138
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    .line 23139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2w;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/BR;Lcom/facebook/ads/redexgen/X/GL;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23141
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    .line 23142
    return-void
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SY95IGq6bDhaBo9gb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1VPnqim3qyqXt7UyIRUNghBPNpymm2Xr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DWL1DGZGoRhqBz7EIaAaf42Wqg8tdX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p8tWopLyMd6UPV6Z5vtEt6SFBHiYQUBi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u5VAdEhjh4xyQwND9avTqmbMSTq8Bk2H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A9shOJ7Gj71DwPe6B"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zMLrSOOElWd04z6f2Knk0KPoqX2l40c0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/37;)V
    .locals 1

    .line 23143
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 23144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23145
    return-void
.end method


# virtual methods
.method public abstract A0N()Lcom/facebook/ads/redexgen/X/GC;
.end method

.method public A0O()Lcom/facebook/ads/redexgen/X/BT;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23148
    const/4 v0, 0x0

    return-object v0

    .line 23149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23150
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    return-object v0
.end method

.method public A0P()Lcom/facebook/ads/redexgen/X/BS;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 23153
    return-object v5

    .line 23154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const-string v1, "NVaVDtZ4VOHDRcrGWr6OITE91rtuPrjN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "OZIFoWcXm8xM5ahyutenP8cZTguzGaFg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    .line 23155
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5

    .line 23156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/37;

    .line 23157
    .local p0, "inputBuffer":Lcom/facebook/ads/redexgen/X/37;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/BS;

    .line 23159
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/BS;
    const/4 v4, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23160
    .end local v0    # "outputBuffer":Lcom/facebook/ads/redexgen/X/BS;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/BR;->A0R(Lcom/facebook/ads/redexgen/X/BT;)V

    .line 23161
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0N()Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v7

    .line 23163
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/BS;

    .line 23165
    .restart local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/BS;->A09(JLcom/facebook/ads/redexgen/X/GC;J)V

    .line 23166
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23167
    return-object v4

    .line 23168
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    .end local v0
    :cond_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23169
    .end local p0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/37;
    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const-string v1, "yAI5AHy5KWIeIap3Bvry6mcEUlJWlq4T"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4adzrekHDmp4cJkq2vC85HfbdcVw5fe8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 23170
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23171
    return-object v5

    .line 23172
    :cond_5
    return-object v5
.end method

.method public A0Q(Lcom/facebook/ads/redexgen/X/BT;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 23173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 23174
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23176
    :goto_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A06:[Ljava/lang/String;

    const-string v1, "OeogOzHnPRdDmvzJE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4ZTJQcGZbQnp9vJSE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23177
    return-void

    .line 23178
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:J

    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/37;->A01(Lcom/facebook/ads/redexgen/X/37;J)J

    .line 23179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/BT;)V
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/BS;)V
    .locals 1

    .line 23181
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BS;->A07()V

    .line 23182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23183
    return-void
.end method

.method public abstract A0T()Z
.end method

.method public final bridge synthetic A4h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0O()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0P()Lcom/facebook/ads/redexgen/X/BS;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ACj(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23186
    check-cast p1, Lcom/facebook/ads/redexgen/X/BT;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0Q(Lcom/facebook/ads/redexgen/X/BT;)V

    return-void
.end method

.method public ACz()V
    .locals 0

    .line 23187
    return-void
.end method

.method public ADs(J)V
    .locals 0

    .line 23188
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:J

    .line 23189
    return-void
.end method

.method public flush()V
    .locals 2

    .line 23190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:J

    .line 23191
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:J

    .line 23192
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    goto :goto_0

    .line 23194
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    if-eqz v0, :cond_1

    .line 23195
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/37;)V

    .line 23196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:Lcom/facebook/ads/redexgen/X/37;

    .line 23197
    :cond_1
    return-void
.end method
