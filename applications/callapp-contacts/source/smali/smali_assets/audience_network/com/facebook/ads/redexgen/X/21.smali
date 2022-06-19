.class public final Lcom/facebook/ads/redexgen/X/21;
.super Lcom/facebook/ads/redexgen/X/3c;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/In;,
        Lcom/facebook/ads/redexgen/X/Im;
    }
.end annotation


# static fields
.field public static A0b:Z

.field public static A0c:Z

.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/In;

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:Landroid/view/Surface;

.field public A0O:Landroid/view/Surface;

.field public A0P:Lcom/facebook/ads/redexgen/X/Im;

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public final A0T:I

.field public final A0U:J

.field public final A0V:Landroid/content/Context;

.field public final A0W:Lcom/facebook/ads/redexgen/X/Iq;

.field public final A0X:Lcom/facebook/ads/redexgen/X/Iz;

.field public final A0Y:Z

.field public final A0Z:[J

.field public final A0a:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3763
    invoke-static {}, Lcom/facebook/ads/redexgen/X/21;->A0E()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/21;->A0D()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/21;->A0f:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;JLcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;I)V
    .locals 2
    .param p5    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/ads/redexgen/X/J0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "J",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Yj;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/J0;",
            "I)V"
        }
    .end annotation

    .line 3764
    .local p7, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/facebook/ads/redexgen/X/3c;-><init>(ILcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Z)V

    .line 3765
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/21;->A0U:J

    .line 3766
    iput p9, p0, Lcom/facebook/ads/redexgen/X/21;->A0T:I

    .line 3767
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0V:Landroid/content/Context;

    .line 3768
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0V:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Iq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0W:Lcom/facebook/ads/redexgen/X/Iq;

    .line 3769
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iz;

    invoke-direct {v0, p7, p8}, Lcom/facebook/ads/redexgen/X/Iz;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    .line 3770
    invoke-static {}, Lcom/facebook/ads/redexgen/X/21;->A0N()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0Y:Z

    .line 3771
    const/16 v1, 0xa

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    .line 3772
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0a:[J

    .line 3773
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    .line 3774
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    .line 3775
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    .line 3776
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    .line 3777
    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    .line 3778
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    .line 3779
    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A02:F

    .line 3780
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0F:I

    .line 3781
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A07()V

    .line 3782
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 4

    .line 3783
    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 3784
    const/4 p0, 0x0

    .line 3785
    .local p0, "totalInitializationDataSize":I
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3786
    .local p1, "initializationDataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3787
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr p0, v0

    .line 3788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3789
    .end local v1    # "i":I
    :cond_0
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    add-int/2addr v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "hUEdDcZTQNKRArh2wdU5F4NdxnsUaLHW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JKTUnCqsCUQLCGuZWmxU63uBYWjDtVyB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 3790
    .end local p0    # "totalInitializationDataSize":I
    .end local p1    # "initializationDataCount":I
    :cond_2
    iget-object v2, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A01(Lcom/facebook/ads/redexgen/X/De;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/De;Ljava/lang/String;II)I
    .locals 11

    .line 3791
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-ne p3, v3, :cond_1

    .line 3792
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/De;
    .end local p1    # null:Ljava/lang/String;
    :cond_0
    return v3

    .line 3793
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    .line 3794
    return v3

    .line 3795
    :sswitch_0
    const/16 v2, 0x4f3

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "LYlCS6csy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "q7UvSOltk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x506

    const/16 v1, 0xa

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x510

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x4fd

    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/16 v9, 0x51d

    const/16 v2, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_a

    sget-object v10, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "SQkkyJTJanVkJO6F32Uk6bk7kprCTHjQ"

    const/4 v0, 0x6

    aput-object v1, v10, v0

    const-string v1, "qdt3Ji8DW1HY109DoSKbHU8vPEOVBakr"

    const/4 v0, 0x4

    aput-object v1, v10, v0

    const/16 v0, 0x5d

    invoke-static {v9, v2, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x530

    const/16 v1, 0x13

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 3796
    .end local p0
    .end local p1
    :cond_3
    mul-int/2addr p2, p3

    .line 3797
    .restart local p0    # null:Lcom/facebook/ads/redexgen/X/De;
    const/4 v0, 0x2

    .line 3798
    .restart local p1    # null:Ljava/lang/String;
    goto/16 :goto_2

    .line 3799
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/De;
    .end local p1    # null:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    const/16 v2, 0x6f

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    .line 3800
    const/16 v5, 0x4c

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "NtNriTBuV2osPITyWDh14DJ675Hb7mGw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "aTMgrGeBM5ccTfE23qKwReDESoqcSAqB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 3801
    const/16 v2, 0x1ef

    const/4 v1, 0x6

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 3802
    const/16 v2, 0x48

    const/4 v1, 0x4

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "zdPQLWr42KwZ0dlobdnw7aSMm4tMCkyH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 3803
    .end local p0
    .end local p1
    :cond_5
    :goto_1
    return v3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "T0y2wvAU5yQ513Hy1uxpE9VJWBvaaP8c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fdLwMbQpDxlxQ1UhZD1cDHOaYKmbaI1X"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    goto :goto_1

    .line 3804
    :cond_7
    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v1

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v0

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x10

    mul-int/lit8 p2, v0, 0x10

    .line 3805
    .restart local p0    # null:Lcom/facebook/ads/redexgen/X/De;
    const/4 v0, 0x2

    .line 3806
    .restart local p1    # null:Ljava/lang/String;
    goto :goto_2

    .line 3807
    :cond_8
    mul-int/2addr p2, p3

    .line 3808
    .restart local p0    # null:Lcom/facebook/ads/redexgen/X/De;
    const/4 v0, 0x2

    .line 3809
    .restart local p1    # null:Ljava/lang/String;
    goto :goto_2

    .line 3810
    :cond_9
    mul-int/2addr p2, p3

    .line 3811
    .local p0, "maxPixels":I
    const/4 v0, 0x4

    .line 3812
    .local p1, "minCompressionRatio":I
    :goto_2
    mul-int/lit8 v1, p2, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_1
        0x46cdc642 -> :sswitch_2
        0x4f62373a -> :sswitch_3
        0x5f50bed8 -> :sswitch_4
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 3813
    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/4 v8, 0x0

    if-le v1, v0, :cond_b

    const/4 v11, 0x1

    .line 3814
    .local p0, "isVerticalVideo":Z
    :goto_0
    if-eqz v11, :cond_a

    iget v7, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    .line 3815
    .local p1, "formatLongEdgePx":I
    :goto_1
    if-eqz v11, :cond_9

    iget v6, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    .line 3816
    .local v0, "formatShortEdgePx":I
    :goto_2
    int-to-float v5, v6

    int-to-float v0, v7

    div-float/2addr v5, v0

    .line 3817
    .local v8, "aspectRatio":F
    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0f:[I

    array-length v3, v4

    :goto_3
    const/4 v10, 0x0

    if-ge v8, v3, :cond_d

    aget v9, v4, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_c

    .line 3818
    .local v5, "longEdgePx":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "1BVaGfMRJiqdWLUq8dv8R9mVKG0R6nhL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-float v0, v9

    mul-float/2addr v0, v5

    float-to-int v2, v0

    .line 3819
    .local v0, "shortEdgePx":I
    if-le v9, v7, :cond_0

    if-gt v2, v6, :cond_1

    .line 3820
    .end local v0    # "shortEdgePx":I
    .end local v8    # "aspectRatio":F
    .restart local v10
    .restart local v9
    :cond_0
    return-object v10

    .line 3821
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_4

    .line 3822
    if-eqz v11, :cond_3

    move v0, v2

    .line 3823
    :goto_4
    if-eqz v11, :cond_2

    .line 3824
    :goto_5
    invoke-virtual {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/De;->A0F(II)Landroid/graphics/Point;

    move-result-object v10

    .line 3825
    .local v6, "alignedSize":Landroid/graphics/Point;
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    .line 3826
    .local v5, "frameRate":F
    iget v9, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    .end local v0
    .end local v8
    .local v10, "formatShortEdgePx":I
    .local v9, "aspectRatio":F
    float-to-double v0, v0

    invoke-virtual {p0, v9, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A0I(IID)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3827
    return-object v10

    .line 3828
    :cond_2
    move v9, v2

    goto :goto_5

    .line 3829
    :cond_3
    move v0, v9

    goto :goto_4

    .line 3830
    .end local v10    # "formatShortEdgePx":I
    .end local v9    # "aspectRatio":F
    .restart local v0    # "shortEdgePx":I
    .restart local v8    # "aspectRatio":F
    .end local v0    # "shortEdgePx":I
    .end local v8    # "aspectRatio":F
    .restart local v10    # "formatShortEdgePx":I
    .restart local v9    # "aspectRatio":F
    :cond_4
    const/16 v1, 0x10

    invoke-static {v9, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v0

    mul-int/lit8 v9, v0, 0x10

    .line 3831
    .end local v5    # "frameRate":F
    .local v8, "longEdgePx":I
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x10

    .line 3832
    .end local v0
    .local v0, "shortEdgePx":I
    mul-int v1, v9, v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dp;->A00()I

    move-result v0

    if-gt v1, v0, :cond_7

    .line 3833
    if-eqz v11, :cond_6

    move v1, v2

    .line 3834
    :goto_6
    if-eqz v11, :cond_5

    :goto_7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 3835
    return-object v0

    .line 3836
    :cond_5
    move v9, v2

    goto :goto_7

    .line 3837
    :cond_6
    move v1, v9

    goto :goto_6

    .line 3838
    .end local v0    # "shortEdgePx":I
    .end local v8    # "longEdgePx":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "qOOBmdqjU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "w7Tn3xd7M"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto/16 :goto_3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "KAf95qDJkDfWOijmfxtuynNssocKmC3g"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "h6cBxdrGRvPICzB6Kk67A24HS1YQyhML"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    goto/16 :goto_3

    .line 3839
    :cond_9
    iget v6, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    goto/16 :goto_2

    .line 3840
    :cond_a
    iget v7, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    goto/16 :goto_1

    .line 3841
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3842
    .end local v5
    .end local v0
    .end local v10    # "formatShortEdgePx":I
    .end local v9    # "aspectRatio":F
    .restart local v0    # "shortEdgePx":I
    .restart local v8    # "longEdgePx":I
    :cond_d
    return-object v10
.end method

.method private final A03(Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Im;ZI)Landroid/media/MediaFormat;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 3843
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 3844
    .local p0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x446

    const/4 v1, 0x4

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/16 v2, 0x54f

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3846
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    const/16 v2, 0x3cb

    const/4 v1, 0x6

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3847
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A07(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 3848
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    const/16 v2, 0x3ba

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 3849
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    const/16 v2, 0x49c

    const/16 v1, 0x10

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A05(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3850
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A03(Landroid/media/MediaFormat;Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;)V

    .line 3851
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Im;->A02:I

    const/16 v2, 0x437

    const/16 v1, 0x9

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3852
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    const/16 v2, 0x41f

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3853
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    const/16 v2, 0x429

    const/16 v1, 0xe

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A05(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 3854
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v3, 0x0

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 3855
    const/16 v2, 0x481

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3856
    :cond_0
    if-eqz p3, :cond_1

    .line 3857
    const/16 v2, 0x36b

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3858
    :cond_1
    if-eqz p4, :cond_2

    .line 3859
    invoke-static {v4, p4}, Lcom/facebook/ads/redexgen/X/21;->A0L(Landroid/media/MediaFormat;I)V

    .line 3860
    :cond_2
    return-object v4
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Im;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 3861
    iget v6, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    .line 3862
    .local p0, "maxWidth":I
    iget v5, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    .line 3863
    .local p1, "maxHeight":I
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/21;->A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v4

    .line 3864
    .local p2, "maxInputSize":I
    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 3865
    new-instance v0, Lcom/facebook/ads/redexgen/X/Im;

    invoke-direct {v0, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Im;-><init>(III)V

    return-object v0

    .line 3866
    :cond_0
    const/4 v8, 0x0

    .line 3867
    .local p3, "haveUnknownDimensions":Z
    array-length v3, p3

    const/4 v2, 0x0

    .end local p0    # "maxWidth":I
    .local p1, "maxWidth":I
    .local p2, "maxHeight":I
    .local v1, "maxInputSize":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v7, p3, v2

    .line 3868
    .local v0, "streamFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/De;->A03:Z

    invoke-static {v0, p2, v7}, Lcom/facebook/ads/redexgen/X/21;->A0W(ZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3869
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    or-int/2addr v8, v0

    .line 3870
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3871
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3872
    invoke-static {p1, v7}, Lcom/facebook/ads/redexgen/X/21;->A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3873
    .end local v0    # "streamFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3874
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3875
    :cond_4
    if-eqz v8, :cond_5

    .line 3876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2ab

    const/16 v1, 0x2b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x563

    const/4 v1, 0x1

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20a

    const/16 v1, 0x17

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/21;->A02(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v1

    .line 3878
    .local p0, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v1, :cond_5

    .line 3879
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3880
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3881
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 3882
    invoke-static {p1, v0, v6, v5}, Lcom/facebook/ads/redexgen/X/21;->A01(Lcom/facebook/ads/redexgen/X/De;Ljava/lang/String;II)I

    move-result v0

    .line 3883
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa4

    const/16 v1, 0x22

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    .end local p0    # "codecMaxSize":Landroid/graphics/Point;
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/Im;

    invoke-direct {v0, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Im;-><init>(III)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "1g9G5auDmi6BFhp1SUFflSJn2zbmW8bI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "EQg736KY9Bh9QzgWqQs064uwRmk9hBcX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 3

    .line 3886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    .line 3887
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    if-eqz v0, :cond_0

    .line 3888
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1E()Landroid/media/MediaCodec;

    move-result-object v2

    .line 3889
    .local p0, "codec":Landroid/media/MediaCodec;
    if-eqz v2, :cond_0

    .line 3890
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Lcom/facebook/ads/redexgen/X/21;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Il;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A00:Lcom/facebook/ads/redexgen/X/In;

    .line 3891
    .end local p0    # "codec":Landroid/media/MediaCodec;
    :cond_0
    return-void
.end method

.method private A07()V
    .locals 2

    .line 3892
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0E:I

    .line 3893
    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0C:I

    .line 3894
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A03:F

    .line 3895
    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0D:I

    .line 3896
    return-void
.end method

.method private A08()V
    .locals 6

    .line 3897
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    if-lez v0, :cond_0

    .line 3898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3899
    .local p0, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0H:J

    sub-long v2, v4, v0

    .line 3900
    .local v4, "elapsedMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Iz;->A02(IJ)V

    .line 3901
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    .line 3902
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/21;->A0H:J

    .line 3903
    .end local p0    # "now":J
    .end local v4    # "elapsedMs":J
    :cond_0
    return-void
.end method

.method private A09()V
    .locals 5

    .line 3904
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0E:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0C:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0D:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A07:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A03:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 3905
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "RTvZ5FDjzwdLT6J2ljezTJit2l4QBCCR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8XoC7GroR317PXdtPjLLz1J1MgtvBrxC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A01(IIIF)V

    .line 3906
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0E:I

    .line 3907
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0C:I

    .line 3908
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0D:I

    .line 3909
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A03:F

    .line 3910
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .locals 2

    .line 3911
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    if-eqz v0, :cond_0

    .line 3912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A03(Landroid/view/Surface;)V

    .line 3913
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 5

    .line 3914
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0E:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0C:I

    if-eq v0, v1, :cond_1

    .line 3915
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0E:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0C:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0D:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A03:F

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A01(IIIF)V

    .line 3916
    :cond_1
    return-void
.end method

.method private A0C()V
    .locals 5

    .line 3917
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0U:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 3918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0U:J

    add-long/2addr v2, v0

    .line 3919
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    .line 3920
    return-void

    .line 3921
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x564

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/21;->A0d:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x47t
        0x41t
        0x40t
        0x40t
        0x46t
        0x40t
        0x42t
        0x47t
        0x41t
        0x47t
        0x42t
        0x7at
        0xat
        0xbt
        0x16t
        0xct
        0xbt
        0x7dt
        0x37t
        0x47t
        0x40t
        0x46t
        0x47t
        0x2at
        0x59t
        0x5bt
        0x5at
        0x5dt
        0xat
        0x5ft
        0x5bt
        0x3ft
        0x49t
        0x4et
        0x4et
        0x4et
        0x53t
        0x1ft
        0x11t
        0x67t
        0x60t
        0x60t
        0x60t
        0x20t
        0x3ct
        0x25t
        0x23t
        0x76t
        0x0t
        0x7t
        0x6t
        0x7t
        0x56t
        0x3t
        0xft
        0x49t
        0x3ft
        0x38t
        0x3at
        0x38t
        0x69t
        0x3ct
        0x30t
        0x28t
        0x2ft
        0x3dt
        0x28t
        0x2t
        0x5t
        0x17t
        0xdt
        0x0t
        0x7t
        0x15t
        0x12t
        0x27t
        0xbt
        0x7t
        0x1ct
        0x9t
        0x8t
        0xbt
        0x3bt
        0x3ft
        0x2bt
        0x1at
        0x25t
        0x3dt
        0x2ft
        0x38t
        0x7t
        0x5at
        0x6et
        0x69t
        0x7at
        0x44t
        0x55t
        0x74t
        0x6ft
        0x7et
        0x44t
        0x29t
        0x37t
        0x39t
        0x34t
        0x36t
        0x3et
        0x58t
        0x44t
        0x2dt
        0x4t
        0x14t
        0x7t
        0x10t
        0xft
        0x7t
        0x66t
        0x72t
        0xdt
        0x66t
        0x74t
        0x76t
        0x77t
        0x73t
        0x27t
        0x37t
        0x24t
        0x33t
        0x2ct
        0x24t
        0x3at
        0x24t
        0x31t
        0x33t
        0x57t
        0x3t
        0x71t
        0x7t
        0x14t
        0x7ct
        0x72t
        0x73t
        0x72t
        0x1bt
        0xdt
        0x74t
        0x76t
        0x5at
        0x49t
        0x51t
        0x28t
        0x2ft
        0x29t
        0x20t
        0xct
        0x1ft
        0x16t
        0x77t
        0x7ct
        0x10t
        0x6t
        0x7ft
        0x7ft
        0x6at
        0x46t
        0x4dt
        0x4ct
        0x4at
        0x9t
        0x44t
        0x48t
        0x51t
        0x9t
        0x5bt
        0x4ct
        0x5at
        0x46t
        0x45t
        0x5ct
        0x5dt
        0x40t
        0x46t
        0x47t
        0x9t
        0x48t
        0x4dt
        0x43t
        0x5ct
        0x5at
        0x5dt
        0x4ct
        0x4dt
        0x9t
        0x5dt
        0x46t
        0x13t
        0x9t
        0x6ct
        0x40t
        0x42t
        0x46t
        0x40t
        0x7ct
        0x1et
        0x13t
        0x63t
        0x60t
        0x62t
        0x65t
        0x5et
        0x57t
        0x4et
        0x5ct
        0x5at
        0x44t
        0x5at
        0x28t
        0x44t
        0x4bt
        0x69t
        0x74t
        0x2et
        0x27t
        0x3et
        0x2ct
        0x2at
        0x34t
        0x25t
        0x4t
        0x1ft
        0xet
        0x5t
        0xct
        0x15t
        0x7t
        0x1t
        0x1ft
        0x10t
        0x32t
        0x29t
        0x2dt
        0x18t
        0x11t
        0x8t
        0x1at
        0x1ct
        0x2t
        0xft
        0x3ct
        0x24t
        0x2t
        0x5t
        0x45t
        0x76t
        0x65t
        0x72t
        0x53t
        0x74t
        0x61t
        0x72t
        0x5ft
        0x53t
        0x7ft
        0xat
        0x8t
        0x8t
        0x8t
        0x48t
        0x3dt
        0x3ft
        0x3ft
        0x3dt
        0x66t
        0x13t
        0x11t
        0x11t
        0x16t
        0x44t
        0x31t
        0x30t
        0x33t
        0x33t
        0x18t
        0x6dt
        0x6ct
        0x6ft
        0x6dt
        0x54t
        0x21t
        0x20t
        0x23t
        0x27t
        0x27t
        0x52t
        0x52t
        0x50t
        0x50t
        0x5et
        0x79t
        0x74t
        0x6bt
        0x7dt
        0x5bt
        0x70t
        0x7dt
        0x7bt
        0x73t
        0x38t
        0x43t
        0x74t
        0x7dt
        0x7ft
        0x79t
        0x7bt
        0x61t
        0x5et
        0x6at
        0x79t
        0x75t
        0x7dt
        0x4bt
        0x71t
        0x62t
        0x7dt
        0x34t
        0x38t
        0x29t
        0x27t
        0x21t
        0x20t
        0x2bt
        0x2bt
        0x31t
        0x29t
        0x2ct
        0x22t
        0x59t
        0x5dt
        0x58t
        0x5et
        0x8t
        0x6t
        0x0t
        0x1t
        0xat
        0xat
        0x10t
        0x1ct
        0x18t
        0x18t
        0x7et
        0x79t
        0x7ft
        0x76t
        0xft
        0x1t
        0x7t
        0x6t
        0xdt
        0xdt
        0x17t
        0x1bt
        0x1ft
        0x1ft
        0x79t
        0x7et
        0x7at
        0x7ft
        0x41t
        0x4ft
        0x49t
        0x48t
        0x43t
        0x43t
        0x59t
        0x55t
        0x51t
        0x51t
        0x37t
        0x30t
        0x35t
        0x37t
        0x1t
        0xft
        0x9t
        0x8t
        0x3t
        0x3t
        0x19t
        0x11t
        0x4t
        0xat
        0x73t
        0x71t
        0x76t
        0x7et
        0x28t
        0x26t
        0x20t
        0x21t
        0x2at
        0x2at
        0x30t
        0x38t
        0x2dt
        0x23t
        0x58t
        0x5ct
        0x59t
        0x5at
        0x3bt
        0x35t
        0x33t
        0x32t
        0x39t
        0x39t
        0x23t
        0x2bt
        0x3et
        0x30t
        0x4bt
        0x49t
        0x4dt
        0x45t
        0x28t
        0x6t
        0x20t
        0x21t
        0x2at
        0x2at
        0x30t
        0x2ct
        0x2dt
        0x23t
        0x58t
        0x5at
        0x5et
        0x5ct
        0x1et
        0x30t
        0x16t
        0x17t
        0x1ct
        0x1ct
        0x6t
        0x1et
        0x1bt
        0x15t
        0x6et
        0x6at
        0x68t
        0x60t
        0x40t
        0x5ft
        0x4at
        0x44t
        0x46t
        0x25t
        0x40t
        0x5bt
        0x44t
        0x50t
        0x52t
        0x5et
        0x3et
        0x5bt
        0x42t
        0x5dt
        0x5ct
        0x44t
        0x59t
        0x27t
        0x42t
        0x4at
        0x6dt
        0x65t
        0x6at
        0x6dt
        0x6at
        0x7bt
        0x2et
        0x5bt
        0x36t
        0x34t
        0x31t
        0x46t
        0x4bt
        0x56t
        0x15t
        0x6bt
        0x6et
        0x3ft
        0x6at
        0x6et
        0xdt
        0x0t
        0x15t
        0x9t
        0x11t
        0xft
        0x46t
        0x59t
        0x27t
        0x3ft
        0x3at
        0x3bt
        0x3dt
        0x43t
        0x3bt
        0x6dt
        0x57t
        0x5ft
        0x53t
        0x40t
        0x4ft
        0x45t
        0x57t
        0x2ft
        0x1bt
        0xet
        0x60t
        0x74t
        0x5ct
        0x5dt
        0x50t
        0x58t
        0x7at
        0x56t
        0x5dt
        0x5ct
        0x5at
        0x6ft
        0x50t
        0x5dt
        0x5ct
        0x56t
        0x6bt
        0x5ct
        0x57t
        0x5dt
        0x5ct
        0x4bt
        0x5ct
        0x4bt
        0x1at
        0x2t
        0x1dt
        0x10t
        0x1dt
        0x15t
        0x5ft
        0x49t
        0x24t
        0x25t
        0x20t
        0x5bt
        0x2dt
        0x3bt
        0x56t
        0x54t
        0x50t
        0x29t
        0x1ct
        0x1et
        0xbt
        0x7dt
        0x34t
        0x3ct
        0x3ct
        0x34t
        0x3ft
        0x36t
        0x59t
        0x78t
        0x73t
        0x46t
        0x7at
        0x63t
        0x65t
        0x23t
        0x42t
        0x54t
        0x32t
        0x3ct
        0x35t
        0x37t
        0x5ft
        0x52t
        0x40t
        0x52t
        0x22t
        0x3dt
        0x26t
        0x27t
        0x20t
        0x5dt
        0x47t
        0x50t
        0x59t
        0x22t
        0x25t
        0x2ft
        0x11t
        0x6t
        0xft
        0x77t
        0x70t
        0x71t
        0x60t
        0x77t
        0x7et
        0x6t
        0x1t
        0x1t
        0x1ft
        0x3t
        0xat
        0x2et
        0x2ct
        0x31t
        0x49t
        0x2dt
        0xet
        0x36t
        0x3ft
        0x30t
        0x2at
        0x31t
        0x33t
        0x68t
        0x4t
        0x3dt
        0x2ct
        0x3dt
        0x60t
        0x79t
        0x63t
        0xbt
        0x67t
        0x13t
        0x4dt
        0x74t
        0x65t
        0x74t
        0x28t
        0x30t
        0x2ct
        0x2dt
        0x42t
        0x29t
        0x5at
        0x8t
        0x6at
        0x6ct
        0x69t
        0x78t
        0x1dt
        0x1bt
        0x1ft
        0x19t
        0x21t
        0x44t
        0x42t
        0x47t
        0x6dt
        0x8t
        0xft
        0xdt
        0xct
        0x62t
        0x6t
        0x6t
        0x1at
        0x66t
        0x61t
        0xft
        0x12t
        0x8t
        0x2t
        0x7dt
        0x74t
        0x1dt
        0x79t
        0x4et
        0x58t
        0x44t
        0x47t
        0x5et
        0x5ft
        0x42t
        0x44t
        0x45t
        0x58t
        0xbt
        0x5et
        0x45t
        0x40t
        0x45t
        0x44t
        0x5ct
        0x45t
        0x5t
        0xbt
        0x68t
        0x44t
        0x4ft
        0x4et
        0x48t
        0xbt
        0x46t
        0x4at
        0x53t
        0xbt
        0x59t
        0x4et
        0x58t
        0x44t
        0x47t
        0x5et
        0x5ft
        0x42t
        0x44t
        0x45t
        0x11t
        0xbt
        0x6dt
        0x68t
        0x6et
        0x13t
        0x7at
        0x6at
        0x68t
        0xft
        0xbt
        0x76t
        0x49t
        0x44t
        0x51t
        0x40t
        0x7at
        0x75t
        0x57t
        0x4at
        0x23t
        0x35t
        0x44t
        0x5at
        0x40t
        0x44t
        0x47t
        0x31t
        0x64t
        0x72t
        0x3t
        0x1dt
        0x7t
        0x3t
        0x0t
        0x68t
        0x3dt
        0x2bt
        0x5at
        0x44t
        0x51t
        0x5ct
        0x59t
        0x2ft
        0x66t
        0x70t
        0x1t
        0x1ft
        0xat
        0x7t
        0x2t
        0x7ft
        0x10t
        0x2bt
        0x2bt
        0x64t
        0x29t
        0x25t
        0x2at
        0x3dt
        0x64t
        0x37t
        0x30t
        0x36t
        0x21t
        0x25t
        0x29t
        0x64t
        0x27t
        0x2ct
        0x25t
        0x2at
        0x23t
        0x21t
        0x37t
        0x68t
        0x64t
        0x37t
        0x2bt
        0x64t
        0x20t
        0x36t
        0x2bt
        0x34t
        0x34t
        0x2dt
        0x2at
        0x23t
        0x64t
        0x2bt
        0x22t
        0x22t
        0x37t
        0x21t
        0x30t
        0x7et
        0x64t
        0x49t
        0x2et
        0x7t
        0x63t
        0x62t
        0x16t
        0x13t
        0x6ct
        0xft
        0x1ft
        0x74t
        0x18t
        0xft
        0xct
        0xdt
        0x10t
        0x67t
        0xdt
        0xft
        0x3t
        0x66t
        0x61t
        0x61t
        0x64t
        0x13t
        0x78t
        0x7bt
        0x16t
        0x19t
        0x1bt
        0x6t
        0x2bt
        0x49t
        0x41t
        0x68t
        0x12t
        0x6ft
        0x14t
        0x10t
        0x4t
        0x15t
        0x18t
        0x1et
        0x5ct
        0x2t
        0x14t
        0x2t
        0x2t
        0x18t
        0x1et
        0x1ft
        0x5ct
        0x18t
        0x15t
        0xct
        0x18t
        0x19t
        0x2t
        0x40t
        0xbt
        0x1ft
        0xet
        0x4bt
        0x5at
        0x47t
        0x58t
        0x5t
        0x4at
        0x47t
        0x5ct
        0x5ct
        0x47t
        0x45t
        0x9t
        0x18t
        0x5t
        0x1at
        0x47t
        0x6t
        0xft
        0xct
        0x1et
        0x11t
        0x0t
        0x1dt
        0x2t
        0x5ft
        0x0t
        0x1bt
        0x15t
        0x1at
        0x6t
        0x1ct
        0xdt
        0x10t
        0xft
        0x52t
        0xbt
        0x10t
        0xft
        0x36t
        0x23t
        0x64t
        0x7ct
        0x69t
        0x2ct
        0x51t
        0x50t
        0x57t
        0x3t
        0x15t
        0x8t
        0x17t
        0x31t
        0xet
        0x3t
        0x2t
        0x8t
        0x25t
        0x12t
        0x1t
        0x1t
        0x2t
        0x15t
        0x63t
        0x69t
        0x6at
        0x4ct
        0x45t
        0x59t
        0x5et
        0x4ft
        0x58t
        0x30t
        0x24t
        0x37t
        0x3bt
        0x33t
        0x7bt
        0x24t
        0x37t
        0x22t
        0x33t
        0x18t
        0xdt
        0x16t
        0x19t
        0x19t
        0x16t
        0x11t
        0x27t
        0x2at
        0x26t
        0x28t
        0x27t
        0x3bt
        0x63t
        0x7ft
        0x68t
        0x54t
        0x6et
        0x3et
        0x3dt
        0x66t
        0x67t
        0x54t
        0x6ft
        0x7ft
        0x7et
        0x67t
        0x2at
        0x35t
        0x3t
        0xet
        0x7t
        0x6ft
        0xat
        0x60t
        0x6bt
        0x68t
        0x65t
        0x65t
        0x31t
        0x3et
        0x3at
        0x3ct
        0x56t
        0x30t
        0x31t
        0x39t
        0x3ft
        0x77t
        0x6ct
        0x77t
        0x6dt
        0x28t
        0x2et
        0x72t
        0x6ft
        0x7et
        0x77t
        0x44t
        0x48t
        0x2ft
        0x2at
        0x2ft
        0x77t
        0x3dt
        0x29t
        0x31t
        0x20t
        0x2ct
        0x2bt
        0x36t
        0x2ft
        0x26t
        0x1ct
        0x3bt
        0x75t
        0x64t
        0x68t
        0x67t
        0x67t
        0x60t
        0x67t
        0x6et
        0x76t
        0x7at
        0x69t
        0x72t
        0x75t
        0x74t
        0x44t
        0x7dt
        0xct
        0x0t
        0x19t
        0x4ct
        0x9t
        0x4t
        0x8t
        0x6t
        0x9t
        0x15t
        0xet
        0x2t
        0x1bt
        0x4et
        0xat
        0xdt
        0x13t
        0x16t
        0x17t
        0x4et
        0x10t
        0xat
        0x19t
        0x6t
        0x53t
        0x5ft
        0x46t
        0x13t
        0x49t
        0x57t
        0x5at
        0x4at
        0x56t
        0x10t
        0x15t
        0x44t
        0x40t
        0x4dt
        0x46t
        0x7ft
        0x7bt
        0x7ft
        0x77t
        0x59t
        0x56t
        0x5at
        0x56t
        0x43t
        0x5ft
        0x6bt
        0x6ct
        0x66t
        0x6et
        0x69t
        0x64t
        0x70t
        0x76t
        0x5at
        0x63t
        0x77t
        0x35t
        0x36t
        0x35t
        0x48t
        0x59t
        0x56t
        0x5dt
        0x54t
        0x54t
        0x67t
        0x5ct
        0x30t
        0x21t
        0x2et
        0x25t
        0x2ct
        0x2ct
        0x1ft
        0x24t
        0x2ct
        0x65t
        0x74t
        0x7bt
        0x70t
        0x79t
        0x79t
        0x4at
        0x71t
        0x66t
        0x60t
        0x71t
        0x7et
        0x75t
        0x7ct
        0x7ct
        0x4ft
        0x74t
        0x64t
        0x4et
        0x4ct
        0x57t
        0x51t
        0x4ct
        0x57t
        0x4at
        0x47t
        0x6bt
        0x7ct
        0x75t
        0x7ct
        0x78t
        0x6at
        0x7ct
        0x56t
        0x6ct
        0x6dt
        0x69t
        0x6ct
        0x6dt
        0x5bt
        0x6ct
        0x7ft
        0x7ft
        0x7ct
        0x6bt
        0x11t
        0xct
        0x17t
        0x2t
        0x17t
        0xat
        0xct
        0xdt
        0x4et
        0x7t
        0x6t
        0x4t
        0x11t
        0x6t
        0x6t
        0x10t
        0x5et
        0x14t
        0x1dt
        0x18t
        0x55t
        0x1dt
        0x1ct
        0x15t
        0x7bt
        0x69t
        0x66t
        0x7ct
        0x67t
        0x66t
        0x61t
        0x44t
        0x5ct
        0x5et
        0x47t
        0x61t
        0x5et
        0x53t
        0x52t
        0x58t
        0x75t
        0x42t
        0x51t
        0x51t
        0x52t
        0x45t
        0x5t
        0x10t
        0x18t
        0x15t
        0x1et
        0x2et
        0x3t
        0x1et
        0x6t
        0x20t
        0x37t
        0x38t
        0xbt
        0x31t
        0x21t
        0x36t
        0x37t
        0x2ct
        0x2ct
        0x27t
        0x2et
        0x27t
        0x26t
        0x6ft
        0x32t
        0x2et
        0x23t
        0x3bt
        0x20t
        0x23t
        0x21t
        0x29t
        0x52t
        0x41t
        0x56t
        0x4at
        0x41t
        0x41t
        0x7bt
        0x69t
        0x11t
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x2dt
        0x31t
        0x65t
        0x72t
        0x72t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x2ct
        0x62t
        0x75t
        0x60t
        0x61t
        0x7et
        0x73t
        0x72t
        0x78t
        0x38t
        0x7ft
        0x72t
        0x61t
        0x74t
        0x66t
        0x79t
        0x74t
        0x75t
        0x7ft
        0x3ft
        0x7dt
        0x60t
        0x24t
        0x66t
        0x3dt
        0x75t
        0x63t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x5ct
        0xbt
        0x5et
        0x5t
        0x1dt
        0x17t
        0x5dt
        0x1ct
        0x1dt
        0x41t
        0x5dt
        0x5t
        0x3t
        0x4bt
        0x6ft
        0x70t
        0x7dt
        0x7ct
        0x76t
        0x36t
        0x61t
        0x34t
        0x6ft
        0x77t
        0x7dt
        0x37t
        0x76t
        0x77t
        0x2bt
        0x37t
        0x6ft
        0x69t
        0x20t
        0x9t
        0x1ft
        0xat
        0xdt
        0x11t
        0x10t
        0x4ft
        0x50t
        0x41t
        0x4at
        0x5dt
        0x5ct
        0x3ft
        0x21t
        0x2ct
        0x3ct
        0x20t
        0x6at
        0x72t
        0x72t
        0x79t
        0x6et
        0x42t
        0x7bt
        0x73t
        0x6bt
        0x6bt
        0x60t
        0x77t
        0x5bt
        0x62t
        0x6at
        0x17t
    .end array-data
.end method

.method public static A0E()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NS8r3iU3bE12Q5c28wyOjILRdJ0J08uI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UbzRKZURs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SU7Qb1ICkxq5LQRUjQdAnOKVl0Elt9iK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HdySUumBIxpTjI6XDfJ50FoXA9Aqq3VK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W2XidxNDZL2wdlIqJNQqrIQcb8erTCLJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pQl30wQXruMBF7LsTdQVlnJoVdVvITHL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EldsxOw3j9Ew0275hEYEpNzApywAkDlk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GsoHFPwBx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    return-void
.end method

.method private final A0F(I)V
    .locals 3

    .line 3922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A02:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A02:I

    .line 3923
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    .line 3924
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    .line 3925
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ba;->A05:I

    .line 3926
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A05:I

    .line 3927
    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0T:I

    if-lt v1, v0, :cond_0

    .line 3928
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A08()V

    .line 3929
    :cond_0
    return-void
.end method

.method private final A0G(Landroid/media/MediaCodec;IJ)V
    .locals 3

    .line 3930
    const/16 v2, 0x3a2

    const/16 v1, 0xf

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 3931
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3932
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 3933
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/21;->A0F(I)V

    .line 3934
    return-void
.end method

.method private final A0H(Landroid/media/MediaCodec;IJ)V
    .locals 5

    .line 3935
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A09()V

    .line 3936
    const/16 v2, 0x489

    const/16 v1, 0x13

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 3937
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3938
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 3939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0L:J

    .line 3940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    .line 3941
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    .line 3942
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/21;->A1T()V

    .line 3943
    return-void
.end method

.method private final A0I(Landroid/media/MediaCodec;IJ)V
    .locals 3

    .line 3944
    const/16 v2, 0x4bb

    const/16 v1, 0xf

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 3945
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3946
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 3947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A08:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A08:I

    .line 3948
    return-void
.end method

.method private final A0J(Landroid/media/MediaCodec;IJJ)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 3949
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A09()V

    .line 3950
    const/16 v2, 0x489

    const/16 v1, 0x13

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 3952
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 3953
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0L:J

    .line 3954
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A06:I

    .line 3955
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    .line 3956
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/21;->A1T()V

    .line 3957
    return-void
.end method

.method public static A0K(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 3958
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 3959
    return-void
.end method

.method public static A0L(Landroid/media/MediaFormat;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 3960
    const/16 v2, 0x4d9

    const/16 v1, 0x11

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 3961
    const/16 v2, 0x35b

    const/16 v1, 0x10

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3962
    return-void
.end method

.method private A0M(Landroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 3963
    if-nez p1, :cond_0

    .line 3964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 3965
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    .line 3966
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/21;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 3967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    .line 3968
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A7F()I

    move-result v4

    .line 3969
    .local p0, "state":I
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v4, v0, :cond_1

    if-ne v4, v3, :cond_2

    .line 3970
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1E()Landroid/media/MediaCodec;

    move-result-object v2

    .line 3971
    .local p1, "codec":Landroid/media/MediaCodec;
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0Q:Z

    if-nez v0, :cond_5

    .line 3972
    invoke-static {v2, p1}, Lcom/facebook/ads/redexgen/X/21;->A0K(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 3973
    .end local p1    # "codec":Landroid/media/MediaCodec;
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eq p1, v0, :cond_4

    .line 3974
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A0B()V

    .line 3975
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A06()V

    .line 3976
    if-ne v4, v3, :cond_3

    .line 3977
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A0C()V

    .line 3978
    :cond_3
    :goto_2
    return-void

    .line 3979
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A07()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 3980
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "3kfdRjkwPvYxx8JzUoiB9hf8dQ33bpul"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A06()V

    goto :goto_2

    .line 3981
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/21;->A1I()V

    .line 3982
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1K()V

    goto :goto_1

    .line 3983
    .end local p0    # "state":I
    :cond_6
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eq p1, v0, :cond_3

    .line 3984
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A0B()V

    .line 3985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A0A()V

    goto :goto_2

    .line 3986
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1F()Lcom/facebook/ads/redexgen/X/De;

    move-result-object v2

    .line 3987
    .local p0, "codecInfo":Lcom/facebook/ads/redexgen/X/De;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/21;->A0U(Lcom/facebook/ads/redexgen/X/De;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0V:Landroid/content/Context;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    .line 3989
    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0N()Z
    .locals 4

    .line 3990
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    const/16 v2, 0x3b4

    const/4 v1, 0x6

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    const/16 v2, 0x221

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0O(J)Z
    .locals 3

    .line 3991
    const-wide/16 v1, -0x7530

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0P(J)Z
    .locals 3

    .line 3992
    const-wide/32 v1, -0x7a120

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0Q(JJ)Z
    .locals 1

    .line 3993
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/21;->A0P(J)Z

    move-result v0

    return v0
.end method

.method private final A0R(JJ)Z
    .locals 1

    .line 3994
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/21;->A0O(J)Z

    move-result v0

    return v0
.end method

.method private final A0S(JJ)Z
    .locals 3

    .line 3995
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/21;->A0O(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x186a0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0T(Landroid/media/MediaCodec;IJJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 3996
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/EP;->A11(J)I

    move-result v3

    .line 3997
    .local p0, "droppedSourceBufferCount":I
    if-nez v3, :cond_0

    .line 3998
    const/4 v0, 0x0

    return v0

    .line 3999
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A03:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A03:I

    .line 4000
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/21;->A0F(I)V

    .line 4001
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/21;->A1H()V

    .line 4002
    return v1
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/De;)Z
    .locals 4

    .line 4003
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    if-nez v0, :cond_2

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4004
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "kyWyTgTuit8kBu9eYgHiJLOeDtaawSzk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zep7axp9udbgCrK2JAqRjKsc1O8PK6En"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/21;->A0V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0V:Landroid/content/Context;

    .line 4005
    invoke-static {v0}, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4006
    :goto_0
    return v0
.end method

.method private final A0V(Ljava/lang/String;)Z
    .locals 9

    .line 4007
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v6, 0x1b

    const/4 v5, 0x0

    if-ge v0, v6, :cond_0

    const/16 v2, 0x233

    const/16 v1, 0xa

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4008
    :cond_0
    return v5

    .line 4009
    :cond_1
    const-class v8, Lcom/facebook/ads/redexgen/X/21;

    monitor-enter v8

    .line 4010
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/21;->A0c:Z

    if-nez v0, :cond_8

    .line 4011
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 v2, 0x155

    const/16 v1, 0xe

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x27

    goto/16 :goto_2

    :sswitch_1
    const/16 v2, 0x163

    const/16 v1, 0xe

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x28

    goto/16 :goto_2

    :sswitch_2
    const/16 v2, 0x171

    const/16 v1, 0xe

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x29

    goto/16 :goto_2

    :sswitch_3
    const/16 v2, 0x1e9

    const/4 v1, 0x6

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x39

    goto/16 :goto_2

    :sswitch_4
    const/16 v2, 0x8a

    const/16 v1, 0xa

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x10

    goto/16 :goto_2

    :sswitch_5
    const/16 v2, 0x227

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x45

    goto/16 :goto_2

    :sswitch_6
    const/16 v2, 0x22d

    const/4 v1, 0x6

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x46

    goto/16 :goto_2

    :sswitch_7
    const/16 v2, 0x255

    const/4 v1, 0x6

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x50

    goto/16 :goto_2

    :sswitch_8
    const/16 v2, 0x25b

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x51

    goto/16 :goto_2

    :sswitch_9
    const/16 v2, 0x261

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x52

    goto/16 :goto_2

    :sswitch_a
    const/16 v2, 0x52

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_b
    const/16 v2, 0x347

    const/4 v1, 0x6

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x73

    goto/16 :goto_2

    :sswitch_c
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xf

    goto/16 :goto_2

    :sswitch_d
    const/16 v2, 0x26f

    const/16 v1, 0x8

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x53

    goto/16 :goto_2

    :sswitch_e
    const/16 v2, 0x4ea

    const/16 v1, 0x9

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6c

    goto/16 :goto_2

    :sswitch_f
    const/16 v2, 0x466

    const/16 v1, 0x9

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4c

    goto/16 :goto_2

    :sswitch_10
    const/16 v2, 0x46f

    const/16 v1, 0x9

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4d

    goto/16 :goto_2

    :sswitch_11
    const/16 v2, 0x478

    const/16 v1, 0x9

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4e

    goto/16 :goto_2

    :sswitch_12
    const/16 v2, 0x1b7

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x25

    goto/16 :goto_2

    :sswitch_13
    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_14
    const/16 v2, 0x3f4

    const/4 v1, 0x6

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x35

    goto/16 :goto_2

    :sswitch_15
    const/16 v2, 0x2df

    const/16 v1, 0x9

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x60

    goto/16 :goto_2

    :sswitch_16
    const/16 v2, 0x44a

    const/4 v1, 0x6

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x43

    goto/16 :goto_2

    :sswitch_17
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x3

    goto/16 :goto_2

    :sswitch_18
    const/16 v2, 0x4ac

    const/16 v1, 0x8

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x62

    goto/16 :goto_2

    :sswitch_19
    const/16 v2, 0xf2

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x1a

    goto/16 :goto_2

    :sswitch_1a
    const/16 v2, 0x4d3

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x68

    goto/16 :goto_2

    :sswitch_1b
    const/16 v2, 0x450

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x44

    goto/16 :goto_2

    :sswitch_1c
    const/16 v2, 0x20

    const/4 v1, 0x7

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x6

    goto/16 :goto_2

    :sswitch_1d
    const/16 v2, 0x2d6

    const/16 v1, 0x9

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x61

    goto/16 :goto_2

    :sswitch_1e
    const/16 v2, 0x543

    const/4 v1, 0x6

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6d

    goto/16 :goto_2

    :sswitch_1f
    const/16 v2, 0x549

    const/4 v1, 0x6

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6e

    goto/16 :goto_2

    :sswitch_20
    const/16 v2, 0x23d

    const/16 v1, 0x9

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x47

    goto/16 :goto_2

    :sswitch_21
    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x24

    goto/16 :goto_2

    :sswitch_22
    const/16 v2, 0x147

    const/16 v1, 0xe

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x26

    goto/16 :goto_2

    :sswitch_23
    const/16 v2, 0x277

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x54

    goto/16 :goto_2

    :sswitch_24
    const/16 v2, 0x4ca

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x63

    goto/16 :goto_2

    :sswitch_25
    const/16 v2, 0x67

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_26
    const/16 v2, 0x34d

    const/4 v1, 0x7

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x74

    goto/16 :goto_2

    :sswitch_27
    const/16 v2, 0xd2

    const/16 v1, 0xc

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x17

    goto/16 :goto_2

    :sswitch_28
    const/16 v2, 0x55b

    const/16 v1, 0x8

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x70

    goto/16 :goto_2

    :sswitch_29
    const/16 v2, 0x88

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xe

    goto/16 :goto_2

    :sswitch_2a
    const/16 v2, 0x29e

    const/4 v1, 0x2

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5c

    goto/16 :goto_2

    :sswitch_2b
    const/16 v2, 0x335

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x69

    goto/16 :goto_2

    :sswitch_2c
    const/16 v2, 0x33c

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6b

    goto/16 :goto_2

    :sswitch_2d
    const/16 v2, 0x440

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x40

    goto/16 :goto_2

    :sswitch_2e
    const/16 v2, 0x1e6

    const/4 v1, 0x3

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x38

    goto/16 :goto_2

    :sswitch_2f
    const/16 v2, 0x1fc

    const/4 v1, 0x3

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3c

    goto/16 :goto_2

    :sswitch_30
    const/16 v2, 0x207

    const/4 v1, 0x3

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x42

    goto/16 :goto_2

    :sswitch_31
    const/16 v2, 0x24a

    const/4 v1, 0x3

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4a

    goto/16 :goto_2

    :sswitch_32
    const/16 v2, 0x267

    const/4 v1, 0x3

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x56

    goto/16 :goto_2

    :sswitch_33
    const/16 v2, 0x2a8

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5e

    goto/16 :goto_2

    :sswitch_34
    const/16 v2, 0x354

    const/4 v1, 0x3

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x75

    goto/16 :goto_2

    :sswitch_35
    const/16 v2, 0x399

    const/4 v1, 0x3

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x13

    goto/16 :goto_2

    :sswitch_36
    const/16 v2, 0x39c

    const/4 v1, 0x3

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x14

    goto/16 :goto_2

    :sswitch_37
    const/16 v2, 0x39f

    const/4 v1, 0x3

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x15

    goto/16 :goto_2

    :sswitch_38
    const/16 v2, 0x3b1

    const/4 v1, 0x3

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x23

    goto/16 :goto_2

    :sswitch_39
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    goto/16 :goto_2

    :sswitch_3a
    const/4 v2, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_3b
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    goto/16 :goto_2

    :sswitch_3c
    const/16 v2, 0x246

    const/4 v1, 0x4

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x49

    goto/16 :goto_2

    :sswitch_3d
    const/16 v2, 0x28c

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x58

    goto/16 :goto_2

    :sswitch_3e
    const/16 v2, 0x295

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5a

    goto/16 :goto_2

    :sswitch_3f
    const/16 v2, 0x343

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x72

    goto/16 :goto_2

    :sswitch_40
    const/16 v2, 0x442

    const/4 v1, 0x4

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x41

    goto/16 :goto_2

    :sswitch_41
    const/16 v2, 0x45a

    const/4 v1, 0x4

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x48

    goto/16 :goto_2

    :sswitch_42
    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3f

    goto/16 :goto_2

    :sswitch_43
    const/16 v2, 0x5c

    const/16 v1, 0xb

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_44
    const/16 v2, 0x13

    const/4 v1, 0x5

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_45
    const/16 v2, 0xcd

    const/4 v1, 0x5

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x16

    goto/16 :goto_2

    :sswitch_46
    const/16 v2, 0x107

    const/4 v1, 0x5

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x1c

    goto/16 :goto_2

    :sswitch_47
    const/16 v2, 0x10c

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x1d

    goto/16 :goto_2

    :sswitch_48
    const/16 v2, 0x111

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x1e

    goto/16 :goto_2

    :sswitch_49
    const/16 v2, 0x116

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x1f

    goto/16 :goto_2

    :sswitch_4a
    const/16 v2, 0x11b

    const/4 v1, 0x5

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x20

    goto/16 :goto_2

    :sswitch_4b
    const/16 v2, 0x120

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x21

    goto/16 :goto_2

    :sswitch_4c
    const/16 v2, 0x125

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x22

    goto/16 :goto_2

    :sswitch_4d
    const/16 v2, 0x26a

    const/4 v1, 0x5

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x57

    goto/16 :goto_2

    :sswitch_4e
    const/16 v2, 0x290

    const/4 v1, 0x5

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x59

    goto/16 :goto_2

    :sswitch_4f
    const/16 v2, 0x299

    const/4 v1, 0x5

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5b

    goto/16 :goto_2

    :sswitch_50
    const/16 v2, 0x337

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6a

    goto/16 :goto_2

    :sswitch_51
    const/16 v2, 0x33e

    const/4 v1, 0x5

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x71

    goto/16 :goto_2

    :sswitch_52
    const/16 v2, 0x40b

    const/4 v1, 0x5

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3a

    goto/16 :goto_2

    :sswitch_53
    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_54
    const/16 v2, 0x9b

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x12

    goto/16 :goto_2

    :sswitch_55
    const/16 v2, 0x417

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3e

    goto/16 :goto_2

    :sswitch_56
    const/16 v2, 0x3c4

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2d

    goto/16 :goto_2

    :sswitch_57
    const/16 v2, 0x30

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_58
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_59
    const/16 v2, 0x2e8

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x64

    goto/16 :goto_2

    :sswitch_5a
    const/16 v2, 0x2f0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x65

    goto/16 :goto_2

    :sswitch_5b
    const/16 v2, 0x2f8

    const/16 v1, 0x8

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x66

    goto/16 :goto_2

    :sswitch_5c
    const/16 v2, 0x300

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x67

    goto/16 :goto_2

    :sswitch_5d
    const/16 v2, 0x281

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x55

    goto/16 :goto_2

    :sswitch_5e
    const/16 v2, 0x2a0

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5d

    goto/16 :goto_2

    :sswitch_5f
    const/16 v2, 0x17f

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2a

    goto/16 :goto_2

    :sswitch_60
    const/16 v2, 0x18d

    const/16 v1, 0xe

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2b

    goto/16 :goto_2

    :sswitch_61
    const/16 v2, 0x19b

    const/16 v1, 0xe

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2c

    goto/16 :goto_2

    :sswitch_62
    const/16 v2, 0x410

    const/4 v1, 0x7

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3d

    goto/16 :goto_2

    :sswitch_63
    const/16 v2, 0x27

    const/16 v1, 0x9

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x7

    goto/16 :goto_2

    :sswitch_64
    const/16 v2, 0x402

    const/16 v1, 0x9

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x37

    goto/16 :goto_2

    :sswitch_65
    const/16 v2, 0x45e

    const/16 v1, 0x8

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4b

    goto/16 :goto_2

    :sswitch_66
    const/16 v2, 0x1f5

    const/4 v1, 0x7

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x3b

    goto/16 :goto_2

    :sswitch_67
    const/16 v2, 0x3fa

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x36

    goto/16 :goto_2

    :sswitch_68
    const/16 v2, 0x3df

    const/4 v1, 0x7

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2f

    goto/16 :goto_2

    :sswitch_69
    const/16 v2, 0xfd

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :sswitch_6a
    const/16 v2, 0x3d1

    const/16 v1, 0xe

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x2e

    goto/16 :goto_2

    :sswitch_6b
    const/16 v2, 0x554

    const/4 v1, 0x7

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x6f

    goto/16 :goto_2

    :sswitch_6c
    const/16 v2, 0x94

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x11

    goto/16 :goto_2

    :sswitch_6d
    const/16 v2, 0x3e6

    const/16 v1, 0xe

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x33

    goto/16 :goto_2

    :sswitch_6e
    const/16 v2, 0x4b4

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x5f

    goto/16 :goto_2

    :sswitch_6f
    const/16 v2, 0x24d

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x4f

    goto :goto_2

    :sswitch_70
    const/16 v2, 0x1da

    const/16 v1, 0xc

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x34

    goto :goto_2

    :sswitch_71
    const/16 v2, 0x1c5

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x30

    goto :goto_2

    :sswitch_72
    const/16 v2, 0x1cc

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x31

    goto :goto_2

    :sswitch_73
    const/16 v2, 0xde

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x18

    goto :goto_2

    :sswitch_74
    const/16 v2, 0xe8

    const/16 v1, 0xa

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v6, 0x19

    goto :goto_2

    :sswitch_75
    const/16 v2, 0x1d3

    const/4 v1, 0x7

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, -0x1

    goto :goto_2

    :goto_1
    const/16 v6, 0x32

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 4012
    :pswitch_0
    sput-boolean v3, Lcom/facebook/ads/redexgen/X/21;->A0b:Z

    .line 4013
    :goto_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const v7, 0x1e9d52

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "cOQlsBGiK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Pca576Mi2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v6, v7, :cond_5

    const v0, 0x1e9d5f

    if-eq v6, v0, :cond_4

    :cond_3
    const/4 v5, -0x1

    :goto_4
    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_7

    goto :goto_5

    :cond_4
    :try_start_1
    const/16 v2, 0x44

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/16 v2, 0x40

    const/4 v1, 0x4

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4014
    :cond_7
    :try_start_2
    sput-boolean v3, Lcom/facebook/ads/redexgen/X/21;->A0b:Z

    .line 4015
    :goto_5
    sput-boolean v3, Lcom/facebook/ads/redexgen/X/21;->A0c:Z

    .line 4016
    :cond_8
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4017
    sget-boolean v3, Lcom/facebook/ads/redexgen/X/21;->A0b:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    return v3

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "PnfS4yBzuLkqsKWsH6VMU5nG0nLuKSAS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "b0vuoxjGXMe90u4o0xRnZCMfqoTv3ZqJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 4018
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_0
        -0x7fd6c381 -> :sswitch_1
        -0x7fd6c368 -> :sswitch_2
        -0x7d026749 -> :sswitch_3
        -0x78929d6a -> :sswitch_4
        -0x75f50a1e -> :sswitch_5
        -0x75f4fe9d -> :sswitch_6
        -0x736f875c -> :sswitch_7
        -0x736f83c2 -> :sswitch_8
        -0x736f83c1 -> :sswitch_9
        -0x7327ce1c -> :sswitch_a
        -0x651ebb62 -> :sswitch_b
        -0x6423293b -> :sswitch_c
        -0x604f5117 -> :sswitch_d
        -0x5ca40cc4 -> :sswitch_e
        -0x58520ec1 -> :sswitch_f
        -0x58520eba -> :sswitch_10
        -0x58520eb9 -> :sswitch_11
        -0x4eaed329 -> :sswitch_12
        -0x4892fb4f -> :sswitch_13
        -0x465b3df3 -> :sswitch_14
        -0x43e6c939 -> :sswitch_15
        -0x3ec0fcc5 -> :sswitch_16
        -0x3b33cca0 -> :sswitch_17
        -0x398ae3f6 -> :sswitch_18
        -0x391f0fb4 -> :sswitch_19
        -0x346837ae -> :sswitch_1a
        -0x323788e3 -> :sswitch_1b
        -0x30f57652 -> :sswitch_1c
        -0x2f88a116 -> :sswitch_1d
        -0x2f61ed98 -> :sswitch_1e
        -0x2efd0837 -> :sswitch_1f
        -0x2e9e9441 -> :sswitch_20
        -0x2247b8b1 -> :sswitch_21
        -0x1f0fa2b7 -> :sswitch_22
        -0x19af3b41 -> :sswitch_23
        -0x114fad3e -> :sswitch_24
        -0x10dae90b -> :sswitch_25
        -0x1084b7b7 -> :sswitch_26
        -0xa5988e9 -> :sswitch_27
        -0x35f9fbf -> :sswitch_28
        0x84e -> :sswitch_29
        0xa04 -> :sswitch_2a
        0xa9b -> :sswitch_2b
        0xa9f -> :sswitch_2c
        0xd9b -> :sswitch_2d
        0x11ebd -> :sswitch_2e
        0x127db -> :sswitch_2f
        0x12beb -> :sswitch_30
        0x1334d -> :sswitch_31
        0x135c9 -> :sswitch_32
        0x13aea -> :sswitch_33
        0x158d2 -> :sswitch_34
        0x1821e -> :sswitch_35
        0x18220 -> :sswitch_36
        0x18401 -> :sswitch_37
        0x18c69 -> :sswitch_38
        0x1716e6 -> :sswitch_39
        0x171ac8 -> :sswitch_3a
        0x171ac9 -> :sswitch_3b
        0x252f5f -> :sswitch_3c
        0x25981d -> :sswitch_3d
        0x259b88 -> :sswitch_3e
        0x290a13 -> :sswitch_3f
        0x332327 -> :sswitch_40
        0x33ab63 -> :sswitch_41
        0x27691fb -> :sswitch_42
        0x349f581 -> :sswitch_43
        0x3ab0ea7 -> :sswitch_44
        0x3e53ea5 -> :sswitch_45
        0x3f25a44 -> :sswitch_46
        0x3f25a46 -> :sswitch_47
        0x3f25a49 -> :sswitch_48
        0x3f25e05 -> :sswitch_49
        0x3f25e07 -> :sswitch_4a
        0x3f25e09 -> :sswitch_4b
        0x3f261c6 -> :sswitch_4c
        0x48dce49 -> :sswitch_4d
        0x48dd589 -> :sswitch_4e
        0x48dd8af -> :sswitch_4f
        0x4d36832 -> :sswitch_50
        0x4f0b0e7 -> :sswitch_51
        0x6214744 -> :sswitch_52
        0x9d91379 -> :sswitch_53
        0xadc0551 -> :sswitch_54
        0xea056b3 -> :sswitch_55
        0x1121dbc3 -> :sswitch_56
        0x1255818c -> :sswitch_57
        0x1263990d -> :sswitch_58
        0x12d90f3a -> :sswitch_59
        0x12d90f4c -> :sswitch_5a
        0x12d98b1b -> :sswitch_5b
        0x12d98b22 -> :sswitch_5c
        0x1844c711 -> :sswitch_5d
        0x1e3e8044 -> :sswitch_5e
        0x2f5336ed -> :sswitch_5f
        0x2f54115e -> :sswitch_60
        0x2f541849 -> :sswitch_61
        0x31cf010e -> :sswitch_62
        0x36ad82f4 -> :sswitch_63
        0x391a0b61 -> :sswitch_64
        0x3f3728cd -> :sswitch_65
        0x448ec687 -> :sswitch_66
        0x46260f63 -> :sswitch_67
        0x4c505106 -> :sswitch_68
        0x4de67084 -> :sswitch_69
        0x506ac5a9 -> :sswitch_6a
        0x5abad9cd -> :sswitch_6b
        0x64d2e6e9 -> :sswitch_6c
        0x65e4085b -> :sswitch_6d
        0x6f373556 -> :sswitch_6e
        0x719f1dcb -> :sswitch_6f
        0x75d9a0f0 -> :sswitch_70
        0x78fc0e50 -> :sswitch_71
        0x790521fb -> :sswitch_72
        0x7a05a409 -> :sswitch_73
        0x7a0696bd -> :sswitch_74
        0x7a16dfe7 -> :sswitch_75
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A0W(ZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    .line 4019
    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    if-ne v1, v0, :cond_1

    if-nez p0, :cond_0

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    iget-object p0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 4020
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "SCavqIZfy9E7QicA0dHTliXfXCWB3KSN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4021
    :goto_0
    return v0

    .line 4022
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A14()V
    .locals 3

    .line 4023
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    .line 4024
    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    .line 4025
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    .line 4026
    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A02:F

    .line 4027
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    .line 4028
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    .line 4029
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    .line 4030
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A07()V

    .line 4031
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A06()V

    .line 4032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0W:Lcom/facebook/ads/redexgen/X/Iq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iq;->A09()V

    .line 4033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A00:Lcom/facebook/ads/redexgen/X/In;

    .line 4034
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    .line 4035
    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A14()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A05(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4038
    return-void

    .line 4039
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 4040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A05(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4041
    throw v2
.end method

.method public final A15()V
    .locals 4

    .line 4042
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A15()V

    .line 4043
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A09:I

    .line 4044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0H:J

    .line 4045
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0L:J

    .line 4046
    return-void
.end method

.method public final A16()V
    .locals 2

    .line 4047
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    .line 4048
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A08()V

    .line 4049
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A16()V

    .line 4050
    return-void
.end method

.method public final A17(JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4051
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3c;->A17(JZ)V

    .line 4052
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A06()V

    .line 4053
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0I:J

    .line 4054
    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/21;->A05:I

    .line 4055
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    .line 4056
    iget v7, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    if-eqz v7, :cond_0

    .line 4057
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "7MW3dnHmZ"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "zsetFM6ej"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    add-int/lit8 v0, v7, -0x1

    aget-wide v0, v6, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    .line 4058
    iput v5, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    .line 4059
    :cond_0
    if-eqz p3, :cond_1

    .line 4060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/21;->A0C()V

    .line 4061
    :goto_0
    return-void

    .line 4062
    :cond_1
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A18(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4063
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A18(Z)V

    .line 4064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A13()Lcom/facebook/ads/redexgen/X/AZ;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AZ;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0G:I

    .line 4065
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0G:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    .line 4066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A06(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 4067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0W:Lcom/facebook/ads/redexgen/X/Iq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iq;->A0A()V

    .line 4068
    return-void

    .line 4069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A19([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4070
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 4071
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    .line 4072
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/EP;->A19([Lcom/facebook/ads/internal/exoplayer2/Format;J)V

    .line 4073
    return-void

    .line 4074
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "hJEWxkqVwddaEGRwsPF9GJysu0azMoJ9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "zdhmDyX7lfpv7BLRFINwBKdWRGj92JIy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    array-length v0, v0

    if-ne v3, v0, :cond_1

    .line 4075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x308

    const/16 v1, 0x2d

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20a

    const/16 v1, 0x17

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    add-int/lit8 v0, v1, -0x1

    aput-wide p2, v2, v0

    .line 4077
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0a:[J

    add-int/lit8 v2, v1, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    aput-wide v0, v3, v2

    goto :goto_0

    .line 4078
    :cond_1
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1C(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2

    .line 4079
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/De;->A03:Z

    invoke-static {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/21;->A0W(ZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0P:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A02:I

    if-gt v1, v0, :cond_1

    iget v1, p4, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0P:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    if-gt v1, v0, :cond_1

    .line 4080
    invoke-static {p2, p4}, Lcom/facebook/ads/redexgen/X/21;->A00(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0P:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    if-gt v1, v0, :cond_1

    .line 4081
    invoke-virtual {p3, p4}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4082
    const/4 v0, 0x1

    .line 4083
    :goto_0
    return v0

    .line 4084
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 4085
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1D(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Yj;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 4086
    .local v0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    iget-object v7, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 4087
    .local p0, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IF;->A0C(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 4088
    return v4

    .line 4089
    :cond_0
    const/4 v6, 0x0

    .line 4090
    .local p1, "requiresSecureDecryption":Z
    iget-object v5, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 4091
    .local p3, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    if-eqz v5, :cond_1

    .line 4092
    const/4 v1, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_1

    .line 4093
    invoke-virtual {v5, v1}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v6, v0

    .line 4094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4095
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p1, v7, v6}, Lcom/facebook/ads/redexgen/X/Dk;->A6E(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    .line 4096
    .local v7, "decoderInfo":Lcom/facebook/ads/redexgen/X/De;
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "kTnRYby1s"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "UL9g0IqkI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v3, :cond_3

    .line 4097
    if-eqz v6, :cond_2

    invoke-interface {p1, v7, v4}, Lcom/facebook/ads/redexgen/X/Dk;->A6E(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    return v1

    .line 4098
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 4099
    :cond_3
    invoke-static {p2, v5}, Lcom/facebook/ads/redexgen/X/EP;->A0z(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4100
    return v1

    .line 4101
    :cond_4
    iget-object v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/De;->A0J(Ljava/lang/String;)Z

    move-result v6

    .line 4102
    .local v0, "decoderCapable":Z
    if-eqz v6, :cond_5

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-lez v0, :cond_5

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-lez v0, :cond_5

    .line 4103
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_9

    .line 4104
    iget v6, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v5, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "jeBed4IeUvhTWXlMCWkd0HFF16tIjLHF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "0qAO2CVMQ14qnLtRtzyjuYZeLu4NiNP0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    float-to-double v0, v0

    .line 4105
    invoke-virtual {v3, v6, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A0I(IID)Z

    move-result v6

    .line 4106
    :cond_5
    :goto_2
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/De;->A03:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x10

    .line 4107
    .local v4, "adaptiveSupport":I
    :goto_3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/De;->A06:Z

    if-eqz v0, :cond_6

    const/16 v4, 0x20

    .line 4108
    .local p2, "tunnelingSupport":I
    :cond_6
    if-eqz v6, :cond_7

    const/4 v0, 0x4

    .line 4109
    .local v6, "formatSupport":I
    :goto_4
    or-int/2addr v1, v4

    or-int/2addr v1, v0

    return v1

    .line 4110
    :cond_7
    const/4 v0, 0x3

    goto :goto_4

    .line 4111
    :cond_8
    const/16 v1, 0x8

    goto :goto_3

    .line 4112
    :cond_9
    iget v1, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    mul-int/2addr v1, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dp;->A00()I

    move-result v0

    if-gt v1, v0, :cond_a

    :goto_5
    move v6, v2

    .line 4113
    if-nez v6, :cond_5

    .line 4114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12a

    const/16 v1, 0x1d

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x563

    const/4 v1, 0x1

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x358

    const/4 v1, 0x3

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x357

    const/4 v1, 0x1

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 4115
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1H()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4116
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1H()V

    .line 4117
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    .line 4118
    return-void
.end method

.method public final A1I()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 4119
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4120
    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    .line 4121
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 4122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-ne v0, v1, :cond_0

    .line 4123
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    .line 4124
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4125
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    .line 4126
    :cond_1
    return-void

    .line 4127
    :catchall_0
    move-exception v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    .line 4128
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 4129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-ne v0, v1, :cond_2

    .line 4130
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    .line 4131
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4132
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    .line 4133
    :cond_3
    throw v2
.end method

.method public final A1L(J)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 4134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    .line 4135
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0a:[J

    const/4 v3, 0x0

    aget-wide v1, v0, v3

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 4136
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0Z:[J

    aget-wide v0, v2, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    .line 4137
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    .line 4138
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0a:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0A:I

    invoke-static {v1, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4140
    :cond_0
    return-void
.end method

.method public final A1M(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9

    .line 4141
    const/16 v2, 0x387

    const/16 v1, 0xa

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v2, 0x391

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x373

    const/16 v1, 0xb

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x37e

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    .line 4142
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4143
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "iz6RCOhSh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "D9RR8bf8p"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 4144
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4145
    .local p1, "hasCrop":Z
    :goto_0
    if-eqz v3, :cond_6

    .line 4146
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    .line 4147
    :goto_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    .line 4148
    if-eqz v3, :cond_5

    .line 4149
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    .line 4150
    :goto_2
    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    .line 4151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    .line 4152
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_4

    .line 4153
    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0B:I

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    const/16 v0, 0x10e

    if-ne v1, v0, :cond_3

    .line 4154
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    .line 4155
    .local p0, "rotatedHeight":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A08:I

    .line 4156
    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A06:I

    .line 4157
    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/21;->A01:F

    .line 4158
    .end local p0    # "rotatedHeight":I
    :cond_3
    :goto_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0F:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 4159
    return-void

    .line 4160
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A07:I

    goto :goto_3

    .line 4161
    :cond_5
    const/16 v2, 0x3cb

    const/4 v1, 0x6

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 4162
    :cond_6
    const/16 v2, 0x54f

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public final A1N(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4163
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A1N(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Iz;->A04(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 4165
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A02:F

    .line 4166
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0B:I

    .line 4167
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/YY;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 4168
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A04:I

    .line 4169
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0K:J

    .line 4170
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    if-eqz v0, :cond_0

    .line 4171
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/21;->A1T()V

    .line 4172
    :cond_0
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/De;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 4173
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A1B()[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/21;->A04(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;[Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0P:Lcom/facebook/ads/redexgen/X/Im;

    .line 4174
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/21;->A0P:Lcom/facebook/ads/redexgen/X/Im;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0Y:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0G:I

    .line 4175
    invoke-direct {p0, p3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/21;->A03(Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Im;ZI)Landroid/media/MediaFormat;

    move-result-object v3

    .line 4176
    .local p0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 4177
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/21;->A0U(Lcom/facebook/ads/redexgen/X/De;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 4178
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "HUdK6ej9G5uy2eoW8HL148MSYBaQJURn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "oyZJZuVgjRVeIXKioVrHS7OTGib3SAbN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    .line 4179
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0V:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/internal/exoplayer2/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    .line 4180
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    .line 4181
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4182
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    if-eqz v0, :cond_3

    .line 4183
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Lcom/facebook/ads/redexgen/X/21;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Il;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A00:Lcom/facebook/ads/redexgen/X/In;

    .line 4184
    :cond_3
    return-void
.end method

.method public final A1Q(Ljava/lang/String;JJ)V
    .locals 6

    .line 4185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    move-wide v2, p2

    move-wide v4, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Iz;->A07(Ljava/lang/String;JJ)V

    .line 4186
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/21;->A0V(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0Q:Z

    .line 4187
    return-void
.end method

.method public final A1R(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4188
    move-object/from16 v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/21;->A0I:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    move-wide/from16 v11, p1

    if-nez v0, :cond_0

    .line 4189
    iput-wide v11, v10, Lcom/facebook/ads/redexgen/X/21;->A0I:J

    .line 4190
    :cond_0
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/21;->A0M:J

    move-wide/from16 v6, p9

    sub-long v2, v6, v0

    .line 4191
    .local v4, "presentationTimeUs":J
    const/16 v16, 0x1

    move-object/from16 v14, p5

    move/from16 v13, p7

    if-eqz p11, :cond_1

    .line 4192
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/21;->A0I(Landroid/media/MediaCodec;IJ)V

    .line 4193
    return v16

    .line 4194
    :cond_1
    sub-long v8, v6, v11

    .line 4195
    .local v2, "earlyUs":J
    iget-object v5, v10, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    iget-object v4, v10, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    sget-object v15, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v15, v0

    const/4 v0, 0x0

    aget-object v15, v15, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v15, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "tTKgXyDwmZTS9W3DU5UkyT40ENaKbHyT"

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const-string v1, "ymAWKg2GShyJej9UBV5xPoPh0gH7RDQq"

    const/4 v0, 0x0

    aput-object v1, v15, v0

    const/16 v21, 0x0

    if-ne v5, v4, :cond_3

    .line 4196
    invoke-static {v8, v9}, Lcom/facebook/ads/redexgen/X/21;->A0O(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4197
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/21;->A0I(Landroid/media/MediaCodec;IJ)V

    .line 4198
    return v16

    .line 4199
    :cond_2
    return v21

    .line 4200
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const-wide/16 v17, 0x3e8

    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "Tj6uZUYZuPZ7pCoRyZtHZtCub82IEIjs"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "wN6Cz1ZftXTKk8PfKKvkhZq0bAWp3Laf"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    mul-long v19, v19, v17

    .line 4201
    .local v14, "elapsedRealtimeNowUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/EP;->A7F()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    const/4 v15, 0x1

    .line 4202
    .local v4, "isStarted":Z
    :goto_0
    iget-boolean v0, v10, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    if-eqz v0, :cond_4

    if-eqz v15, :cond_8

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/21;->A0L:J

    sub-long v0, v19, v4

    .line 4203
    invoke-direct {v10, v8, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/21;->A0S(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4204
    .end local v4    # "isStarted":Z
    .restart local p11    # null:Z
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_6

    .line 4205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v5, p0

    .end local v2    # "earlyUs":J
    .restart local v6
    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "oWL9SRYwVyvR2JEBKybOkKnbuF7SsiRC"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "NzhSZMUYEy5Cfuxee7W6IeInRPwNjtL0"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    move-wide v8, v2

    move-object v6, v14

    move v7, v13

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/21;->A0J(Landroid/media/MediaCodec;IJJ)V

    .line 4206
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "41VA6FIKazuT7AmZNA03mPvHgUe4JG9W"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    move-wide v8, v2

    move-object v6, v14

    move v7, v13

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/21;->A0J(Landroid/media/MediaCodec;IJJ)V

    goto :goto_1

    .line 4207
    .end local v6
    .restart local v2    # "earlyUs":J
    .end local v2    # "earlyUs":J
    .restart local v6
    :cond_6
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/21;->A0H(Landroid/media/MediaCodec;IJ)V

    goto :goto_1

    .line 4208
    :cond_7
    const/4 v15, 0x0

    goto :goto_0

    .line 4209
    :cond_8
    if-eqz v15, :cond_9

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/21;->A0I:J

    cmp-long v4, v11, v0

    if-nez v4, :cond_a

    .line 4210
    .end local v4
    .restart local p11    # null:Z
    :cond_9
    return v21

    .line 4211
    :cond_a
    move-wide/from16 v4, p3

    sub-long v19, v19, v4

    .line 4212
    .local v3, "elapsedSinceStartOfLoopUs":J
    sub-long v8, v8, v19

    .line 4213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 4214
    .local v1, "systemTimeNs":J
    mul-long v8, v8, v17

    add-long v0, v15, v8

    .line 4215
    .local v6, "unadjustedFrameReleaseTimeNs":J
    iget-object v8, v10, Lcom/facebook/ads/redexgen/X/21;->A0W:Lcom/facebook/ads/redexgen/X/Iq;

    .line 4216
    invoke-virtual {v8, v6, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/Iq;->A08(JJ)J

    move-result-wide v29

    .line 4217
    .local v0, "adjustedReleaseTimeNs":J
    sub-long v0, v29, v15

    div-long v0, v0, v17

    .line 4218
    invoke-direct {v10, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/21;->A0Q(JJ)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4219
    move-object/from16 v22, p0

    .end local v2
    .local v6, "earlyUs":J
    .local v27, "unadjustedFrameReleaseTimeNs":J
    move-object/from16 v23, v14

    move/from16 v24, v13

    .end local v4
    .local v29, "presentationTimeUs":J
    move-wide/from16 v25, v2

    move-wide/from16 v27, v11

    invoke-direct/range {v22 .. v28}, Lcom/facebook/ads/redexgen/X/21;->A0T(Landroid/media/MediaCodec;IJJ)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4220
    return v21

    .line 4221
    .end local v2
    .end local v4
    .local v6, "earlyUs":J
    .restart local v27    # "unadjustedFrameReleaseTimeNs":J
    .restart local v29    # "presentationTimeUs":J
    :cond_b
    invoke-direct {v10, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/21;->A0R(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4222
    .end local v29    # "presentationTimeUs":J
    .local p6, "presentationTimeUs":J
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/21;->A0G(Landroid/media/MediaCodec;IJ)V

    .line 4223
    const/4 v0, 0x1

    return v0

    .line 4224
    .end local p6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    .end local v29    # "presentationTimeUs":J
    .restart local p6    # "presentationTimeUs":J
    :cond_c
    sget v5, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v4, 0x15

    if-lt v5, v4, :cond_d

    .line 4225
    const-wide/32 v5, 0xc350

    cmp-long v4, v0, v5

    if-gez v4, :cond_f

    .line 4226
    move-object/from16 v24, p0

    .end local p6    # "presentationTimeUs":J
    .local p11, "presentationTimeUs":J
    move-object/from16 v25, v14

    move/from16 v26, v13

    move-wide/from16 v27, v2

    invoke-direct/range {v24 .. v30}, Lcom/facebook/ads/redexgen/X/21;->A0J(Landroid/media/MediaCodec;IJJ)V

    .line 4227
    const/4 v0, 0x1

    return v0

    .line 4228
    .end local p11    # "presentationTimeUs":J
    .restart local p6    # "presentationTimeUs":J
    .end local p6    # "presentationTimeUs":J
    .restart local p11    # "presentationTimeUs":J
    :cond_d
    const-wide/16 v5, 0x7530

    cmp-long v4, v0, v5

    if-gez v4, :cond_f

    .line 4229
    const-wide/16 v5, 0x2af8

    cmp-long v4, v0, v5

    if-lez v4, :cond_e

    .line 4230
    const-wide/16 v4, 0x2710

    sub-long/2addr v0, v4

    :try_start_0
    div-long v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4231
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4232
    return v21

    .line 4233
    .end local p0    # "e":Ljava/lang/InterruptedException;
    :cond_e
    :goto_2
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/21;->A0H(Landroid/media/MediaCodec;IJ)V

    .line 4234
    const/4 v0, 0x1

    return v0

    .line 4235
    :cond_f
    return v21

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1S(Lcom/facebook/ads/redexgen/X/De;)Z
    .locals 1

    .line 4236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/21;->A0U(Lcom/facebook/ads/redexgen/X/De;)Z

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

.method public final A1T()V
    .locals 2

    .line 4237
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    if-nez v0, :cond_0

    .line 4238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    .line 4239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0X:Lcom/facebook/ads/redexgen/X/Iz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A03(Landroid/view/Surface;)V

    .line 4240
    :cond_0
    return-void
.end method

.method public final A7Y(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 4241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4242
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "M4hKmbj6QiDhWM6pD0tSNqk85KgZRxnW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/21;->A0M(Landroid/view/Surface;)V

    .line 4243
    :cond_0
    :goto_0
    return-void

    .line 4244
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4245
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0F:I

    .line 4246
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1E()Landroid/media/MediaCodec;

    move-result-object v1

    .line 4247
    .local p0, "codec":Landroid/media/MediaCodec;
    if-eqz v1, :cond_0

    .line 4248
    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0F:I

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_0

    .line 4249
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/EP;->A7Y(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A89()Z
    .locals 9

    .line 4250
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3c;->A89()Z

    move-result v0

    const/4 v8, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0R:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0N:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0O:Landroid/view/Surface;

    if-eq v0, v1, :cond_1

    .line 4251
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1E()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/21;->A0S:Z

    if-eqz v0, :cond_3

    .line 4252
    :cond_1
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4253
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A0e:[Ljava/lang/String;

    const-string v1, "3PsRT4XFV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "WWSFTmL3V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v8

    .line 4254
    :cond_3
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    const/4 v7, 0x0

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 4255
    return v7

    .line 4256
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    .line 4257
    return v8

    .line 4258
    :cond_5
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/21;->A0J:J

    .line 4259
    return v7
.end method
