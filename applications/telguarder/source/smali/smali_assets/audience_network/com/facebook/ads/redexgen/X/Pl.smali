.class public final Lcom/facebook/ads/redexgen/X/Pl;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hi;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pl;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;)V
    .locals 0

    .line 48586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GafIPb7LWAiViAmPwlKEWLDLjss8g6Ws"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GmgIBltz4NMSrZrLjhCSQUR2lVK3nFE3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EM6stZgjBHDzdWE7fS4BkrJy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N0axt6y48e2BEk8smmzy4ee5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dltbLtM4ojsXN2KUcmFBCOrEHNkSvQMG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uja4KtsxSl5i0Xy4u8CYRakEDe0zRqlk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vzw9JeJO1xcQXP0eAZjCAk8tucW9kQEs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5sufJRWLYSrz8Qvpedy6kGMFzpd6V4cT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pl;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 48587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A06(Lcom/facebook/ads/redexgen/X/Hi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A00(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 48589
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A00(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    .line 48591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A01(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A01(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pl;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48593
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pl;->A01:[Ljava/lang/String;

    const-string v1, "SL0VqGGoYjOg4No5xWkpM0ju1xWwOnF6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Hi;->A02(Lcom/facebook/ads/redexgen/X/Hi;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 48594
    :cond_2
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 48595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A06(Lcom/facebook/ads/redexgen/X/Hi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A00(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 48597
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pl;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 48598
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pl;->A01:[Ljava/lang/String;

    const-string v1, "UFxXeO2yYsCLDJeld9s6oynUImAPkk9q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A01(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A01(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 48600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Hi;->A02(Lcom/facebook/ads/redexgen/X/Hi;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 48601
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
