.class public final Lcom/facebook/ads/redexgen/X/aq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aq;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 68738
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aq;->A00:Ljava/util/List;

    .line 68740
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uyzG6nZhYmNB4VufbjNeT4Wu24aJjB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gpgsRAJrUCyLiJ0U4KQoajYft8d2IWSs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V6tp6oNeuWY4Rz4wk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QxLD6Qr0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "n2jYEAQ7ylPlmaGFo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iuLvneSMbLfhzIa7Pvm7Ht11vKly078I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9KvTRZ4e8scFY8IRtC8ize1aHWfIVCyu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s0mDJJaIHWanY7Mz7gNVqOFT5NJr2uCg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aq;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A63(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 68741
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aq;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A6S(I)J
    .locals 5

    .line 68742
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 68743
    const-wide/16 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aq;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/aq;->A01:[Ljava/lang/String;

    const-string v1, "k5niKSSkUsmLECakjkbMaTYSf6uR41"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "iDI18Hfk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A6T()I
    .locals 1

    .line 68745
    const/4 v0, 0x1

    return v0
.end method

.method public final A6n(J)I
    .locals 3

    .line 68746
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
