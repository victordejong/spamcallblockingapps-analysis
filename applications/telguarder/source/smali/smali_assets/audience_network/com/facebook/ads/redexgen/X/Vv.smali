.class public final Lcom/facebook/ads/redexgen/X/Vv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/BU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/nio/ByteBuffer;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ShortBuffer;

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vv;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62150
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    .line 62151
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    .line 62152
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    .line 62153
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    .line 62154
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    .line 62155
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    .line 62156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0B:Ljava/nio/ShortBuffer;

    .line 62157
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62158
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A04:I

    .line 62159
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZNKNst"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XmiBgSGXx12Lfi4wkrIgxt2drTdvHs26"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "12A3Q6XDQ5DDG7n56CSnPryuHFhLvKjZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZQF2IJ5j8J3kZMa2fNEEJiBHw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "189zcm2TknZWKb54ROmTuY1DvBrmK7D3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XhwiCpXkITZ5EU8df7hxcQ1r9sED17e7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tmyjftscLdFbTweJWboDza3yAXAEa9aV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C9QZicwbl9kvyX76Qa8QfR5eL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(F)F
    .locals 2

    .line 62160
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v1

    .line 62161
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 62162
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    .line 62163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 62164
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vv;->flush()V

    .line 62165
    return v1
.end method

.method public final A02(F)F
    .locals 4

    .line 62166
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v3

    .line 62167
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 62168
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62169
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "1ZUGRsBdNGJKF1FBcKRWKaW8u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8eSw678Jl0EQTd3ak6kr3qlH6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 62170
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vv;->flush()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    .line 62171
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "Q7uoG7bsDhGCV5S9YKegi2ur5gJFhG8v"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pdF2oIASAyFmybURrOUPeJGa1JlYwV1I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3
.end method

.method public final A03(J)J
    .locals 10

    .line 62172
    move-object v3, p0

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/Vv;->A07:J

    const-wide/16 v1, 0x400

    cmp-long v0, v8, v1

    move-wide v4, p1

    if-ltz v0, :cond_3

    .line 62173
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    iget v2, v3, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    if-ne v0, v2, :cond_0

    .line 62174
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "vXGeLWMSYw9JbkrcKw0rXpFu5NTmCjot"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    .line 62175
    :goto_0
    return-wide v0

    .line 62176
    :cond_0
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    int-to-long v0, v0

    mul-long/2addr v6, v0

    int-to-long v0, v2

    mul-long/2addr v8, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "s3M2v0okr0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "Lfm0wik77pNdVc8OCXk47rTIBvOzyNcZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62177
    :cond_3
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    float-to-double v2, v0

    long-to-double v0, v4

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A44(III)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 62178
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 62179
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A04:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 62180
    move v1, p1

    .line 62181
    .local p0, "outputSampleRateHz":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    if-ne v0, v1, :cond_1

    .line 62182
    const/4 v0, 0x0

    return v0

    .line 62183
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    .line 62184
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    .line 62185
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    .line 62186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 62187
    const/4 v0, 0x1

    return v0

    .line 62188
    .end local p0    # "outputSampleRateHz":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 62189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62190
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62191
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 62192
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 62193
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 62194
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    return v0
.end method

.method public final A7x()Z
    .locals 3

    .line 62195
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 62196
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    sub-float/2addr v0, v2

    .line 62197
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 62198
    :goto_0
    return v0

    .line 62199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A81()Z
    .locals 1

    .line 62200
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0I()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACh()V
    .locals 5

    .line 62201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62202
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A0D:[Ljava/lang/String;

    const-string v1, "GvtNq5672WWEOJowALzOEKEhqF5tipDU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BU;->A0K()V

    .line 62203
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0C:Z

    .line 62204
    return-void

    .line 62205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 62206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 62209
    .local p0, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 62210
    .local p1, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    .line 62211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/BU;->A0M(Ljava/nio/ShortBuffer;)V

    .line 62212
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62213
    .end local p0    # "shortBuffer":Ljava/nio/ShortBuffer;
    .end local p1    # "inputSize":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0I()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x2

    .line 62214
    .local p0, "outputSize":I
    if-lez v4, :cond_1

    .line 62215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 62216
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    .line 62217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0B:Ljava/nio/ShortBuffer;

    .line 62218
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BU;->A0L(Ljava/nio/ShortBuffer;)V

    .line 62219
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A07:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A07:J

    .line 62220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62222
    :cond_1
    return-void

    .line 62223
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 62225
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final flush()V
    .locals 6

    .line 62226
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vv;->A7x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-nez v0, :cond_1

    .line 62228
    new-instance v0, Lcom/facebook/ads/redexgen/X/BU;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BU;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 62229
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    .line 62231
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A07:J

    .line 62232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0C:Z

    .line 62233
    return-void

    .line 62234
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0J()V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .line 62235
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:F

    .line 62236
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:F

    .line 62237
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:I

    .line 62238
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A05:I

    .line 62239
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:I

    .line 62240
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    .line 62241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0B:Ljava/nio/ShortBuffer;

    .line 62242
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0A:Ljava/nio/ByteBuffer;

    .line 62243
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A04:I

    .line 62244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 62245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A06:J

    .line 62246
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A07:J

    .line 62247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A0C:Z

    .line 62248
    return-void
.end method
