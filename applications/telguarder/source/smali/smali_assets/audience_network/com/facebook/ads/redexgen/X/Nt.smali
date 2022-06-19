.class public final Lcom/facebook/ads/redexgen/X/Nt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nt;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Nw;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Ns;
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46031
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v9

    .line 46032
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Nr;->A00(Lcom/facebook/ads/redexgen/X/19;)F

    move-result v0

    float-to-double v11, v0

    .line 46033
    .local v0, "aspectRatio":D
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v8

    .line 46034
    .local v8, "isWatchAndBrowse":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A00()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A01()I

    move-result v0

    .line 46035
    invoke-static {v1, v0, v11, v12}, Lcom/facebook/ads/redexgen/X/Nr;->A05(IID)Z

    move-result v4

    .line 46036
    .local v1, "renderFullscreen":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v5

    .line 46037
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    .line 46038
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46039
    const-string v0, ""

    invoke-static {v5, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v5

    .line 46040
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v2, 0x1

    xor-int/2addr v7, v2

    .line 46041
    .local v4, "isVideo":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46042
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Nt;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46043
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Nt;->A00:[Ljava/lang/String;

    const-string v1, "moHCvC4ERmXYMU8sW9KKbPv7pnYUwXb0"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "1G3HUaMks2xBdg2z9mSbtts1gYw91Ogm"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 46044
    :cond_1
    if-eqz v8, :cond_3

    instance-of v0, v5, Lcom/facebook/ads/redexgen/X/FT;

    if-eqz v0, :cond_3

    .line 46045
    new-instance v8, Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/Rk;-><init>(Lcom/facebook/ads/redexgen/X/Nw;)V

    .line 46046
    .local p2, "layout":Lcom/facebook/ads/redexgen/X/Ns;
    .local v5, "layout":Lcom/facebook/ads/redexgen/X/Ns;
    :goto_0
    if-eqz p2, :cond_2

    .line 46047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v10

    .line 46048
    move-object p0, p1

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ns;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46049
    :cond_2
    return-object v8

    .line 46050
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    :cond_3
    if-eqz v7, :cond_4

    .line 46051
    new-instance v8, Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/9m;-><init>(Lcom/facebook/ads/redexgen/X/Nw;)V

    .restart local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    goto :goto_0

    .line 46052
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    :cond_4
    if-nez v7, :cond_5

    .line 46053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46054
    new-instance v8, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v8, p0, v4}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .restart local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    goto :goto_0

    .line 46055
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    :cond_5
    if-eqz v4, :cond_7

    .line 46056
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nw;->A00()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 46057
    .local p2, "isInLandscape":Z
    :goto_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/Rr;

    invoke-direct {v8, p0, v2}, Lcom/facebook/ads/redexgen/X/Rr;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 46058
    .local p2, "layout":Lcom/facebook/ads/redexgen/X/Ns;
    goto :goto_0

    .line 46059
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 46060
    .end local p2    # "layout":Lcom/facebook/ads/redexgen/X/Ns;
    :cond_7
    invoke-static {v11, v12}, Lcom/facebook/ads/redexgen/X/Nr;->A03(D)Z

    move-result v0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Rq;

    invoke-direct {v8, p0, v0}, Lcom/facebook/ads/redexgen/X/Rq;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e7juOHCMVCS96MucXvvyM5upzpE0CxcL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Axk6XM18YFtFlcC0tEdKqjogVlmemrm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CHYE97fUe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "94l1C"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pvrd7E3JtMrEOvPAC3lcGaqqDdvc2Rnk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mswd2ljSuB4EOxjza27Iz7krcpdQKmDN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x2gmwPWroRNX0socjzMaFBH0Y3mBhUE3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1dJrelJWCcDuEHtNsp3IaM8Oqex3ZZ7a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nt;->A00:[Ljava/lang/String;

    return-void
.end method
