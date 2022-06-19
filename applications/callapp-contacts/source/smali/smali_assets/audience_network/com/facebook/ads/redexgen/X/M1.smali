.class public final Lcom/facebook/ads/redexgen/X/M1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/M2;->setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1S;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JJ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/M2;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/M9;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M2;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 43456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M1;->A02:Lcom/facebook/ads/redexgen/X/M2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M1;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/M1;->A03:Lcom/facebook/ads/redexgen/X/M9;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/M1;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/M1;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 43457
    .local p0, "this":Lcom/facebook/ads/redexgen/X/M1;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/M1;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0A:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 43458
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A02:Lcom/facebook/ads/redexgen/X/M2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M2;->A00(Lcom/facebook/ads/redexgen/X/M2;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/28;->A0Q(Lcom/facebook/ads/redexgen/X/XK;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43459
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/M1;->A03:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/M1;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A8F(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    goto :goto_0

    .line 43460
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/M1;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43461
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ky;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ky;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A02:Lcom/facebook/ads/redexgen/X/M2;

    .line 43462
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M2;->A00(Lcom/facebook/ads/redexgen/X/M2;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A00:Lcom/facebook/ads/redexgen/X/1S;

    .line 43463
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M1;->A04:Ljava/lang/String;

    .line 43464
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A09(Lcom/facebook/ads/redexgen/X/Ky;Lcom/facebook/ads/redexgen/X/XJ;Landroid/net/Uri;Ljava/lang/String;)V

    .line 43465
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
