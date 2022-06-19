.class public final Lcom/google/android/gms/internal/ads/xf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method private static a(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 138
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/view/View;)[I

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    .line 140
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int v0, v2, v0

    .line 141
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string/jumbo v1, "x"

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v1, "y"

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v1, "start_x"

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v1, "start_y"

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string/jumbo v1, "Error occurred while putting signals into JSON object."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    const-string/jumbo v1, "width"

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v1, "height"

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v1, "x"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v1, "y"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v1, "relative_to"

    const-string/jumbo v2, "self"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    if-nez p1, :cond_0

    move-object v0, v1

    .line 59
    :goto_0
    return-object v0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/view/View;)[I

    move-result-object v4

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    const-string/jumbo v5, "width"

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 15
    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string/jumbo v5, "height"

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 18
    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string/jumbo v5, "x"

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string/jumbo v5, "y"

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v5, "relative_to"

    const-string/jumbo v6, "window"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v5, "frame"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    :goto_1
    const-string/jumbo v4, "visible_bounds"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dc:Lcom/google/android/gms/internal/ads/ect;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    const-string/jumbo v4, ""

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 43
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "getTemplateTypeName"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 44
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v0

    .line 50
    :cond_1
    :goto_3
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 55
    const-string/jumbo v0, "native_template_type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_5
    move-object v0, v1

    .line 59
    goto/16 :goto_0

    .line 26
    :cond_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    const-string/jumbo v5, "width"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v5, "height"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v5, "x"

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v5, "y"

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v4, "relative_to"

    const-string/jumbo v5, "window"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 35
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Unable to get native ad view bounding box"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 48
    :catch_1
    move-exception v0

    .line 49
    :goto_6
    const-string/jumbo v5, "Cannot access method getTemplateTypeName: "

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 50
    :sswitch_0
    :try_start_4
    const-string/jumbo v3, "small_template"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_4

    :sswitch_1
    const-string/jumbo v2, "medium_template"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_4

    .line 51
    :pswitch_0
    const-string/jumbo v0, "native_template_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 57
    :catch_2
    move-exception v0

    .line 58
    const-string/jumbo v2, "Could not log native template signal to JSON"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 53
    :pswitch_1
    :try_start_5
    const-string/jumbo v0, "native_template_type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 48
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    .line 47
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 50
    :sswitch_data_0
    .sparse-switch
        -0x7b2ddf4e -> :sswitch_0
        0x78630204 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v2, v5

    .line 123
    :goto_0
    return-object v2

    .line 82
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/view/View;)[I

    move-result-object v6

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 85
    if-eqz v3, :cond_2

    .line 86
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/view/View;)[I

    move-result-object v8

    .line 87
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 88
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :try_start_0
    const-string/jumbo v10, "width"

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 91
    invoke-static {p0, v11}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v10, "height"

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 94
    invoke-static {p0, v11}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v10, "x"

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v6, v12

    sub-int/2addr v11, v12

    invoke-static {p0, v11}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v10, "y"

    const/4 v11, 0x1

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v6, v12

    sub-int/2addr v11, v12

    invoke-static {p0, v11}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v10, "relative_to"

    const-string/jumbo v11, "ad_view"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v10, "frame"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 101
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v4

    .line 108
    :goto_2
    const-string/jumbo v8, "visible_bounds"

    invoke-virtual {v9, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 110
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 111
    const-string/jumbo v8, "text_color"

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v8, "font_size"

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v8, "text"

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_3
    const-string/jumbo v4, "is_clickable"

    if-eqz p2, :cond_5

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    .line 117
    :goto_3
    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 121
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Unable to get asset views information"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :cond_4
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string/jumbo v10, "width"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v10, "height"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v10, "x"

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v6, v12

    sub-int/2addr v11, v12

    invoke-static {p0, v11}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v10, "y"

    const/4 v11, 0x1

    aget v8, v8, v11

    const/4 v11, 0x1

    aget v11, v6, v11

    sub-int/2addr v8, v11

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v8, "relative_to"

    const-string/jumbo v10, "ad_view"

    invoke-virtual {v4, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 116
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object v2, v5

    .line 123
    goto/16 :goto_0
.end method

.method public static a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    if-nez p0, :cond_0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ve;->d(Landroid/view/View;)I

    move-result v1

    .line 64
    const-string/jumbo v2, "contained_in_scroll_view"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    const-string/jumbo v1, "click_point"

    .line 127
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v1, "asset_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    move-object v0, v2

    .line 132
    :goto_1
    const-string/jumbo v2, "Error occurred while grabbing click signals."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bo:Lcom/google/android/gms/internal/ads/ect;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bp:Lcom/google/android/gms/internal/ads/ect;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xe9759f

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7
    :goto_0
    return v0

    .line 6
    :cond_1
    const/4 v0, 0x0

    .line 7
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_0
    :try_start_0
    const-string/jumbo v1, "can_show_on_lock_screen"

    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/view/View;)Z

    move-result v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v1, "is_keyguard_locked"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ve;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unable to get lock screen information"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)[I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 137
    :cond_0
    return-object v0
.end method
