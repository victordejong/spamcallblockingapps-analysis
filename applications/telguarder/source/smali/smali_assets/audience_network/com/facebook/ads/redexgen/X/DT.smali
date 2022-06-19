.class public final Lcom/facebook/ads/redexgen/X/DT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Us;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/DM;

.field public final A06:Lcom/facebook/ads/redexgen/X/IL;

.field public final A07:Lcom/facebook/ads/redexgen/X/IY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DM;Lcom/facebook/ads/redexgen/X/IY;)V
    .locals 2

    .line 27175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27176
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/DM;

    .line 27177
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/IY;

    .line 27178
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    .line 27179
    return-void
.end method

.method private A00()V
    .locals 3

    .line 27180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:Z

    .line 27182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A02:Z

    .line 27183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    .line 27185
    return-void
.end method

.method private A01()V
    .locals 10

    .line 27186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:J

    .line 27187
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A03:Z

    if-eqz v0, :cond_1

    .line 27188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    .line 27190
    .local v0, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 27192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 27194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27195
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A04:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A02:Z

    if-eqz v0, :cond_0

    .line 27196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    .line 27198
    .local p0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 27200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 27202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 27203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/IY;->A08(J)J

    .line 27204
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/DT;->A04:Z

    .line 27205
    .end local p0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A07:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;->A08(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:J

    .line 27206
    .end local v0    # "pts":J
    :cond_1
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 27207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A04:Z

    .line 27208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DM;->ADW()V

    .line 27209
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 27210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 27211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 27212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A00()V

    .line 27213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 27214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 27215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DT;->A01()V

    .line 27216
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/DM;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DT;->A01:J

    const/4 v0, 0x1

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DM;->ACJ(JZ)V

    .line 27217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DM;->A45(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 27218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DT;->A05:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DM;->ACI()V

    .line 27219
    return-void
.end method
