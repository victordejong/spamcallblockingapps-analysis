.class public final Lcom/facebook/ads/redexgen/X/Fl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:[I

.field public final A02:[J

.field public final A03:[Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fl;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 32993
    const/4 v0, 0x0

    new-array v3, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v1, v0, [J

    const/4 v0, -0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Fl;-><init>(I[I[Landroid/net/Uri;[J)V

    .line 32994
    return-void
.end method

.method public constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    .line 32995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32996
    array-length v1, p2

    array-length v0, p3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 32997
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    .line 32998
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:[I

    .line 32999
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fl;->A03:[Landroid/net/Uri;

    .line 33000
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fl;->A02:[J

    .line 33001
    return-void

    .line 33002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lErkP0nYhy2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aIbCAr9fXq9EHk5Db3gIUWnUtd6tB7Od"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3p2wLPDTsYJiSJdBvbeNXjQxXoNsgE58"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QeYrL2K0LMEQT37OVGtX9dJYv1SpHo0R"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RKNMJaDXxz5blsmnWZXNOe5GKBWHr1YI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QToXEZHSw01vAZpV14oDRhvFCuEHOG6J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gyqK0z9cgKd5V46ugZA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HeATi3ohnKP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 33003
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fl;->A02(I)I

    move-result v0

    return v0
.end method

.method public final A02(I)I
    .locals 5

    .line 33004
    add-int/lit8 v3, p1, 0x1

    .line 33005
    .local p0, "nextAdIndexToPlay":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A04:[Ljava/lang/String;

    const-string v1, "CdNV4l3ZhH13eYwIFgUF8JzRmSp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 33006
    aget v0, v4, v3

    if-eqz v0, :cond_1

    aget v1, v4, v3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 33007
    :cond_1
    return v3

    .line 33008
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final A03()Z
    .locals 2

    .line 33009
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fl;->A01()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
