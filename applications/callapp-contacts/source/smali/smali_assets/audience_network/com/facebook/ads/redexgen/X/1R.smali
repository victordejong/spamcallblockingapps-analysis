.class public final Lcom/facebook/ads/redexgen/X/1R;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3130
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3131
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3132
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;
    .locals 0

    .line 3133
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:Ljava/lang/String;

    .line 3135
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:Ljava/lang/String;

    .line 3137
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/lang/String;

    .line 3139
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1R;
    .locals 0

    .line 3140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Ljava/lang/String;

    .line 3141
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/1S;
    .locals 2

    .line 3142
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1S;-><init>(Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/1Q;)V

    return-object v0
.end method
