.class public abstract Lcom/facebook/ads/redexgen/X/Bb;
.super Lcom/facebook/ads/redexgen/X/Vr;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UJ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Vr<",
        "Lcom/facebook/ads/redexgen/X/BT;",
        "Lcom/facebook/ads/redexgen/X/BS;",
        "Lcom/facebook/ads/redexgen/X/GD;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/UJ;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bb;->A0K()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 23499
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/BT;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/BS;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vr;-><init>([Lcom/facebook/ads/redexgen/X/Vt;[Lcom/facebook/ads/redexgen/X/Vs;)V

    .line 23500
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bb;->A00:Ljava/lang/String;

    .line 23501
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0a(I)V

    .line 23502
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/BS;Z)Lcom/facebook/ads/redexgen/X/GD;
    .locals 7

    .line 23503
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 23504
    .local p0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Bb;->A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;

    move-result-object v4

    .line 23505
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/BT;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/BS;->A09(JLcom/facebook/ads/redexgen/X/GC;J)V

    .line 23506
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BV;->A01(I)V

    .line 23507
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_0 .. :try_end_0} :catch_0

    .line 23508
    .end local p0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GC;
    :catch_0
    move-exception v0

    .line 23509
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GD;
    return-object v0
.end method

.method private final A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GD;
    .locals 3

    .line 23510
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A0J(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/BT;
    .locals 1

    .line 23511
    new-instance v0, Lcom/facebook/ads/redexgen/X/BT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BT;-><init>()V

    return-object v0
.end method

.method private final A0I()Lcom/facebook/ads/redexgen/X/BS;
    .locals 1

    .line 23512
    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3a;-><init>(Lcom/facebook/ads/redexgen/X/Bb;)V

    return-object v0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bb;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bb;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x5at
        0x51t
        0x4ct
        0x44t
        0x51t
        0x57t
        0x40t
        0x51t
        0x50t
        0x14t
        0x50t
        0x51t
        0x57t
        0x5bt
        0x50t
        0x51t
        0x14t
        0x51t
        0x46t
        0x46t
        0x5bt
        0x46t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0V()Lcom/facebook/ads/redexgen/X/Vt;
    .locals 1

    .line 23513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bb;->A0H()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0X()Lcom/facebook/ads/redexgen/X/Vs;
    .locals 1

    .line 23514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bb;->A0I()Lcom/facebook/ads/redexgen/X/BS;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Y(Lcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Vs;Z)Ljava/lang/Exception;
    .locals 1

    .line 23515
    check-cast p1, Lcom/facebook/ads/redexgen/X/BT;

    check-cast p2, Lcom/facebook/ads/redexgen/X/BS;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bb;->A0F(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/BS;Z)Lcom/facebook/ads/redexgen/X/GD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Z(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1

    .line 23516
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bb;->A0G(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/GD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0c(Lcom/facebook/ads/redexgen/X/Vs;)V
    .locals 0

    .line 23517
    check-cast p1, Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Bb;->A0e(Lcom/facebook/ads/redexgen/X/BS;)V

    return-void
.end method

.method public abstract A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/BS;)V
    .locals 0

    .line 23518
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Vr;->A0c(Lcom/facebook/ads/redexgen/X/Vs;)V

    .line 23519
    return-void
.end method

.method public final ADs(J)V
    .locals 0

    .line 23520
    return-void
.end method
