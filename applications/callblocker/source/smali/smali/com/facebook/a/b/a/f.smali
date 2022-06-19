.class public Lcom/facebook/a/b/a/f;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-class v0, Lcom/facebook/a/b/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/a/b/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 84
    sput-object v1, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([FLandroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-static {}, Lcom/facebook/a/b/a/f;->a()V

    .line 450
    sget-object v0, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v1

    .line 455
    :cond_1
    :try_start_0
    sget-object v0, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 456
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 457
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    if-eqz v0, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    .line 464
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_0

    move-object v0, v1

    .line 98
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 94
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 95
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method private static a()V
    .locals 5

    .prologue
    .line 525
    sget-object v0, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 530
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.facebook.react.uimanager.TouchTargetHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 531
    const-string/jumbo v1, "findTouchTargetView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [F

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    .line 533
    sget-object v0, Lcom/facebook/a/b/a/f;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    sget-object v1, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    sget-object v1, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 376
    .line 379
    :try_start_0
    const-string/jumbo v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "mListenerInfo"

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 381
    :try_start_1
    const-string/jumbo v2, "android.view.View$ListenerInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mOnClickListener"

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 387
    :goto_0
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :goto_1
    return-void

    .line 383
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    move-object v2, v1

    .line 385
    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v2, v1

    goto :goto_0

    .line 392
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 397
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 402
    :goto_4
    if-nez v1, :cond_2

    .line 403
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 408
    :catch_2
    move-exception v0

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 399
    :catch_3
    move-exception v0

    goto :goto_4

    .line 384
    :catch_4
    move-exception v2

    goto :goto_3

    .line 383
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public static a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 124
    const-string/jumbo v4, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v4, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/a/b/a/f;->d(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v4, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    invoke-static {p0}, Lcom/facebook/a/b/a/d;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    const-string/jumbo v4, "text"

    .line 129
    invoke-static {v0}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :goto_0
    const-string/jumbo v0, "hint"

    .line 135
    invoke-static {v1}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-static {v1, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    if-eqz v2, :cond_0

    .line 137
    const-string/jumbo v0, "tag"

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_0
    if-eqz v3, :cond_1

    .line 141
    const-string/jumbo v0, "description"

    .line 142
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->l(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "dimension"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :goto_1
    return-void

    .line 131
    :cond_2
    const-string/jumbo v0, "text"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string/jumbo v0, "is_user_input"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    sget-object v1, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string/jumbo v2, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->m(Landroid/view/View;)[F

    move-result-object v1

    .line 476
    invoke-static {v1, p1}, Lcom/facebook/a/b/a/f;->a([FLandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 480
    :cond_0
    return v0
.end method

.method public static b(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 108
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v1
.end method

.method public static c(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/a/b/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 192
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    :try_start_0
    invoke-static {p0, v2}, Lcom/facebook/a/b/a/f;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 197
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 198
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 200
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 201
    invoke-static {v0}, Lcom/facebook/a/b/a/f;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    const-string/jumbo v0, "childviews"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    const-string/jumbo v3, "Failed to create JSONObject for view."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x2

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    or-int/lit8 v0, v0, 0x20

    .line 222
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 223
    or-int/lit16 v0, v0, 0x200

    move v1, v0

    .line 226
    :goto_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 227
    or-int/lit16 v0, v1, 0x400

    .line 228
    or-int/lit8 v0, v0, 0x1

    .line 230
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 231
    or-int/lit8 v0, v0, 0x4

    .line 233
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_4

    .line 234
    or-int/lit16 v0, v0, 0x2000

    .line 240
    :cond_2
    :goto_1
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_a

    .line 241
    or-int/lit16 v1, v0, 0x800

    .line 255
    :cond_3
    :goto_2
    return v1

    .line 235
    :cond_4
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 236
    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_1

    .line 243
    :cond_5
    instance-of v0, p0, Landroid/widget/Spinner;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/widget/DatePicker;

    if-eqz v0, :cond_7

    .line 245
    :cond_6
    or-int/lit16 v1, v1, 0x1000

    goto :goto_2

    .line 246
    :cond_7
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_8

    .line 247
    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    goto :goto_2

    .line 248
    :cond_8
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_9

    .line 249
    or-int/lit16 v1, v1, 0x4000

    goto :goto_2

    .line 250
    :cond_9
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/a/b/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 251
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lcom/facebook/a/b/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    or-int/lit8 v1, v1, 0x40

    goto :goto_2

    :cond_a
    move v1, v0

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 268
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 271
    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 272
    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    .line 310
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    .line 272
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 274
    :cond_2
    instance-of v2, p0, Landroid/widget/Spinner;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 275
    check-cast v0, Landroid/widget/Spinner;

    .line 276
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 277
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_b

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    instance-of v2, p0, Landroid/widget/DatePicker;

    if-eqz v2, :cond_4

    .line 283
    check-cast p0, Landroid/widget/DatePicker;

    .line 284
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    .line 286
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 287
    const-string/jumbo v4, "%04d-%02d-%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_4
    instance-of v2, p0, Landroid/widget/TimePicker;

    if-eqz v2, :cond_5

    .line 289
    check-cast p0, Landroid/widget/TimePicker;

    .line 290
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 291
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 292
    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_5
    instance-of v2, p0, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_8

    .line 294
    check-cast p0, Landroid/widget/RadioGroup;

    .line 295
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 296
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    move v2, v0

    .line 297
    :goto_2
    if-ge v2, v4, :cond_6

    .line 298
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_7

    instance-of v5, v0, Landroid/widget/RadioButton;

    if-eqz v5, :cond_7

    .line 300
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_6
    move-object v0, v1

    .line 304
    goto/16 :goto_0

    .line 297
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 304
    :cond_8
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_a

    .line 305
    check-cast p0, Landroid/widget/RatingBar;

    .line 306
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 317
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 322
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    .line 318
    :cond_1
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 319
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static g(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    :try_start_0
    const-string/jumbo v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "mListenerInfo"

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 353
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    if-nez v0, :cond_1

    .line 371
    :goto_0
    return-object v1

    .line 359
    :cond_1
    const-string/jumbo v2, "android.view.View$ListenerInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mOnClickListener"

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_2

    .line 362
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 363
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 366
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    goto :goto_0

    .line 367
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static h(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    :try_start_0
    const-string/jumbo v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "mListenerInfo"

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 422
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    if-nez v0, :cond_1

    .line 443
    :goto_0
    return-object v1

    .line 428
    :cond_1
    const-string/jumbo v2, "android.view.View$ListenerInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mOnTouchListener"

    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_2

    .line 431
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move-object v1, v0

    .line 435
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 440
    :catch_2
    move-exception v0

    .line 441
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static i(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 502
    invoke-static {v0}, Lcom/facebook/a/b/a/f;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    :goto_1
    return-object v0

    .line 505
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 506
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 507
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static k(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 260
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/core/h/i;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 326
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    :try_start_0
    const-string/jumbo v0, "top"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string/jumbo v0, "left"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v0, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v0, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v0, "scrollx"

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v0, "scrolly"

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    sget-object v2, Lcom/facebook/a/b/a/f;->a:Ljava/lang/String;

    const-string/jumbo v3, "Failed to create JSONObject for dimension."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static m(Landroid/view/View;)[F
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    new-array v0, v1, [I

    .line 517
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 518
    new-array v1, v1, [F

    .line 519
    aget v2, v0, v3

    int-to-float v2, v2

    aput v2, v1, v3

    .line 520
    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, v1, v4

    .line 521
    return-object v1
.end method
