.class public final Lcom/facebook/ads/redexgen/X/Hq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pl;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/ViewPropertyAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Pk;

.field public final A02:I

.field public final A03:Landroid/view/View;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hq;->A04()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 36966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36967
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36968
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:I

    .line 36969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    .line 36970
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Z

    .line 36971
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;
    .locals 0

    .line 36972
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 36973
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hq;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 36974
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;
    .locals 0

    .line 36975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    return-object p1
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hBpWhHnhmL5X5T638nUqTTajkmWXq0Jo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NpDFSQumXtRd9HWL09JYgYkJkV27cWXf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AxBlHN1IgfTmgBmsQuewVQ8cZkGbRxm7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "auJ8KOWij5XUc2OVh7MwLzJgAA213fGo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l76sAXRLIUx67IYksgmFi2YoLkAbbgnJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1g5g87wiu8KgxwL4MK6lukjj0pQl5xRt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "P6OmLQzTnVk1JPGEjhdY9fnbkCpMcnWe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QfRSCgXdOTNJYzcBVbNAL0t7GjPIPusf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hq;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A05(Z)V
    .locals 4

    .line 36976
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36977
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Z

    if-eqz v0, :cond_0

    .line 36978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 36979
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hq;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hq;->A05:[Ljava/lang/String;

    const-string v1, "iTCONHrR5nymrEIlx0VHUpGctJrwflIU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p1, :cond_2

    .line 36980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    .line 36981
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36982
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:I

    int-to-long v0, v0

    .line 36983
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pp;-><init>(Lcom/facebook/ads/redexgen/X/Hq;)V

    .line 36984
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/view/ViewPropertyAnimator;

    .line 36985
    :goto_0
    return-void

    .line 36986
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 36987
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method private A06(Z)V
    .locals 5

    .line 36988
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A06:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36989
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 36990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    .line 36991
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36992
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A02:I

    int-to-long v0, v0

    .line 36993
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pq;-><init>(Lcom/facebook/ads/redexgen/X/Hq;)V

    .line 36994
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/view/ViewPropertyAnimator;

    .line 36995
    :goto_0
    return-void

    .line 36996
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hq;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hq;->A05:[Ljava/lang/String;

    const-string v1, "Va1KnH22vapH99C3A8HUoUYkLtllReKa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 36997
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Hq;)Z
    .locals 0

    .line 36998
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A04:Z

    return p0
.end method


# virtual methods
.method public final A3P(ZZ)V
    .locals 0

    .line 36999
    if-eqz p2, :cond_0

    .line 37000
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hq;->A06(Z)V

    .line 37001
    :goto_0
    return-void

    .line 37002
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hq;->A05(Z)V

    goto :goto_0
.end method

.method public final A7G()Lcom/facebook/ads/redexgen/X/Pk;
    .locals 1

    .line 37003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 37004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 37005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hq;->A00:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 37006
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 37007
    :cond_0
    return-void
.end method
