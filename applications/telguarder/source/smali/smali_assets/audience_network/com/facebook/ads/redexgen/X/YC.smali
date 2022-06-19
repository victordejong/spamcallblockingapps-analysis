.class public final Lcom/facebook/ads/redexgen/X/YC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YB;->A0K()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YC;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YB;)V
    .locals 0

    .line 65682
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xd6TMkflknBzBaLD0SNlr2xk28hjaNrs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "k0GeZbWD9dddMvQhmJcMEYOQJs4xq7HU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VHjptirk8UUdlbfv0wxhLkc71"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LYB4dfUqAA9nVzSA3Uknk1H1fHAZBM7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jxk5g0zPRSs27TiYCDqNmo7BQpfTKhE7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aHRD5XVXab7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RYPYKAYbAspumgB40HF6LbwTqHrb0KNX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6x4W7hpePiLsGXUAp5LLg9h5kfpKNIV2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YC;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 65683
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    .line 65684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65685
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A01(Lcom/facebook/ads/redexgen/X/YB;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65686
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/YC;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/YC;->A01:[Ljava/lang/String;

    const-string v1, "P57bVyTvAFh2sE6LifaQEmWnIU5nfNzL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65687
    :goto_0
    return-object v0

    .line 65688
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YC;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/YC;->A01:[Ljava/lang/String;

    const-string v1, "kLR6UpFQAsje5c3IkzQHz7FnC1GKBKyv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A01(Lcom/facebook/ads/redexgen/X/YB;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
