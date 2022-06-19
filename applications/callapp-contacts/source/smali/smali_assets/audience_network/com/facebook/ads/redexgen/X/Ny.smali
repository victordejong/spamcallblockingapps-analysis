.class public final Lcom/facebook/ads/redexgen/X/Ny;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ny;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/O1;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Nx;
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46040
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v7

    .line 46041
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Nw;->A00(Lcom/facebook/ads/redexgen/X/19;)F

    move-result v0

    float-to-double v9, v0

    .line 46042
    .local v7, "aspectRatio":D
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v6

    .line 46043
    .local v0, "isWatchAndBrowse":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A00()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A01()I

    move-result v0

    .line 46044
    invoke-static {v1, v0, v9, v10}, Lcom/facebook/ads/redexgen/X/Nw;->A05(IID)Z

    move-result v1

    .line 46045
    .local v6, "renderFullscreen":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v5

    .line 46046
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v4

    .line 46047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46048
    const-string v0, ""

    invoke-static {v5, v4, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 46049
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v6, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ff;

    if-eqz v0, :cond_0

    .line 46050
    new-instance v6, Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/YV;-><init>(Lcom/facebook/ads/redexgen/X/O1;)V

    .line 46051
    .local p0, "layout":Lcom/facebook/ads/redexgen/X/Nx;
    .local v0, "layout":Lcom/facebook/ads/redexgen/X/Nx;
    :goto_0
    if-eqz p2, :cond_6

    .line 46052
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v8

    .line 46053
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ny;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46054
    .end local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46055
    new-instance v6, Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/9m;-><init>(Lcom/facebook/ads/redexgen/X/O1;)V

    .restart local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    goto :goto_0

    .line 46056
    .end local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46058
    new-instance v6, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v6, p0, v1}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .restart local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    goto :goto_0

    .line 46059
    .end local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    :cond_2
    if-eqz v1, :cond_4

    .line 46060
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A00()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    .line 46061
    .local p0, "isInLandscape":Z
    :goto_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/Yl;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/Yl;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 46062
    .local p0, "layout":Lcom/facebook/ads/redexgen/X/Nx;
    goto :goto_0

    .line 46063
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 46064
    .end local p0    # "layout":Lcom/facebook/ads/redexgen/X/Nx;
    :cond_4
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Nw;->A03(D)Z

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Yk;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/Yk;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ny;->A00:[Ljava/lang/String;

    const-string v1, "IYiemLW0pAZJelR9U10I0UE8BphOsSCr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HZnaFTaa8UnZev8t8IWfBJ4wHjAxjheL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object p0, p1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Nx;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46065
    :cond_6
    return-object v6
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Py81lTfXTPvOohagzwztlFMwKgIeaa04"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZBx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1LQBU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ny;->A00:[Ljava/lang/String;

    return-void
.end method
