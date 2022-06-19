.class public final Lcom/facebook/ads/redexgen/X/Ar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Aq;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Ar;


# instance fields
.field public A00:Landroid/media/AudioAttributes;

.field public final A01:I

.field public final A02:I

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 22022
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ar;->A00()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Aq;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aq;->A00()Lcom/facebook/ads/redexgen/X/Ar;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ar;->A05:Lcom/facebook/ads/redexgen/X/Ar;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 22023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22024
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ar;->A01:I

    .line 22025
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ar;->A02:I

    .line 22026
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    .line 22027
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Ap;)V
    .locals 0

    .line 22028
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ar;-><init>(III)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cMWeg5Vr9AlVLRwQ2B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UM8qGSN0cTlGiB8Vr0nOYnwmaeYZpx4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "972u1x4DsgJnZEEuVnUoIXh0zE7EGqwM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JbT8PaHvyJVyWOegmJHJlqZblY6Jj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4uFO6hnu74S6FUIrBXpSJq9QufZwuPaw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8NTf7Pmdx1nl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4GoZZ0zLvEugyUKGtdL9kzyfTi17glqq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ffI10BBfrBg8L2bWzEGIQIcHjLFUgAgw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ar;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Landroid/media/AudioAttributes;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 22029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 22030
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A01:I

    .line 22031
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A02:I

    .line 22032
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    .line 22033
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 22034
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Landroid/media/AudioAttributes;

    .line 22035
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22036
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 22037
    return v4

    .line 22038
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 22039
    .end local v4
    :cond_1
    return v2

    .line 22040
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ar;

    .line 22041
    .local v4, "other":Lcom/facebook/ads/redexgen/X/Ar;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ar;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A01:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ar;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A02:I

    if-ne v1, v0, :cond_4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ar;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ar;->A04:[Ljava/lang/String;

    const-string v1, "PYEReX5mrLMl0jNF44ScBbirp1Ds2EvK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    if-ne v3, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public final hashCode()I
    .locals 2

    .line 22042
    const/16 v0, 0x11

    .line 22043
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A01:I

    add-int/2addr v1, v0

    .line 22044
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A02:I

    add-int/2addr v1, v0

    .line 22045
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A03:I

    add-int/2addr v1, v0

    .line 22046
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
