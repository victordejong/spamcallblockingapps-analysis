.class final Lcom/google/android/gms/internal/consent_sdk/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/app/Application;

.field final b:Lcom/google/android/gms/internal/consent_sdk/ab;

.field final c:Lcom/google/android/gms/internal/consent_sdk/m;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/ab;Lcom/google/android/gms/internal/consent_sdk/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/cf;->b:Lcom/google/android/gms/internal/consent_sdk/ab;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/cf;->c:Lcom/google/android/gms/internal/consent_sdk/m;

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;Lcom/google/android/c/d;)Lcom/google/android/gms/internal/consent_sdk/ao;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzk;
        }
    .end annotation

    .line 1016
    iget-object v0, p2, Lcom/google/android/c/d;->c:Lcom/google/android/c/a;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/c/a$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/google/android/c/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/c/a$a;->a()Lcom/google/android/c/a;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/cd;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/consent_sdk/cd;-><init>(Lcom/google/android/gms/internal/consent_sdk/cf;Landroid/app/Activity;Lcom/google/android/c/a;Lcom/google/android/c/d;Lcom/google/android/gms/internal/consent_sdk/cg;)V

    .line 2007
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/ao;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/ao;-><init>()V

    .line 2008
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/cd;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->a:Ljava/lang/String;

    .line 2010
    iget-object p2, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 3015
    iget-object p2, p2, Lcom/google/android/gms/internal/consent_sdk/cf;->b:Lcom/google/android/gms/internal/consent_sdk/ab;

    .line 2010
    invoke-virtual {p2}, Lcom/google/android/gms/internal/consent_sdk/ab;->a()Lcom/google/android/gms/internal/consent_sdk/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2012
    iget-object v1, p2, Lcom/google/android/gms/internal/consent_sdk/a;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->b:Ljava/lang/String;

    .line 2013
    iget-boolean p2, p2, Lcom/google/android/gms/internal/consent_sdk/a;->b:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->i:Ljava/lang/Boolean;

    .line 2015
    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->c:Lcom/google/android/c/a;

    .line 4005
    iget-boolean p2, p2, Lcom/google/android/c/a;->a:Z

    if-nez p2, :cond_2

    .line 2016
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 2017
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2018
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->c:Lcom/google/android/c/a;

    .line 4006
    iget v1, v1, Lcom/google/android/c/a;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 2022
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/at;->zzd:Lcom/google/android/gms/internal/consent_sdk/at;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2020
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/at;->zzc:Lcom/google/android/gms/internal/consent_sdk/at;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    :goto_0
    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->n:Ljava/util/List;

    .line 2026
    iget-object p2, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 4013
    iget-object p2, p2, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 2027
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 4014
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/cf;->c:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 5014
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/m;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "stored_info"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 2029
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2030
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2032
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/consent_sdk/bd;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/bc;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "Fetching request info: failed for key: "

    .line 2034
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2037
    :cond_6
    iget-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/bc;->a:Ljava/lang/String;

    const/4 v6, 0x0

    .line 2038
    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2039
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/internal/consent_sdk/bc;->b:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, "Stored info not exists: "

    .line 2041
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2044
    :cond_8
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    .line 2045
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "1"

    goto :goto_2

    :cond_9
    const-string v4, "0"

    goto :goto_2

    .line 2046
    :cond_a
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_b

    .line 2047
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2048
    :cond_b
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 2049
    check-cast v4, Ljava/lang/String;

    .line 2053
    :goto_2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_c
    const-string v4, "Failed to fetch stored info: "

    .line 2050
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2056
    :cond_e
    iput-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->j:Ljava/util/Map;

    const/4 p2, 0x0

    .line 2059
    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->d:Ljava/lang/String;

    .line 2067
    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->g:Ljava/lang/Boolean;

    .line 2068
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->d:Lcom/google/android/c/d;

    .line 5015
    iget-boolean v1, v1, Lcom/google/android/c/d;->a:Z

    .line 2068
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->h:Ljava/lang/Boolean;

    .line 2071
    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->f:Ljava/lang/String;

    .line 2073
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_f

    .line 2074
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2075
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2076
    :goto_3
    iput-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->e:Ljava/lang/String;

    .line 2078
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/as;

    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/as;-><init>()V

    .line 2079
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/as;->c:Ljava/lang/Integer;

    .line 2080
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/as;->b:Ljava/lang/String;

    .line 2081
    sget v2, Lcom/google/android/gms/internal/consent_sdk/av;->b:I

    iput v2, v1, Lcom/google/android/gms/internal/consent_sdk/as;->a:I

    .line 2083
    iput-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->c:Lcom/google/android/gms/internal/consent_sdk/as;

    .line 2085
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 6013
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 2085
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2086
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 7013
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 2086
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2087
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/au;

    invoke-direct {v2}, Lcom/google/android/gms/internal/consent_sdk/au;-><init>()V

    .line 2088
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/consent_sdk/au;->a:Ljava/lang/Integer;

    .line 2089
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/consent_sdk/au;->b:Ljava/lang/Integer;

    .line 2090
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->a:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 8013
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/cf;->a:Landroid/app/Application;

    .line 2090
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/consent_sdk/au;->c:Ljava/lang/Double;

    .line 2092
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_10

    .line 2093
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto/16 :goto_9

    .line 2094
    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->b:Landroid/app/Activity;

    if-nez v1, :cond_11

    move-object v1, p2

    goto :goto_4

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/cd;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_12

    move-object v1, p2

    goto :goto_5

    .line 2095
    :cond_12
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_13

    move-object v1, p2

    goto :goto_6

    .line 2096
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_14

    goto :goto_7

    .line 2097
    :cond_14
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    :goto_7
    if-nez p2, :cond_15

    .line 2099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_9

    .line 2100
    :cond_15
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 2101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2102
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_16

    .line 2104
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/ax;

    invoke-direct {v4}, Lcom/google/android/gms/internal/consent_sdk/ax;-><init>()V

    .line 2105
    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/ax;->b:Ljava/lang/Integer;

    .line 2106
    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/ax;->c:Ljava/lang/Integer;

    .line 2107
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/ax;->a:Ljava/lang/Integer;

    .line 2108
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/consent_sdk/ax;->d:Ljava/lang/Integer;

    .line 2109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    move-object p2, v1

    .line 2112
    :goto_9
    iput-object p2, v2, Lcom/google/android/gms/internal/consent_sdk/au;->d:Ljava/util/List;

    .line 2114
    iput-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->k:Lcom/google/android/gms/internal/consent_sdk/au;

    .line 2115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/cd;->a()Lcom/google/android/gms/internal/consent_sdk/aq;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->l:Lcom/google/android/gms/internal/consent_sdk/aq;

    .line 2117
    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/aw;

    invoke-direct {p2}, Lcom/google/android/gms/internal/consent_sdk/aw;-><init>()V

    const-string v0, "1.0.0"

    .line 2120
    iput-object v0, p2, Lcom/google/android/gms/internal/consent_sdk/aw;->a:Ljava/lang/String;

    .line 2122
    iput-object p2, p1, Lcom/google/android/gms/internal/consent_sdk/ao;->m:Lcom/google/android/gms/internal/consent_sdk/aw;

    return-object p1
.end method
