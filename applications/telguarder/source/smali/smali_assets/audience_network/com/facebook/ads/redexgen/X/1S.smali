.class public final Lcom/facebook/ads/redexgen/X/1S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1R;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1R;)V
    .locals 1

    .line 3249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3250
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A00(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Ljava/lang/String;

    .line 3251
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A01(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Ljava/lang/String;

    .line 3252
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A02(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/lang/String;

    .line 3253
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A03(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Ljava/lang/String;

    .line 3254
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/1Q;)V
    .locals 0

    .line 3255
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1S;-><init>(Lcom/facebook/ads/redexgen/X/1R;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 3256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 3257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 3258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 3259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Ljava/lang/String;

    return-object v0
.end method
