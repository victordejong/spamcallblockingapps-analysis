.class public final Lcom/facebook/ads/redexgen/X/45;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/45;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 10412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "awShR6rB9hHqIMmEUL0mwXA0Gw52kO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0DSPYtvGuEhIQI6AF9KMD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9DdmIjaq0QhBq1nPNAcV72ZM8h0mgj2M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HfTiJ4VVSMi3nAZk7bTv9mblSiAuey3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "debYtkaMAwIZQZjx6lxSS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4WrPcoFjyZ6X9UuQXP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Cz1Bv0fV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "irRdqOAQiRC5NgL3TGbl1LssmB7DQYK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/45;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 10413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0D:Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    sget-object v2, Lcom/facebook/ads/redexgen/X/45;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/45;->A01:[Ljava/lang/String;

    const-string v1, "whIRPRaeSzbq6WxYyrgvwj4itopbsVJt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/El;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10414
    :cond_1
    return-void

    .line 10415
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0F:Z

    if-nez v0, :cond_3

    .line 10416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->requestLayout()V

    .line 10417
    return-void

    .line 10418
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0I:Z

    if-eqz v0, :cond_4

    .line 10419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0J:Z

    .line 10420
    return-void

    .line 10421
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1K()V

    .line 10422
    return-void
.end method
