.class public final Lcom/facebook/ads/redexgen/X/Mh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Lp;

.field public A02:Lcom/facebook/ads/redexgen/X/Ml;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ml;)V
    .locals 1

    .line 44146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0A:Z

    .line 44148
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0B:Z

    .line 44149
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A09:Z

    .line 44150
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A07:Z

    .line 44151
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A08:Z

    .line 44152
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 44153
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mh;->A02:Lcom/facebook/ads/redexgen/X/Ml;

    .line 44154
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Mh;)I
    .locals 0

    .line 44155
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 44156
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/Lp;
    .locals 0

    .line 44157
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A01:Lcom/facebook/ads/redexgen/X/Lp;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 0

    .line 44158
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A02:Lcom/facebook/ads/redexgen/X/Ml;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;
    .locals 0

    .line 44159
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;
    .locals 0

    .line 44160
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;
    .locals 0

    .line 44161
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;
    .locals 0

    .line 44162
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Mh;)Z
    .locals 0

    .line 44163
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A09:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Mh;)Z
    .locals 0

    .line 44164
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0B:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Mh;)Z
    .locals 0

    .line 44165
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A07:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Mh;)Z
    .locals 0

    .line 44166
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A08:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Mh;)Z
    .locals 0

    .line 44167
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44168
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A00:I

    .line 44169
    return-object p0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Lp;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A01:Lcom/facebook/ads/redexgen/X/Lp;

    .line 44171
    return-object p0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44172
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A03:Ljava/lang/String;

    .line 44173
    return-object p0
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44174
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A04:Ljava/lang/String;

    .line 44175
    return-object p0
.end method

.method public final A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44176
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A05:Ljava/lang/String;

    .line 44177
    return-object p0
.end method

.method public final A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44178
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A06:Ljava/lang/String;

    .line 44179
    return-object p0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44180
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A09:Z

    .line 44181
    return-object p0
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44182
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0A:Z

    .line 44183
    return-object p0
.end method

.method public final A0L(Z)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 44184
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mh;->A0B:Z

    .line 44185
    return-object p0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Mi;
    .locals 2

    .line 44186
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Mh;Lcom/facebook/ads/redexgen/X/Mf;)V

    return-object v0
.end method
