.class public final Lcom/facebook/ads/redexgen/X/ER;
.super Lcom/facebook/ads/redexgen/X/L6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5B;)V
    .locals 0

    .line 29452
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 29453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(Lcom/facebook/ads/redexgen/X/5B;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onCompleted()V

    .line 29454
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 29455
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ER;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
