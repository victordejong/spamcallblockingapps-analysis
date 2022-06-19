.class public final Lcom/facebook/ads/redexgen/X/UI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UI;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UI;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v3, 0xfe

    sget-object v2, Lcom/facebook/ads/redexgen/X/UI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UI;->A01:[Ljava/lang/String;

    const-string v1, "iT0vrq5pCeW2THZzKUXnGOxnl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UI;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ct
        0x49t
        0x49t
        0x58t
        0x50t
        0x4dt
        0x49t
        0x58t
        0x59t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x5et
        0x4ft
        0x58t
        0x5ct
        0x49t
        0x58t
        0x1dt
        0x59t
        0x58t
        0x5et
        0x52t
        0x59t
        0x58t
        0x4ft
        0x1dt
        0x5bt
        0x52t
        0x4ft
        0x1dt
        0x48t
        0x53t
        0x4et
        0x48t
        0x4dt
        0x4dt
        0x52t
        0x4ft
        0x49t
        0x58t
        0x59t
        0x1dt
        0x5bt
        0x52t
        0x4ft
        0x50t
        0x5ct
        0x49t
        0x6t
        0x17t
        0x17t
        0xbt
        0xet
        0x4t
        0x6t
        0x13t
        0xet
        0x8t
        0x9t
        0x48t
        0x4t
        0x2t
        0x6t
        0x4at
        0x51t
        0x57t
        0x5ft
        0x21t
        0x30t
        0x30t
        0x2ct
        0x29t
        0x23t
        0x21t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x6ft
        0x23t
        0x25t
        0x21t
        0x6dt
        0x77t
        0x70t
        0x78t
        0x52t
        0x43t
        0x43t
        0x5ft
        0x5at
        0x50t
        0x52t
        0x47t
        0x5at
        0x5ct
        0x5dt
        0x1ct
        0x57t
        0x45t
        0x51t
        0x40t
        0x46t
        0x51t
        0x40t
        0x30t
        0x21t
        0x21t
        0x3dt
        0x38t
        0x32t
        0x30t
        0x25t
        0x38t
        0x3et
        0x3ft
        0x7et
        0x21t
        0x36t
        0x22t
        0x18t
        0x9t
        0x9t
        0x15t
        0x10t
        0x1at
        0x18t
        0xdt
        0x10t
        0x16t
        0x17t
        0x56t
        0xdt
        0xdt
        0x14t
        0x15t
        0x52t
        0x1t
        0x14t
        0x15t
        0x40t
        0x51t
        0x51t
        0x4dt
        0x48t
        0x42t
        0x40t
        0x55t
        0x48t
        0x4et
        0x4ft
        0xet
        0x59t
        0xct
        0x4ct
        0x51t
        0x15t
        0xct
        0x42t
        0x44t
        0x40t
        0xct
        0x17t
        0x11t
        0x19t
        0x45t
        0x54t
        0x54t
        0x48t
        0x4dt
        0x47t
        0x45t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0xbt
        0x5ct
        0x9t
        0x49t
        0x54t
        0x10t
        0x9t
        0x52t
        0x50t
        0x50t
        0x13t
        0x2t
        0x2t
        0x1et
        0x1bt
        0x11t
        0x13t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x5dt
        0xat
        0x5ft
        0x3t
        0x7t
        0x1bt
        0x11t
        0x19t
        0x6t
        0x1bt
        0x1ft
        0x17t
        0x5ft
        0x6t
        0xat
        0x41t
        0x15t
        0x61t
        0x70t
        0x70t
        0x6ct
        0x69t
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2ft
        0x78t
        0x2dt
        0x73t
        0x75t
        0x62t
        0x72t
        0x69t
        0x70t
        0x44t
        0x55t
        0x48t
        0x44t
        0x1ft
        0x46t
        0x44t
        0x44t
        0x7et
        0x6ft
        0x72t
        0x7et
        0x25t
        0x72t
        0x27t
        0x79t
        0x79t
        0x6bt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sox4WuOq0TzIbL1pVQRnVxe8EBadlUPb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2lXobPjC6BwvdKsVX1k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Kk5ZyttyIljluALdHAyiHiXgfRI8J1M2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CrQMC490"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0lX3RHoSvNcpsh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TdXajqnVmLxdgqkoIzEw0G6czwsZJhJB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y9VCSn4c1mFHzoxYG8JX4E0tAgbH2uwz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pAmzoIC7DcydcfAHQzJh05xgX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UI;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A4D(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/UJ;
    .locals 4

    .line 56093
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 56094
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56095
    :sswitch_0
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xa7

    const/16 v1, 0x15

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const/16 v2, 0xbc

    const/16 v1, 0x1c

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_a
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 56096
    :pswitch_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2o;-><init>()V

    return-object v0

    .line 56097
    :pswitch_1
    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2t;-><init>(Ljava/util/List;)V

    return-object v0

    .line 56098
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    return-object v0

    .line 56099
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/2r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2r;-><init>()V

    return-object v0

    .line 56100
    :pswitch_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/2s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2s;-><init>()V

    return-object v0

    .line 56101
    :pswitch_5
    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2q;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2q;-><init>(Ljava/util/List;)V

    return-object v0

    .line 56102
    :pswitch_6
    iget-object v2, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3N;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/3N;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 56103
    :pswitch_7
    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/3J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3J;-><init>(I)V

    return-object v0

    .line 56104
    :pswitch_8
    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2v;-><init>(Ljava/util/List;)V

    return-object v0

    .line 56105
    :pswitch_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/2u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2u;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_0
        -0x4a6813e3 -> :sswitch_1
        -0x3d28a9ba -> :sswitch_2
        -0x3be2f26c -> :sswitch_3
        0x2935f49f -> :sswitch_4
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_6
        0x5d578071 -> :sswitch_7
        0x5d578432 -> :sswitch_8
        0x63771bad -> :sswitch_9
        0x64f8068a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final AEJ(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 5

    .line 56106
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 56107
    .local p0, "mimeType":Ljava/lang/String;
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56108
    const/16 v2, 0xf4

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56109
    const/16 v2, 0x7a

    const/16 v1, 0x14

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56110
    const/16 v2, 0xa7

    const/16 v1, 0x15

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56111
    const/16 v2, 0xd8

    const/16 v1, 0x14

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56112
    const/16 v2, 0xbc

    const/16 v1, 0x1c

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/UI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/UI;->A01:[Ljava/lang/String;

    const-string v1, "fD89FHhZTo7LCQx1sk3B3y6pUNx6g196"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56113
    const/16 v2, 0x32

    const/16 v1, 0x13

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56114
    const/16 v2, 0x8e

    const/16 v1, 0x19

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56115
    const/16 v2, 0x45

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56116
    const/16 v2, 0x58

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56117
    const/16 v2, 0x6b

    const/16 v1, 0xf

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 56118
    :goto_0
    return v0

    .line 56119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
