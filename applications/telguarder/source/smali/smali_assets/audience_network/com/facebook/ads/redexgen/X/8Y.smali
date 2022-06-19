.class public final Lcom/facebook/ads/redexgen/X/8Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8W;,
        Lcom/facebook/ads/redexgen/X/8X;
    }
.end annotation


# static fields
.field public static A00:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A01:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A02:Z

.field public static A03:Z

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8Z;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A0A:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/8W;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0B:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/8X;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 18062
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A04()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    .line 18063
    const/4 v3, 0x0

    sput-boolean v3, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    .line 18064
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18065
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18066
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    .line 18067
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A06:Ljava/util/List;

    .line 18068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18069
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    .line 18070
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18071
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18072
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18073
    sput-boolean v3, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8D;)I
    .locals 4

    .line 18075
    const/16 v2, 0x1c9

    const/4 v1, 0x7

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xc8

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1j:I

    if-ne v0, p1, :cond_0

    .line 18076
    return v3

    .line 18077
    :cond_0
    const/16 v2, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18078
    return v3

    .line 18079
    :cond_1
    const/16 v2, 0x1b5

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18080
    return v3

    .line 18081
    :cond_2
    const/16 v2, 0x182

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18082
    const/16 v0, 0x32

    return v0

    .line 18083
    :cond_3
    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18084
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J6;->A05(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 18085
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02()Ljava/util/List;
    .locals 4

    .line 18086
    sget-object v3, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "zk7JrRKdkqRVNKieaZlWPGFPyzHfiD6w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fyoGHU5IjzPGh6SPmUkkru2DTQYQg6uC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 18087
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1d0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x69t
        -0x56t
        -0x53t
        -0x53t
        -0x4et
        -0x43t
        -0x4et
        -0x48t
        -0x49t
        -0x56t
        -0x4bt
        -0x6et
        -0x49t
        -0x51t
        -0x48t
        0x69t
        -0x7at
        0x69t
        -0x35t
        -0x41t
        0xct
        0x4t
        0x12t
        0x12t
        0x0t
        0x6t
        0x4t
        -0x41t
        -0x24t
        -0x41t
        -0x2bt
        -0x37t
        0x1ct
        0x1et
        0xbt
        0x1dt
        0x22t
        0x19t
        0xet
        -0x14t
        0x18t
        0xdt
        0xet
        -0x37t
        -0x1at
        -0x37t
        -0x2et
        -0x5bt
        -0x3dt
        -0x30t
        -0x77t
        -0x2at
        -0x7et
        -0x32t
        -0x2ft
        -0x37t
        -0x7et
        -0x5at
        -0x39t
        -0x3ct
        -0x29t
        -0x37t
        -0x7et
        -0x59t
        -0x28t
        -0x39t
        -0x30t
        -0x2at
        -0x70t
        -0x7et
        -0x5bt
        -0x2ft
        -0x30t
        -0x2at
        -0x39t
        -0x26t
        -0x2at
        -0x7et
        -0x35t
        -0x2bt
        -0x7et
        -0x30t
        -0x29t
        -0x32t
        -0x32t
        -0x70t
        -0x4at
        -0x1et
        -0x18t
        -0x1ft
        -0x19t
        -0x28t
        -0x1bt
        -0x53t
        -0x6dt
        -0x2et
        -0xdt
        -0x10t
        0x3t
        -0xbt
        -0x52t
        -0xft
        0x0t
        -0x11t
        0x1t
        -0xat
        -0x52t
        -0x10t
        -0xdt
        -0xft
        -0x11t
        0x3t
        0x1t
        -0xdt
        -0x52t
        -0x3t
        -0xct
        -0x52t
        -0xdt
        0x4t
        -0xdt
        -0x4t
        0x2t
        -0x52t
        0x5t
        -0x9t
        0x2t
        -0xat
        -0x52t
        0x1t
        0x3t
        -0x10t
        0x2t
        0x7t
        -0x2t
        -0xdt
        -0x52t
        -0x35t
        -0x52t
        -0x38t
        -0x5t
        -0x1at
        -0x18t
        -0x18t
        -0x19t
        -0x18t
        -0x19t
        -0x5dt
        -0x14t
        -0xft
        -0x50t
        -0x10t
        -0x18t
        -0x10t
        -0xet
        -0xbt
        -0x4t
        -0x5dt
        -0x11t
        -0xet
        -0x16t
        -0x5dt
        -0x11t
        -0x14t
        -0x10t
        -0x14t
        -0x9t
        -0x5ct
        -0x5dt
        -0x31t
        -0x1ct
        -0xat
        -0x9t
        -0x5dt
        -0x18t
        -0x7t
        -0x18t
        -0xft
        -0x9t
        -0x43t
        -0x5dt
        -0xct
        0x27t
        0x12t
        0x14t
        0x1ft
        0x23t
        0x18t
        0x1et
        0x1dt
        -0x31t
        -0xdt
        0x14t
        0x11t
        0x24t
        0x16t
        -0x31t
        -0xct
        0x25t
        0x14t
        0x1dt
        0x23t
        -0x31t
        0x26t
        0x18t
        0x23t
        0x17t
        -0x31t
        0x22t
        0x24t
        0x11t
        0x23t
        0x28t
        0x1ft
        0x14t
        -0x31t
        -0x14t
        -0x31t
        -0x7bt
        -0x48t
        -0x5dt
        -0x5bt
        -0x50t
        -0x4ct
        -0x57t
        -0x51t
        -0x52t
        0x60t
        -0x5ct
        -0x4bt
        -0x4et
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x54t
        -0x51t
        -0x59t
        -0x59t
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x5ct
        -0x5bt
        -0x5et
        -0x4bt
        -0x59t
        0x60t
        -0x5bt
        -0x4at
        -0x5bt
        -0x52t
        -0x4ct
        0x6et
        -0x37t
        -0x4t
        -0x19t
        -0x17t
        -0xct
        -0x8t
        -0x13t
        -0xdt
        -0xet
        -0x5ct
        -0x9t
        -0x14t
        -0xdt
        -0x7t
        -0x10t
        -0x18t
        -0x5ct
        -0xet
        -0xdt
        -0x8t
        -0x5ct
        -0x14t
        -0x1bt
        -0xct
        -0xct
        -0x17t
        -0xet
        -0x5ct
        -0x14t
        -0x17t
        -0xat
        -0x17t
        -0x4et
        -0x7at
        -0x7et
        -0x7ft
        -0x4bt
        -0x5ct
        -0x57t
        -0x5bt
        -0x52t
        -0x5dt
        -0x5bt
        -0x72t
        -0x5bt
        -0x4ct
        -0x49t
        -0x51t
        -0x4et
        -0x55t
        -0x14t
        0x11t
        0x9t
        0x12t
        -0x3dt
        -0x19t
        0x8t
        0x5t
        0x18t
        0xat
        -0x3dt
        -0x18t
        0x19t
        0x8t
        0x11t
        0x17t
        -0x3dt
        0x1at
        0xct
        0x17t
        0xbt
        -0x3dt
        0x16t
        0x18t
        0x5t
        0x17t
        0x1ct
        0x13t
        0x8t
        -0x3dt
        -0x20t
        -0x3dt
        -0x63t
        -0x48t
        -0x48t
        0x69t
        -0x4at
        -0x56t
        -0x49t
        -0x3et
        0x69t
        -0x52t
        -0x41t
        -0x52t
        -0x49t
        -0x43t
        -0x44t
        0x69t
        -0x48t
        -0x51t
        0x69t
        -0x44t
        -0x42t
        -0x55t
        -0x43t
        -0x3et
        -0x47t
        -0x52t
        0x69t
        -0x54t
        -0x48t
        -0x53t
        -0x52t
        -0x7dt
        0x69t
        -0x8t
        -0x6t
        -0xbt
        -0x6t
        -0x9t
        0xat
        -0x9t
        -0xbt
        0x2t
        0x5t
        -0x3t
        -0x3t
        -0x1t
        0x4t
        -0x3t
        -0x5at
        -0x4dt
        -0x48t
        -0x5dt
        -0x58t
        -0x57t
        -0x48t
        -0x57t
        -0x59t
        -0x48t
        -0x53t
        -0x4dt
        -0x4et
        -0x5dt
        -0x45t
        -0x4dt
        -0x5dt
        -0x49t
        -0x53t
        -0x55t
        -0x4et
        -0x5bt
        -0x50t
        -0x5dt
        -0x58t
        -0x5bt
        -0x48t
        -0x5bt
        -0x5dt
        -0x50t
        -0x4dt
        -0x55t
        -0x55t
        -0x53t
        -0x4et
        -0x55t
        -0x6t
        -0x8t
        -0x6t
        -0x1t
        -0x4t
        -0x3ct
        -0x3bt
        -0x41t
        -0x34t
        -0x31t
        -0x39t
        -0x39t
        -0x37t
        -0x32t
        -0x39t
        -0x31t
        -0x22t
        -0x29t
        -0x29t
        -0x32t
        -0x2bt
        -0x1ct
        -0x15t
        -0x22t
        -0x26t
        -0xft
        -0x24t
        -0x19t
        -0x1ct
        -0x21t
        -0x24t
        -0x11t
        -0x1ct
        -0x16t
        -0x17t
        0x10t
        0x7t
        0x16t
        0x19t
        0x11t
        0x14t
        0xdt
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7RJhgfAHrbCmdmvJO272XvW7u1fNB6AD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SRAGcoTEjCaoOjv1TM3aABjegfXmDbQ2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TJJTsgNcbEXqB1u8vE3MpXQkjlg70u98"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t1ySRzXu9XpLihhV0EPpMNwY8xH1TItL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3rsqEGuQmw5YOXxTuvx2sfjKNK9b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZMUzhorUr0JjW6bP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tg0Wl7kwCnCjIdXfhu7KKTsHjGWToUDr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3JMITBtDsKuz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/8D;II)V
    .locals 6

    .line 18088
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A2F:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x152

    const/16 v1, 0x21

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x57

    const/16 v1, 0x9

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18089
    const/16 v2, 0x1ab

    const/16 v1, 0xa

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18090
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 6
    .param p0    # Lcom/facebook/ads/redexgen/X/8D;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18091
    move-object v4, p0

    if-nez v4, :cond_0

    .line 18092
    const/16 v2, 0x30

    const/16 v1, 0x27

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18093
    return-void

    .line 18094
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8C;->A02(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 18095
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    move-object p3, p3

    move p0, p2

    move-object v5, p1

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A00()I

    move-result v0

    if-nez v0, :cond_1

    .line 18096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x60

    const/16 v1, 0x2c

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18097
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 18098
    .end local v4    # "message":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8Y;->A0J(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/8f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18099
    invoke-static {v4, v5, p0, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18100
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_3

    .line 18101
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "Wr4fCxMFDWkIVvnx3dc83TKhQDpVGTp5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "OVQSbEPH5m9BJKnAfFJqQw5cDphpT4wi"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18102
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18103
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 18104
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/8f;->A08(Z)V

    .line 18105
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/8f;->A04(I)V

    .line 18106
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18107
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    .line 18108
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 18109
    :cond_0
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18110
    :catchall_0
    move-exception v0

    .line 18111
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18112
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18113
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 18114
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    .line 18115
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18116
    :catchall_0
    move-exception p2

    sget-object p1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p1, v0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18117
    .local p0, "t":Ljava/lang/Throwable;
    :cond_0
    sget-object p1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string p0, "lrlTLjNTeannl0YPXC3Gfh7JwXVpOQq4"

    const/4 v0, 0x2

    aput-object p0, p1, v0

    const-string p0, "kBSf974kPIRKP3U3j132aDHcl1k5alA0"

    const/4 v0, 0x1

    aput-object p0, p1, v0

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18118
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 8

    .line 18119
    const-class v7, Lcom/facebook/ads/redexgen/X/8Y;

    monitor-enter v7

    .line 18120
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    if-nez v0, :cond_2

    .line 18121
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A01(Landroid/content/Context;)I

    move-result v2

    .line 18122
    .local p1, "threshold":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_1

    .line 18123
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8Z;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Z;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18124
    :cond_0
    :goto_0
    monitor-exit v7

    goto :goto_1

    .line 18125
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 18126
    sget-object v5, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    const/16 v2, 0x1ab

    const/16 v1, 0xa

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A2C:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8c

    const/16 v1, 0x2a

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x1

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8Z;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/8Z;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18127
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V

    goto :goto_0

    .line 18128
    :goto_1
    return-void

    .line 18129
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V
    .locals 10

    .line 18130
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/8X;

    .line 18131
    .local v5, "environmentDataProvider":Lcom/facebook/ads/redexgen/X/8X;
    if-eqz v9, :cond_4

    .line 18132
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/8X;->A8D()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    .line 18133
    .local v9, "isRunningEndToEndTest":Z
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "wcUF0zMFhzDc2LBIPX26ddygqjW04ktX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move-object v8, p3

    move v7, p2

    move-object v6, p1

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 18134
    :cond_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->A00()I

    move-result v4

    const/16 v2, 0x121

    const/16 v1, 0x11

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_3

    .line 18135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb6

    const/16 v1, 0x25

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18136
    .local v6, "message":Ljava/lang/String;
    invoke-static {v3, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18137
    .end local v6    # "message":Ljava/lang/String;
    .end local v6
    :cond_1
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/We;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/We;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Lcom/facebook/ads/redexgen/X/8X;)V

    .line 18138
    .local v6, "logRunnable":Ljava/lang/Runnable;
    if-eqz p4, :cond_2

    .line 18139
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18140
    :goto_2
    return-void

    .line 18141
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Kd;->run()V

    goto :goto_2

    .line 18142
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x132

    const/16 v1, 0x20

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18143
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18144
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->A02()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18145
    .restart local v6    # "logRunnable":Ljava/lang/Runnable;
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 18146
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V
    .locals 0

    .line 18147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/8Y;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V

    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8X;Lcom/facebook/ads/redexgen/X/8W;Z)V
    .locals 3

    .line 18148
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18149
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18150
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18151
    const-class v2, Lcom/facebook/ads/redexgen/X/8Y;

    monitor-enter v2

    .line 18152
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    if-nez v0, :cond_0

    .line 18153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    .line 18154
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wf;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18155
    :cond_0
    monitor-exit v2

    .line 18156
    return-void

    .line 18157
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0E(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 18158
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>(Ljava/lang/RuntimeException;)V

    .line 18160
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18161
    :cond_0
    return-void
.end method

.method public static A0F(Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18162
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18163
    const/16 v2, 0x100

    const/16 v1, 0x21

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 18164
    :cond_0
    return-void
.end method

.method public static A0G(Ljava/lang/Throwable;)V
    .locals 4

    .line 18165
    const/16 v2, 0x121

    const/16 v1, 0x11

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x25

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18166
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18167
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 18168
    :cond_0
    return-void
.end method

.method public static synthetic A0H(Ljava/lang/Throwable;)V
    .locals 0

    .line 18169
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 1

    .line 18170
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 18171
    .local p0, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 18172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 18173
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0A(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/8f;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 18174
    const/4 v11, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A04(Landroid/content/Context;)I

    move-result v3

    .line 18175
    .local p0, "additionalDebugLoggingSamplingPercentage":I
    const/4 v7, 0x1

    if-ge v3, v7, :cond_0

    .line 18176
    return v11

    .line 18177
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0M(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v5

    .line 18178
    .local p5, "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 18179
    .local p1, "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x1

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18180
    .local p2, "eventKey":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 18181
    .local v11, "isBlacklisted":Z
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_25

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "Da1Avoa7PC9D4jtB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iedDIpQY7PrwfrxyH9GARbotTLh4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v10, :cond_6

    .line 18182
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18183
    .local v5, "tempSampling":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 18184
    .local v6, "sampling":I
    :goto_0
    if-nez v0, :cond_2

    .line 18185
    return v11

    .line 18186
    :cond_2
    if-lez v0, :cond_4

    .line 18187
    int-to-double v0, v0

    div-double/2addr v8, v0

    cmpg-double v0, p3, v8

    if-gtz v0, :cond_3

    const/4 v11, 0x1

    :cond_3
    return v11

    .line 18188
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A03(Landroid/content/Context;)I

    move-result v0

    .line 18189
    .local v4, "additionalDebugLoggingBlackListPercentage":I
    if-ge v0, v7, :cond_5

    .line 18190
    return v11

    .line 18191
    :cond_5
    mul-int/2addr v3, v0

    int-to-double v2, v3

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v0

    .line 18192
    .end local v5    # "tempSampling":Ljava/lang/Integer;
    .end local v6    # "sampling":I
    .end local v4    # "additionalDebugLoggingBlackListPercentage":I
    .local v2, "logProbability":D
    goto :goto_1

    .line 18193
    .end local v2    # "logProbability":D
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/8f;->A09()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18194
    const-wide/16 v2, 0x0

    .restart local v2    # "logProbability":D
    goto :goto_1

    .line 18195
    .end local v2    # "logProbability":D
    :cond_7
    int-to-double v2, v3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    .line 18196
    .restart local v2    # "logProbability":D
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v5

    .line 18197
    .local v5, "sessionRandom":D
    const/16 v4, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18198
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18199
    return v7

    .line 18200
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A06(Landroid/content/Context;)I

    move-result v0

    .line 18201
    .local v4, "cacheEventsSampling":I
    if-nez v0, :cond_9

    .line 18202
    return v11

    .line 18203
    :cond_9
    if-lez v0, :cond_d

    .line 18204
    .end local p5    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18205
    .local v3, "cacheEventLogProbability":D
    if-eqz v10, :cond_b

    .line 18206
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 18207
    :cond_b
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 18208
    .end local p5
    .restart local v0    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_d
    const/16 v4, 0x1c9

    const/4 v1, 0x7

    const/16 v0, 0x65

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1j:I

    if-ne v0, p2, :cond_13

    .line 18209
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    .line 18210
    .end local v4    # "cacheEventsSampling":I
    :cond_e
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0E(Landroid/content/Context;)I

    move-result v0

    goto :goto_5

    .line 18211
    :goto_4
    const/4 v0, 0x1

    .line 18212
    .local v4, "networkEventsSampling":I
    .restart local v4    # "networkEventsSampling":I
    :goto_5
    if-nez v0, :cond_f

    .line 18213
    return v11

    .line 18214
    :cond_f
    if-lez v0, :cond_13

    .line 18215
    .end local p1    # "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18216
    .local v3, "networkEventLogProbability":D
    if-eqz v10, :cond_11

    .line 18217
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 18218
    :cond_11
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    .line 18219
    .end local p1
    .restart local v4    # "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const/16 v4, 0x1b5

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 18220
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18221
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/8f;->A0A()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18222
    if-eqz v10, :cond_15

    .line 18223
    sub-double/2addr v8, v2

    cmpl-double v0, p3, v8

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18224
    :cond_15
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_16

    return v3

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "3rUxJxbc4jkjqwCy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WQqu78IUc7IzVF5buGMjKYPgcPHA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 18225
    :cond_17
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 18226
    .local v4, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    if-eqz v0, :cond_18

    .line 18227
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 18228
    :cond_18
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0A(Landroid/content/Context;)I

    move-result v0

    .line 18229
    .local p5, "funnelEventsSampling":I
    if-nez v0, :cond_19

    .line 18230
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18231
    return v11

    .line 18232
    :cond_19
    if-lez v0, :cond_1d

    .line 18233
    .end local v4    # "shouldLogFunnelEvents":Ljava/lang/Boolean;
    .local p1, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18234
    .local v3, "funnelEventLogProbability":D
    if-eqz v10, :cond_1b

    .line 18235
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9

    .line 18236
    :cond_1b
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_1c

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_a

    .line 18237
    .end local v4
    .end local p5    # "funnelEventsSampling":I
    :cond_1d
    const/16 v4, 0x1bb

    const/16 v1, 0xe

    const/16 v0, 0x3e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 18238
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 18239
    const/4 v0, 0x1

    return v0

    .line 18240
    :cond_1e
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0B(Landroid/content/Context;)I

    move-result v0

    .line 18241
    .local v4, "ipcValidationEventsSampling":I
    if-nez v0, :cond_1f

    .line 18242
    const/4 v0, 0x0

    return v0

    .line 18243
    :cond_1f
    if-lez v0, :cond_23

    .line 18244
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18245
    .local v3, "ipcValidationEventLogProbability":D
    if-eqz v10, :cond_21

    .line 18246
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_20

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_b

    .line 18247
    :cond_21
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_22

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_c

    .line 18248
    :cond_23
    sub-double/2addr v8, v2

    cmpl-double v0, p3, v8

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_d
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18249
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18250
    .end local p0    # "additionalDebugLoggingSamplingPercentage":I
    .end local p2    # "eventKey":Ljava/lang/String;
    .end local v11    # "isBlacklisted":Z
    .end local v5    # "sessionRandom":D
    .end local v4    # "ipcValidationEventsSampling":I
    .end local v2    # "logProbability":D
    .end local v0    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    .line 18251
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18252
    const/4 v0, 0x0

    return v0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 18253
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 18254
    return v4

    .line 18255
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 18256
    .local p0, "currentCounter":I
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A00(Landroid/content/Context;)I

    move-result v2

    .line 18257
    .local p2, "eventsLimit":I
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A01()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 18258
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A01()I

    move-result v2

    .line 18259
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/8f;
    :cond_1
    :goto_0
    if-lt v3, v2, :cond_4

    .line 18260
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A06:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A0B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18261
    invoke-static {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/8Y;->A06(Lcom/facebook/ads/redexgen/X/8D;II)V

    .line 18262
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 18263
    return v4

    .line 18264
    :cond_3
    invoke-static {p1, p2, p0}, Lcom/facebook/ads/redexgen/X/8Y;->A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8D;)I

    move-result v0

    .line 18265
    .local p3, "customLimit":I
    if-ge v2, v0, :cond_1

    .line 18266
    move v2, v0

    goto :goto_0

    .line 18267
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 18268
    const/4 v0, 0x0

    return v0
.end method
