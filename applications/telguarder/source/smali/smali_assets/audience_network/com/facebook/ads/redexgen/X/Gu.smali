.class public final Lcom/facebook/ads/redexgen/X/Gu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfigurationTuple"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gu;->A00()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35689
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:I

    .line 35690
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gu;->A01:I

    .line 35691
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    .line 35692
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "usxxr0Lmh1Y2bq0U3TD3ozJMDG55nbS3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YxK814YWDZ5CG0zQOFlCJvIeJ4Zw82nf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ipbRegsz654i8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nAKh7xt03GcACSHuM0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TJ21WGvHViAndS00X880"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AiqMKamvkn6UAxJEVworoJjUDItSiMK8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vZNFVeawbuxEODZZMx3g2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NR6Vs4uUJobaSaClBVAa1NIa34hU9JNt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35693
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 35694
    return v5

    .line 35695
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 35696
    .end local v5
    :cond_1
    return v2

    .line 35697
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Gu;

    .line 35698
    .local v5, "other":Lcom/facebook/ads/redexgen/X/Gu;
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/Gu;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    const-string v1, "t7y1yIoemqz44Cz2Ei3iY5ngiTe17Q3L"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "7QU0COz5SSM9NGVxl88gYaPRxhWzPeQm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_5

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gu;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/Gu;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    const-string v1, "mviSTSwIxuQVoO9nBl7xDrI2CmJQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    .line 35699
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35700
    :goto_1
    return v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gu;->A03:[Ljava/lang/String;

    const-string v1, "5SjsyS98pNKcxK3vm6usdHp4Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_5

    goto :goto_0

    .line 35701
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .line 35702
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:I

    .line 35703
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gu;->A01:I

    add-int/2addr v1, v0

    .line 35704
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 35705
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v1

    .line 35706
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
