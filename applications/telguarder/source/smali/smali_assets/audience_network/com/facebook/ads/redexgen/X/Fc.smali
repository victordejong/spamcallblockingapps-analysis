.class public final Lcom/facebook/ads/redexgen/X/Fc;
.super Lcom/facebook/ads/redexgen/X/cK;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 32858
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fc;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fc;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Fc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fc;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0m;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/0m;",
            "Z)V"
        }
    .end annotation

    .line 32859
    .local v3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v3, p3

    move v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/cK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/0m;Z)V

    .line 32860
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    .line 32861
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Ljava/util/Map;

    .line 32862
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/0k;)Landroid/content/Intent;
    .locals 7

    .line 32863
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 32864
    return-object v6

    .line 32865
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32866
    return-object v6

    .line 32867
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A04()Ljava/lang/String;

    move-result-object v4

    .line 32868
    .local p0, "appLinkUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32869
    const/16 v2, 0xfa

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0xfe

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32870
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0x3e

    const/16 v1, 0x1a

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 32871
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 32872
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32873
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 32874
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fc;->A01(Lcom/facebook/ads/redexgen/X/0k;)Landroid/content/Intent;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32875
    .local v0, "unresolvedAppIntent":Landroid/content/Intent;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A03:[Ljava/lang/String;

    const-string v1, "YKanQesg3QGt0OkPWSzA5za2hebmvB3x"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/high16 v0, 0x10000

    .line 32876
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 32877
    .local v6, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7

    .line 32878
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 32879
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32880
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32881
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_9

    .line 32882
    :cond_8
    return-object v6

    .line 32883
    :cond_9
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/0k;)Landroid/content/Intent;
    .locals 4

    .line 32884
    const/16 v2, 0x58

    const/16 v1, 0x1a

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32885
    .local p0, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32886
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32887
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32888
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A06()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A05()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32889
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32890
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32891
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0k;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32892
    :cond_1
    return-object v3
.end method

.method private final A02()Landroid/net/Uri;
    .locals 5

    .line 32893
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    const/16 v2, 0xdb

    const/16 v1, 0x9

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32894
    .local p0, "storeUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32895
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 32896
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    const/16 v2, 0xd3

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32897
    .local v3, "storeId":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x7e

    const/16 v1, 0x16

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/0k;",
            ">;"
        }
    .end annotation

    .line 32898
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    const/16 v2, 0x72

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32899
    .local p0, "appsiteDataString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x35

    const/4 v1, 0x2

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32900
    .end local v3
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 32901
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32902
    .local v3, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32903
    .local v2, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x37

    const/4 v1, 0x7

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 32904
    .local v1, "appsiteDataArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 32905
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 32906
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0k;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/0k;

    move-result-object v0

    .line 32907
    .local v0, "appSiteData":Lcom/facebook/ads/redexgen/X/0k;
    if-eqz v0, :cond_2

    .line 32908
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32909
    .end local v0    # "appSiteData":Lcom/facebook/ads/redexgen/X/0k;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32910
    :catch_0
    move-exception v6

    .line 32911
    .local v2, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32912
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1n:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 32913
    const/16 v2, 0xcc

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 32914
    sget-object v3, Lcom/facebook/ads/redexgen/X/Fc;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32915
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v7
.end method

