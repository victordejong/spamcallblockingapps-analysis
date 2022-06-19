.class Lcom/verizon/ads/inlineplacement/InlineAdView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->b()V

    return-void
.end method
