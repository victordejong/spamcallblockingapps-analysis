.class public final Lcom/facebook/ads/redexgen/X/DP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Lcom/facebook/ads/redexgen/X/IH;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DP;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 0

    .line 26940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gYZvl3noAJU1AHvFpGE20WYVc9uQBFCh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mTLl25Y662cbW0C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XuVQP4axGnCOaVpCQS5nDEiLBtzVX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "H0g5fGxRwr6fM7z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p97BQWTDE6CGElj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oa5HKm70RkmLDkub13yEXsD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4uW6f1hZBrdp9hXLp5Jb0o5EWtWLOM35"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0AZMbX84HOoDhOUPhak7U1623cfN7PjF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/DP;)Z
    .locals 6

    .line 26941
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0F:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A0F:Z

    if-eqz v0, :cond_4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/DP;->A03:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/DP;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    const-string v1, "y5Uh58WMYDbvhBg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "nd7wQ4PUhTFCHjE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A07:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A0C:Z

    if-ne v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A0A:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A0A:Z

    if-ne v1, v0, :cond_4

    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A05:I

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A09:Lcom/facebook/ads/redexgen/X/IH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A09:Lcom/facebook/ads/redexgen/X/IH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-nez v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A06:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A02:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A09:Lcom/facebook/ads/redexgen/X/IH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-ne v0, v4, :cond_3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A09:Lcom/facebook/ads/redexgen/X/IH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-ne v0, v4, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A00:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A01:I

    if-ne v1, v0, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A0E:Z

    if-ne v1, v0, :cond_4

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/facebook/ads/redexgen/X/DP;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    const-string v1, "OANIWMziBSpNXQ2AnrUoImMgcxDbr3MJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A04:I

    if-eq v3, v0, :cond_6

    :cond_4
    :goto_0
    return v4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DP;->A0G:[Ljava/lang/String;

    const-string v1, "goNilbdjDeH6FuveeCKhEciVOhdAXeZU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/DP;->A04:I

    if-eq v3, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/DP;Lcom/facebook/ads/redexgen/X/DP;)Z
    .locals 0

    .line 26942
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DP;->A01(Lcom/facebook/ads/redexgen/X/DP;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 26943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0D:Z

    .line 26944
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0F:Z

    .line 26945
    return-void
.end method

.method public final A04(I)V
    .locals 1

    .line 26946
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DP;->A08:I

    .line 26947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0D:Z

    .line 26948
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/IH;IIIIZZZZIIIII)V
    .locals 1

    .line 26949
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DP;->A09:Lcom/facebook/ads/redexgen/X/IH;

    .line 26950
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DP;->A05:I

    .line 26951
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DP;->A08:I

    .line 26952
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DP;->A03:I

    .line 26953
    iput p5, p0, Lcom/facebook/ads/redexgen/X/DP;->A07:I

    .line 26954
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/DP;->A0C:Z

    .line 26955
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/DP;->A0B:Z

    .line 26956
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/DP;->A0A:Z

    .line 26957
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/DP;->A0E:Z

    .line 26958
    iput p10, p0, Lcom/facebook/ads/redexgen/X/DP;->A04:I

    .line 26959
    iput p11, p0, Lcom/facebook/ads/redexgen/X/DP;->A06:I

    .line 26960
    iput p12, p0, Lcom/facebook/ads/redexgen/X/DP;->A02:I

    .line 26961
    iput p13, p0, Lcom/facebook/ads/redexgen/X/DP;->A00:I

    .line 26962
    iput p14, p0, Lcom/facebook/ads/redexgen/X/DP;->A01:I

    .line 26963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0F:Z

    .line 26964
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0D:Z

    .line 26965
    return-void
.end method

.method public final A06()Z
    .locals 2

    .line 26966
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DP;->A0D:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DP;->A08:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
