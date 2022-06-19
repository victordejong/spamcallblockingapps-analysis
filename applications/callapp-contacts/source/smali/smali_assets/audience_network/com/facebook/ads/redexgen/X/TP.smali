.class public final Lcom/facebook/ads/redexgen/X/TP;
.super Lcom/facebook/ads/redexgen/X/2d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TO;
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2d;

.field public final A01:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TP;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 54746
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    .line 54747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    .line 54748
    new-instance v0, Lcom/facebook/ads/redexgen/X/TO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TO;-><init>(Lcom/facebook/ads/redexgen/X/TP;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/2d;

    .line 54749
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kCJseLSqSIrXu4CFjUZgH7qP37OfZeHD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xEAmwUG5TGVzyoKH1PTTnmgJSds6zi0t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yfye5wiKddzXjwKpYSAHRZ10SdbOyGIS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FmBYeFx3U0BhjOzbepjZtX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pFd99JFbVQiCxR8NKRmLZvqZPwpJ8hMq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9sA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zOMSQIOQC2uzgyYA4i3GoXbtL5yC1N4Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6JUJmYz6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 54750
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 54751
    const-class v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 54752
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TP;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54753
    check-cast p1, Lcom/facebook/ads/redexgen/X/Eq;

    .line 54754
    .local p0, "rv":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54755
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 54756
    .end local p0    # "rv":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 1

    .line 54757
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 54758
    const-class v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0P(Ljava/lang/CharSequence;)V

    .line 54759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TP;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1G(Lcom/facebook/ads/redexgen/X/3O;)V

    .line 54761
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 54762
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54763
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const-string v1, "nByhcE3HAON4xHhAaRL71J2smf2uyoDS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 54764
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TP;->A0B()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const-string v1, "ZdbAAVtg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "rBKlzqXoYmUf6BYv0O8fT1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p2, p3}, Lcom/facebook/ads/redexgen/X/4K;->A1a(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 54766
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/2d;
    .locals 1

    .line 54767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/2d;

    return-object v0
.end method

.method public final A0B()Z
    .locals 1

    .line 54768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1u()Z

    move-result v0

    return v0
.end method
