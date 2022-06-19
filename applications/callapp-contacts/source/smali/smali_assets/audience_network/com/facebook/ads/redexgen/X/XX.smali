.class public final Lcom/facebook/ads/redexgen/X/XX;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8Y;->A0D(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8X;Lcom/facebook/ads/redexgen/X/8W;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 0

    .line 57980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 57981
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8Z;

    .line 57982
    .local v0, "event":Lcom/facebook/ads/redexgen/X/8Z;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:Lcom/facebook/ads/redexgen/X/XK;

    .line 57983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8Z;->A02()Ljava/lang/String;

    move-result-object v3

    .line 57984
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8Z;->A00()I

    move-result v2

    .line 57985
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8Z;->A01()Lcom/facebook/ads/redexgen/X/8f;

    move-result-object v1

    const/4 v0, 0x0

    .line 57986
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V

    .line 57987
    .end local v0    # "event":Lcom/facebook/ads/redexgen/X/8Z;
    goto :goto_0

    .line 57988
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57989
    return-void
.end method
