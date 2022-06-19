.class public abstract Lcom/facebook/ads/redexgen/X/C3;
.super Lcom/facebook/ads/redexgen/X/Ya;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Ya<",
        "Lcom/facebook/ads/redexgen/X/By;",
        "Lcom/facebook/ads/redexgen/X/Bs;",
        "Lcom/facebook/ads/redexgen/X/GD;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/am;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C3;->A0K()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 23604
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/By;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ya;-><init>([Lcom/facebook/ads/redexgen/X/YY;[Lcom/facebook/ads/redexgen/X/YZ;)V

    .line 23605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C3;->A00:Ljava/lang/String;

    .line 23606
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ya;->A0a(I)V

    .line 23607
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/By;Lcom/facebook/ads/redexgen/X/Bs;Z)Lcom/facebook/ads/redexgen/X/GD;
    .locals 7

    .line 23608
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YY;->A01:Ljava/nio/ByteBuffer;

    .line 23609
    .local p0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/C3;->A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v4

    .line 23610
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/By;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Bs;->A09(JLcom/facebook/ads/redexgen/X/GC;J)V

    .line 23611
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BV;->A01(I)V

    .line 23612
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_0 .. :try_end_0} :catch_0

    .line 23613
    .end local p0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    :catch_0
    move-exception v0

    .line 23614
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GD;
    return-object v0
.end method

.method private final A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GD;
    .locals 3

    .line 23615
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C3;->A0J(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/By;
    .locals 1

    .line 23616
    new-instance v0, Lcom/facebook/ads/redexgen/X/By;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/By;-><init>()V

    return-object v0
.end method

.method private final A0I()Lcom/facebook/ads/redexgen/X/Bs;
    .locals 1

    .line 23617
    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3a;-><init>(Lcom/facebook/ads/redexgen/X/C3;)V

    return-object v0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/C3;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C3;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x58t
        0x4ft
        0x62t
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x4ft
        0x4et
        0xat
        0x4et
        0x4ft
        0x4dt
        0x59t
        0x4et
        0x4ft
        0xat
        0x4ft
        0x5ct
        0x5ct
        0x59t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0V()Lcom/facebook/ads/redexgen/X/YY;
    .locals 1

    .line 23618
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C3;->A0H()Lcom/facebook/ads/redexgen/X/By;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X()Lcom/facebook/ads/redexgen/X/YZ;
    .locals 1

    .line 23619
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C3;->A0I()Lcom/facebook/ads/redexgen/X/Bs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Y(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/YZ;Z)Ljava/lang/Exception;
    .locals 1

    .line 23620
    check-cast p1, Lcom/facebook/ads/redexgen/X/By;

    check-cast p2, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/C3;->A0F(Lcom/facebook/ads/redexgen/X/By;Lcom/facebook/ads/redexgen/X/Bs;Z)Lcom/facebook/ads/redexgen/X/GD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .line 23621
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C3;->A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0c(Lcom/facebook/ads/redexgen/X/YZ;)V
    .locals 0

    .line 23622
    check-cast p1, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/C3;->A0e(Lcom/facebook/ads/redexgen/X/Bs;)V

    return-void
.end method

.method public abstract A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/Bs;)V
    .locals 0

    .line 23623
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ya;->A0c(Lcom/facebook/ads/redexgen/X/YZ;)V

    .line 23624
    return-void
.end method

.method public final ADr(J)V
    .locals 0

    .line 23625
    return-void
.end method
