.class public Lcom/verizon/ads/AdSessionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adSession:Lcom/verizon/ads/AdSession;


# direct methods
.method public constructor <init>(Lcom/verizon/ads/AdSession;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/verizon/ads/AdSessionEvent;->adSession:Lcom/verizon/ads/AdSession;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/verizon/ads/AdSessionEvent;->adSession:Lcom/verizon/ads/AdSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
