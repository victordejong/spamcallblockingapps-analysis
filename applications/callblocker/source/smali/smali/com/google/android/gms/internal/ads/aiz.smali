.class public final Lcom/google/android/gms/internal/ads/aiz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jg",
        "<",
        "Lcom/google/android/gms/internal/ads/ajd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/dtm;

.field private final c:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dtm;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aiz;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 4
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->c:Landroid/os/PowerManager;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ajd;)Lorg/json/JSONObject;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ajd;->e:Lcom/google/android/gms/internal/ads/dtt;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    :goto_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    const-string/jumbo v0, "units"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    return-object v3

    .line 11
    :cond_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/ajd;->e:Lcom/google/android/gms/internal/ads/dtt;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dtm;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Active view Info cannot be null."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/dtt;->a:Z

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string/jumbo v0, "afmaVersion"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dtm;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "activeViewJSON"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 18
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dtm;->c()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "timestamp"

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/ajd;->c:J

    .line 19
    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "adFormat"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dtm;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "hashCode"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dtm;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "isMraid"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 24
    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "isStopped"

    .line 25
    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "isPaused"

    iget-boolean v7, p1, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 26
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "isNative"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->b:Lcom/google/android/gms/internal/ads/dtm;

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dtm;->e()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "isScreenOn"

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v0, v8, :cond_2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->c:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 32
    :goto_1
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "appMuted"

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vw;->b()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "appVolume"

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/vw;->a()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v6, "deviceVolume"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aiz;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/vw;->a(Landroid/content/Context;)F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v0, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 38
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->a:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 40
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 42
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 44
    const-string/jumbo v6, "windowVisibility"

    iget v7, v4, Lcom/google/android/gms/internal/ads/dtt;->b:I

    .line 45
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "isAttachedToWindow"

    .line 46
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "viewBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "top"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "bottom"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 48
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "left"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "right"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->c:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 50
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 51
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "adBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "top"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "bottom"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 53
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "left"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 54
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "right"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 55
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 56
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "globalVisibleBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "top"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 57
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "bottom"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 58
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "left"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 59
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "right"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 60
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 61
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "globalVisibleBoxVisible"

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/dtt;->f:Z

    .line 62
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "localVisibleBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "top"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->g:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 63
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "bottom"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->g:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 64
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "left"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->g:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 65
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "right"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->g:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 66
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 67
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "localVisibleBoxVisible"

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/dtt;->h:Z

    .line 68
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "hitBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "top"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->i:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 69
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "bottom"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->i:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 70
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "left"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->i:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 71
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "right"

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dtt;->i:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 72
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 73
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "screenDensity"

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v0

    .line 74
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v0, "isVisible"

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ads/ajd;->a:Z

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aF:Lcom/google/android/gms/internal/ads/ect;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 80
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dtt;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dtt;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 82
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "top"

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 83
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "bottom"

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "left"

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 85
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "right"

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 86
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiz;->c:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto/16 :goto_1

    .line 89
    :cond_3
    const-string/jumbo v0, "scrollableContainerBoxes"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ajd;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    const-string/jumbo v0, "doneReasonCode"

    const-string/jumbo v4, "u"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    move-object v0, v1

    .line 92
    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lcom/google/android/gms/internal/ads/ajd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aiz;->a(Lcom/google/android/gms/internal/ads/ajd;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
