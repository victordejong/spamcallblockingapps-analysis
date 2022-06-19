.class public Lcom/facebook/ads/redexgen/X/3w;
.super Lcom/facebook/ads/redexgen/X/Eu;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi17Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10164
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Eu;-><init>()V

    return-void
.end method


# virtual methods
.method public final A05(Landroid/view/View;)I
    .locals 1

    .line 10165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final A08(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .line 10166
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method
