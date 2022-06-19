.class public final Lcom/facebook/ads/redexgen/X/YE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YB;->A0I()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YB;)V
    .locals 0

    .line 65696
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 65697
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 65698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65699
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A01(Lcom/facebook/ads/redexgen/X/YB;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65700
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65701
    :goto_0
    return-object v0

    .line 65702
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YB;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A01(Lcom/facebook/ads/redexgen/X/YB;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
