.class public abstract Lcom/verizon/ads/Bid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field public final adSession:Lcom/verizon/ads/AdSession;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/verizon/ads/Bid;->adSession:Lcom/verizon/ads/AdSession;

    .line 25
    iput-object p2, p0, Lcom/verizon/ads/Bid;->value:Ljava/lang/String;

    return-void
.end method
