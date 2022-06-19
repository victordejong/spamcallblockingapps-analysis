.class public final Lcom/facebook/ads/redexgen/X/99;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WK;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Landroid/content/SharedPreferences;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 19508
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/99;->A01:Lcom/facebook/ads/redexgen/X/8D;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/99;->A02:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/99;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8D;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A03(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WK;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 19510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/99;->A02:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WK;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19511
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WK;->A05()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19512
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/99;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