.method private final A05()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 32916
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A04()Ljava/util/List;

    move-result-object v0

    .line 32917
    .local p0, "appSiteDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/action/AppSiteData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32918
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v0, :cond_1

    .line 32919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0k;

    .line 32920
    .local v1, "appSiteData":Lcom/facebook/ads/redexgen/X/0k;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A00(Lcom/facebook/ads/redexgen/X/0k;)Landroid/content/Intent;

    move-result-object v0

    .line 32921
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 32922
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32923
    :cond_1
    return-object v2
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x108

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fc;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x6ft
        0x6ft
        0x72t
        0x6ft
        0x3dt
        0x6dt
        0x7ct
        0x6ft
        0x6et
        0x74t
        0x73t
        0x7at
        0x3dt
        0x7ct
        0x6dt
        0x6dt
        0x6et
        0x74t
        0x69t
        0x78t
        0x42t
        0x79t
        0x7ct
        0x69t
        0x7ct
        0x33t
        0x14t
        0x1ct
        0x19t
        0x10t
        0x11t
        0x55t
        0x1t
        0x1at
        0x55t
        0x1at
        0x5t
        0x10t
        0x1bt
        0x55t
        0x18t
        0x14t
        0x7t
        0x1et
        0x10t
        0x1t
        0x55t
        0x0t
        0x7t
        0x19t
        0x4ft
        0x55t
        0x33t
        0x35t
        0x8t
        0x7t
        0xdt
        0x1bt
        0x6t
        0x0t
        0xdt
        0x3ft
        0x30t
        0x3at
        0x2ct
        0x31t
        0x37t
        0x3at
        0x70t
        0x37t
        0x30t
        0x2at
        0x3bt
        0x30t
        0x2at
        0x70t
        0x3ft
        0x3dt
        0x2at
        0x37t
        0x31t
        0x30t
        0x70t
        0x1dt
        0x1ft
        0x12t
        0x12t
        0x5t
        0xat
        0x0t
        0x16t
        0xbt
        0xdt
        0x0t
        0x4at
        0xdt
        0xat
        0x10t
        0x1t
        0xat
        0x10t
        0x4at
        0x5t
        0x7t
        0x10t
        0xdt
        0xbt
        0xat
        0x4at
        0x32t
        0x2dt
        0x21t
        0x33t
        0x22t
        0x33t
        0x33t
        0x30t
        0x2at
        0x37t
        0x26t
        0x1ct
        0x27t
        0x22t
        0x37t
        0x22t
        0x41t
        0x4dt
        0x5et
        0x47t
        0x49t
        0x58t
        0x16t
        0x3t
        0x3t
        0x48t
        0x49t
        0x58t
        0x4dt
        0x45t
        0x40t
        0x5ft
        0x13t
        0x45t
        0x48t
        0x11t
        0x9t
        0x5ft
        0x1bt
        0x4t
        0x11t
        0x1at
        0x11t
        0x10t
        0x2bt
        0x10t
        0x11t
        0x11t
        0x4t
        0x18t
        0x1dt
        0x1at
        0x1ft
        0x7dt
        0x62t
        0x77t
        0x7ct
        0x77t
        0x76t
        0x4dt
        0x61t
        0x66t
        0x7dt
        0x60t
        0x77t
        0x4dt
        0x74t
        0x73t
        0x7et
        0x7et
        0x70t
        0x73t
        0x71t
        0x79t
        0x4dt
        0x67t
        0x60t
        0x7et
        0x7bt
        0x64t
        0x71t
        0x7at
        0x71t
        0x70t
        0x4bt
        0x67t
        0x60t
        0x7bt
        0x66t
        0x71t
        0x4bt
        0x61t
        0x66t
        0x78t
        0x64t
        0x75t
        0x66t
        0x67t
        0x7dt
        0x7at
        0x73t
        0x51t
        0x56t
        0x4dt
        0x50t
        0x47t
        0x7dt
        0x4bt
        0x46t
        0x38t
        0x3ft
        0x24t
        0x39t
        0x2et
        0x14t
        0x3et
        0x39t
        0x27t
        0x51t
        0x56t
        0x4dt
        0x50t
        0x47t
        0x7dt
        0x57t
        0x50t
        0x4et
        0x7dt
        0x55t
        0x47t
        0x40t
        0x7dt
        0x44t
        0x43t
        0x4et
        0x4et
        0x40t
        0x43t
        0x41t
        0x49t
        0x3bt
        0x2at
        0x23t
        0x75t
        0x17t
        0x6t
        0xft
        0x13t
        0x11t
        0xct
        0xet
        0x13t
        0x17t
        0x59t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "b4EbQiKGBOPn48tIsiPL5n4N5SxNZ1EN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C4qAvqPXqcx1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "av0PnThHX1ufh2ncI3f6iPLWfGZcgSDj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "l1hdtvJdt41N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aFghpyqA523JYmrsO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "P4eeegJbz09MXnMZrJhy5IVHeFKKR7Ef"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fwPno9KqPJ0g1dx57vycq8IipA21WGGJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ava7qu9S1KN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A08()Z
    .locals 4

    .line 32924
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A05()Ljava/util/List;

    move-result-object v0

    .line 32925
    .local p0, "appLaunchIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 32926
    return v3

    .line 32927
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 32928
    .local v2, "appLaunchIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z

    move-result v0

    .line 32929
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 32930
    const/4 v0, 0x1

    return v0

    .line 32931
    :cond_2
    return v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private A09()Z
    .locals 5

    .line 32932
    new-instance v4, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/L0;-><init>()V

    .line 32933
    .local p0, "uriLauncher":Lcom/facebook/ads/redexgen/X/L0;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A02()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-static {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 32934
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32935
    .local v4, "ex":Ljava/lang/Exception;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/16 v1, 0x1b

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32936
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:Landroid/net/Uri;

    const/16 v2, 0xe4

    const/16 v1, 0x16

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32937
    .local v2, "fallbackUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 32938
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-static {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 32939
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0A()Lcom/facebook/ads/redexgen/X/0e;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 32940
    const/4 v4, 0x0

    .line 32941
    .local p0, "actionOutcome":Lcom/facebook/ads/redexgen/X/0e;
    const/16 v2, 0x94

    const/16 v1, 0xf

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v3

    .line 32942
    .local v4, "redirectionAction":Ljava/lang/String;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A08()Z

    move-result v0

    .line 32943
    .local v2, "redirectedToApp":Z
    if-nez v0, :cond_1

    .line 32944
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xbc

    const/16 v1, 0x10

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xa3

    const/16 v1, 0x19

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32945
    .local v1, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/0e;->A03:Lcom/facebook/ads/redexgen/X/0e;

    .line 32946
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32947
    return-object v4
.end method

.method public final A0E()V
    .locals 6

    .line 32948
    const/4 v5, 0x0

    .line 32949
    .local p0, "actionOutcome":Lcom/facebook/ads/redexgen/X/0e;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A01:Z

    if-eqz v0, :cond_0

    .line 32950
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A0A()Lcom/facebook/ads/redexgen/X/0e;

    move-result-object v5

    .line 32951
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Ljava/util/Map;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/cK;->A0F(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0e;)V

    .line 32952
    return-void

    .line 32953
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbc

    const/16 v1, 0x10

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
