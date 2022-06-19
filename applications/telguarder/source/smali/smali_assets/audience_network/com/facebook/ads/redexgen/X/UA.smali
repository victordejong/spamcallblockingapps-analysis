.class public final Lcom/facebook/ads/redexgen/X/UA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/UA;


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
    .locals 1

    .line 56001
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UA;->A00()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/UA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UA;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/UA;->A02:Lcom/facebook/ads/redexgen/X/UA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Ljava/util/List;

    .line 56004
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GB;)V
    .locals 1

    .line 56005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56006
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Ljava/util/List;

    .line 56007
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gOdyLdyJdWHyJx643HSe7BGU7DyUXf7a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rAL9GKxaYKMKpEAAZbzfWs5pziXCpndw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SMh7HVVRmuAxGAwst2WNjY08j1zIsy1M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cZZOuZiklUfQ7hNIMu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4Z6jPuY4NLmXgQqbKcGmwB2LnSQd7sy0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wBHzRuM97A7t18YpdlkQZERWqsSqIN3I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7AgIPla6RgK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JElDp3s12z1huc9oQnduJ1mdHLCl5UUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UA;->A01:[Ljava/lang/String;

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

    .line 56008
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A6S(I)J
    .locals 3

    .line 56009
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/UA;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    .line 56010
    sget-object v2, Lcom/facebook/ads/redexgen/X/UA;->A01:[Ljava/lang/String;

    const-string v1, "qyfshYHEZ0rcFGuoejwaWvLIxHnU13ul"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 56011
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6T()I
    .locals 1

    .line 56012
    const/4 v0, 0x1

    return v0
.end method

.method public final A6n(J)I
    .locals 3

    .line 56013
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
