.class public abstract Lcom/facebook/ads/redexgen/X/M4;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/M3;
    }
.end annotation


# static fields
.field public static A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43521
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43522
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43523
    return-void
.end method


# virtual methods
.method public abstract A05(Lcom/facebook/ads/redexgen/X/1I;Z)V
.end method

.method public A06(Lcom/facebook/ads/redexgen/X/MT;)V
    .locals 0

    .line 43524
    return-void
.end method

.method public abstract A07()Z
.end method

.method public abstract getToolbarHeight()I
.end method

.method public abstract setAdReportingVisible(Z)V
.end method

.method public abstract setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V
.end method

.method public abstract setPageDetailsVisible(Z)V
.end method

.method public abstract setProgress(F)V
.end method

.method public abstract setToolbarActionMessage(Ljava/lang/String;)V
.end method

.method public abstract setToolbarActionMode(I)V
    .param p1    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param
.end method

.method public abstract setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V
.end method
