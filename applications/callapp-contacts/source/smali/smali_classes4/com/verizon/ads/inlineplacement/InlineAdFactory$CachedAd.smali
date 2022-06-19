.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedAd"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/AdSession;

.field final b:J


# direct methods
.method constructor <init>(Lcom/verizon/ads/AdSession;J)V
    .locals 0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    .line 1030
    iput-wide p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->b:J

    return-void
.end method
